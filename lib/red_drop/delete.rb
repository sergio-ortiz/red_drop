class Delete
  def initialize(client)
    @client = client
  end

  def execute
    puts "loading... \n"

    droplets = @client.droplets.all.map { |droplet| droplet.to_h }

    if droplets.length == 0
      puts "\nThere are no droplets in your DigitalOcean cloud.\n"
      return
    end

    hash = {}
    droplets.each_with_index { |drop, i| hash[i.to_s] = drop } 
    droplets = hash

    option = nil

    until droplets.has_key? option
      puts "\noption: droplet_id\n"
      droplets.each { |key, droplet| puts "#{key}: #{droplet[:id]}" }
      puts "\nPlease enter an option for a droplet to delete?\n\n"

      option = gets.chomp
    end

    response = @client.droplets.delete(id: droplets[option][:id])

    if response
      puts "\ndelete request processed succesfully\n\n"
    end
  end
end
