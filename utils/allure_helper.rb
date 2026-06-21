require 'fileutils'
require 'json'
require 'securerandom'
require 'time'

module AllureHelper
  RESULTS_DIR = 'allure-results'

  def self.write_result(test_name:, status:, start_time:, stop_time:, screenshot_path: nil)
    FileUtils.mkdir_p(RESULTS_DIR)

    uuid = SecureRandom.uuid
    attachments = []

    if screenshot_path && File.exist?(screenshot_path)
      attachment_name = "#{uuid}-screenshot.png"
      attachment_path = "#{RESULTS_DIR}/#{attachment_name}"

      FileUtils.cp(screenshot_path, attachment_path)

      attachments << {
        name: 'Screenshot on Failure',
        source: attachment_name,
        type: 'image/png'
      }
    end

    result = {
      uuid: uuid,
      name: test_name,
      fullName: test_name,
      status: status,
      stage: 'finished',
      start: (start_time.to_f * 1000).to_i,
      stop: (stop_time.to_f * 1000).to_i,
      labels: [
        { name: 'framework', value: 'Minitest' },
        { name: 'language', value: 'Ruby' },
        { name: 'suite', value: 'QA Automation Framework' }
      ]
    }

    result[:attachments] = attachments unless attachments.empty?

    file_name = "#{RESULTS_DIR}/#{uuid}-result.json"
    File.write(file_name, JSON.pretty_generate(result))
  end
end