# frozen_string_literal: true
require 'pry'
require 'pry-doc'
require 'rest-client'
require 'octokit'

client = Octokit::Client.new(:access_token => ARGV[0])
PUTS ARGV[1]
resp = client.pull_request(ENV["GITHUB_REPOSITORY"], ARGV[1])

exec("echo ::set-output name=body::#{resp.body}")
