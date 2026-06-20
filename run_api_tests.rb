puts "\n=== RUNNING API TEST SUITE ===\n\n"

system("bundle exec ruby api_tests/users_api_test.rb")
system("bundle exec ruby api_tests/posts_api_test.rb")

puts "\n=== API TEST SUITE FINISHED ===\n"