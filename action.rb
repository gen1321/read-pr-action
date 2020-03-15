# frozen_string_literal: true
require 'pry'
require 'pry-doc'
require 'rest-client'
require 'octokit'
require 'base64'

client = Octokit::Client.new(:access_token => ARGV[0])
resp = client.pull_request(ENV["GITHUB_REPOSITORY"], ARGV[1])
body = resp.body.gsub(/\s/, ' ')
exec("echo ::set-output name=body::'#{Base63.encode64(body)}'")
