module Create
  def create
    puts "loading... \n\n"

    droplet = DropletKit::Droplet.new(name: 'drop', region: 'nyc1', size: 's-1vcpu-512mb-10gb', image: 'ubuntu-22-04-x64')
    response = @client.droplets.create(droplet)

    puts "Your droplet: #{response.id}, is being provisioned.\n"
  end
end

