require "red_drop/auth"
auth = Auth.new
token = auth.token

require 'droplet_kit'
client = DropletKit::Client.new(access_token: token)

require "red_drop/droplet_wizard"

droplet_wizard = DropletWizard.new(client)

command = nil

while not command === "exit"
  puts "\nWhat would you like to do?\n['status', 'create', 'delete', 'exit']\n\n"

  command = gets.chomp 

  droplet_wizard.send(command) unless !droplet_wizard.respond_to? command
end
