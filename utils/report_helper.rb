class ReportHelper

  def self.generate(total_tests, passed_tests, failed_tests)

    html = <<~HTML
      <!DOCTYPE html>
      <html>
      <head>
        <meta charset="UTF-8">
        <title>QA Automation Report</title>
      </head>
      <body>
        <h1>QA Automation Report</h1>

        <p><strong>Total Tests:</strong> #{total_tests}</p>
        <p><strong>Passed:</strong> #{passed_tests}</p>
        <p><strong>Failed:</strong> #{failed_tests}</p>

      </body>
      </html>
    HTML

    File.write("reports/test_report.html", html)

  end

end