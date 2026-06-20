puts "\n=== RUNNING REGRESSION TEST SUITE ===\n\n"

system("ruby selenium_tests/login_test.rb")
system("ruby selenium_tests/forms_test.rb")
system("ruby selenium_tests/checkbox_test.rb")
system("ruby selenium_tests/radio_button_test.rb")
system("ruby selenium_tests/buttons_test.rb")
system("ruby selenium_tests/webtables_test.rb")
system("ruby selenium_tests/purchase_flow_test.rb")

puts "\n=== REGRESSION SUITE FINISHED ===\n"