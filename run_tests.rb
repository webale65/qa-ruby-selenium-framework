Dir[File.join(__dir__, "selenium_tests", "*_test.rb")].sort.each do |test_file|
  load test_file
end