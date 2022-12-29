class Create
  def initialize(client)
    @client = client
  end

  def execute
    puts "loading... \n\n"
    #user_data = File.read("cloud-config.yaml")

    response = @client.post do |req|
      req.body = {name: 'RedDrop', region: 'nyc1', size: 's-1vcpu-512mb-10gb', image: 'ubuntu-22-04-x64'}
    end
    
    body = JSON.parse(response.body)

    puts "Your droplet: #{body["droplet"]["id"]}, is being provisioned.\n"
  end
end

