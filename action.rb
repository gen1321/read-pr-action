# frozen_string_literal: true
require 'pry'
require 'pry-doc'
require 'rest-client'
require 'octokit'

puts 'ARGUMENTS'
puts ARGV
client = Octokit::Client.new(:access_token => ARGV[0])
puts ARGV[1]
resp = client.pull_request(ENV["GITHUB_REPOSITORY"], ARGV[1])

# exec("echo ::set-output name=body::#{resp.body}")
