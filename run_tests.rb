test_files = Dir[File.join(__dir__, "selenium_tests", "*_test.rb")].sort

excluded_tests = [
  File.join(__dir__, "selenium_tests", "purchase_flow_test.rb")
]

(test_files - excluded_tests).each do |test_file|
  load test_file
end