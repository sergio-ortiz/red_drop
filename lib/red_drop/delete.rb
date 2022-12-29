class Delete
  def initialize(client)
    @client = client
  end

  def execute
    puts "loading... \n"

    droplets = JSON.parse(@client.get.body)["droplets"]

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
      droplets.each { |key, droplet| puts "#{key}: #{droplet["id"]}" }
      puts "\nPlease enter an option for a droplet to delete?\n\n"

      option = gets.chomp
    end

    response = @client.delete(droplets[option]["id"].to_s)

    if response.success?
      puts "\ndelete request processed succesfully\n\n"
    else 
      puts response.body
    end
  end
end
