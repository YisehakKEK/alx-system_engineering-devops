#!/usr/bin/env ruby
input = ARGV[0]

# Regex to extract sender, receiver, and flags
match_data = input.scan(/from:(\S+)\] \[to:(\S+)\] \[flags:(\S+)\]/).flatten

# Output the extracted data in the required format
puts match_data.join(",") if match_data.any?
