Dir["./selenium_tests/*_test.rb"].each do |test_file|
  require_relative test_file.sub("./", "").sub(".rb", "")
end