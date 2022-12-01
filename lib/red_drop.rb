#!/usr/bin/env ruby

require "red_drop/auth"
auth = Auth.new
token = auth.token

require 'droplet_kit'
client = DropletKit::Client.new(access_token: token)

require "red_drop/droplet_wizard"

droplet_wizard = DropletWizard.new(client)

command = nil

while not command === "quit"
  puts "\nWhat would you like to do?\n['status', 'create', 'delete', 'quit']\n\n"

  command = gets.chomp 

  case command
  when "create"
    droplet_wizard.create
  when "status"
    droplet_wizard.status
  when "delete"
    droplet_wizard.delete
  end
end
