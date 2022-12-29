class Status
  def initialize(client)
    @client = client
  end

  def execute
    puts "loading... \n\n"

    droplets = JSON.parse(@client.get.body)["droplets"]

    if droplets.length == 0
      puts "There are no droplets in your DigitalOcean cloud."
      return
    end

    droplets.each do |droplet|
      droplet["networks"] = droplet["networks"]["v4"].find { |n| n["type"] == "public" } 

      if droplet["networks"]
        droplet["status"] = "running on #{droplet["networks"]["ip_address"]}"
      else
        droplet["status"] = "ip not yet assigned, try again in a minute"
      end

      puts "droplet: #{droplet["id"]} #{droplet["status"]}"
    end
  end
end

