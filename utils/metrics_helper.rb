require 'json'
require 'fileutils'
require 'time'

module MetricsHelper

  def self.generate
    FileUtils.mkdir_p('reports')

    metrics = {
      project: 'QA Ruby Selenium Framework',
      version: 'v2.8',
      execution_date: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
      environment: ENV['EXECUTION_ENV'] || 'Local',
      browser: ENV['BROWSER'] || 'Chrome',
      total_tests: ENV['TOTAL_TESTS'] || 'N/A',
      passed_tests: ENV['PASSED_TESTS'] || 'N/A',
      failed_tests: ENV['FAILED_TESTS'] || 'N/A',
      success_rate: ENV['SUCCESS_RATE'] ? (ENV['SUCCESS_RATE'].include?('%') ? ENV['SUCCESS_RATE'] : "#{ENV['SUCCESS_RATE']}%") : 'N/A',
      status: ENV['BUILD_STATUS'] || 'SUCCESS'
    }

    File.write('reports/metrics.json', JSON.pretty_generate(metrics))

    generate_dashboard(metrics)
  end

  def self.generate_dashboard(metrics)

    html = <<~HTML
      <!DOCTYPE html>
      <html>
      <head>
        <meta charset="UTF-8">
        <title>Execution Metrics Dashboard</title>

        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            padding: 30px;
          }

          .container {
            background: white;
            max-width: 900px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
          }

          h1 {
            text-align: center;
          }

          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }

          th, td {
            border: 1px solid #ddd;
            padding: 12px;
          }

          th {
            background-color: #2c3e50;
            color: white;
          }

          .status {
            text-align: center;
            font-size: 24px;
            color: green;
            margin: 20px;
            font-weight: bold;
          }
        </style>
      </head>

      <body>
        <div class="container">

          <h1>QA Automation Execution Metrics Dashboard</h1>

          <div class="status">
            #{metrics[:status]}
          </div>

          <table>
            <tr>
              <th>Metric</th>
              <th>Value</th>
            </tr>

            <tr>
              <td>Project</td>
              <td>#{metrics[:project]}</td>
            </tr>

            <tr>
              <td>Version</td>
              <td>#{metrics[:version]}</td>
            </tr>

            <tr>
              <td>Execution Date</td>
              <td>#{metrics[:execution_date]}</td>
            </tr>

            <tr>
              <td>Environment</td>
              <td>#{metrics[:environment]}</td>
            </tr>

            <tr>
              <td>Browser</td>
              <td>#{metrics[:browser]}</td>
            </tr>

            <tr>
              <td>Total Tests</td>
              <td>#{metrics[:total_tests]}</td>
            </tr>

            <tr>
              <td>Passed Tests</td>
              <td>#{metrics[:passed_tests]}</td>
            </tr>

            <tr>
              <td>Failed Tests</td>
              <td>#{metrics[:failed_tests]}</td>
            </tr>

            <tr>
              <td>Success Rate</td>
              <td>#{metrics[:success_rate]}</td>
            </tr>

          </table>

        </div>
      </body>
      </html>
    HTML

    File.write('reports/dashboard.html', html)
  end
end

MetricsHelper.generate