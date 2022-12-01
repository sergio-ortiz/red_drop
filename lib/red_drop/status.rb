module Status
  def status
    puts "loading... \n\n"

    droplets = @client.droplets.all.map { |droplet| { "droplet_id" => droplet.id, "status" => droplet.status } }
    status = { "new" => "provisioning", "active" => "running" }
    droplets.each { |drop| drop["status"] = status[drop["status"]] } 

    if droplets.length == 0
      puts "There are no droplets in your DigitalOcean cloud."
      return
    end

    droplets.each { |droplet| puts droplet}
  end
end

