puts "\n=== RUNNING SMOKE TEST SUITE ===\n\n"

system("ruby selenium_tests/login_test.rb")
system("ruby selenium_tests/forms_test.rb")
system("ruby selenium_tests/checkbox_test.rb")
system("ruby selenium_tests/radio_button_test.rb")
system("ruby selenium_tests/buttons_test.rb")

puts "\n=== SMOKE SUITE FINISHED ===\n"