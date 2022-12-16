class Create
  def initialize(client)
    @client = client
  end

  def execute
    puts "loading... \n\n"
    #user_data = File.read("cloud-config.yaml")

    droplet = DropletKit::Droplet.new(name: 'RedDrop', region: 'nyc1', size: 's-1vcpu-512mb-10gb', image: 'ubuntu-22-04-x64')
    response = @client.droplets.create(droplet)

    puts "Your droplet: #{response.id}, is being provisioned.\n"
  end
end

