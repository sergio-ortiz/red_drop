class Delete
  def initialize(client)
    @client = client
  end

  def execute
    puts "loading... \n\n"

    droplets = @client.droplets.all.map { |droplet| droplet.to_h }

    if droplets.length == 0
      puts "There are no droplets in your DigitalOcean cloud.\n"
      return
    end

    puts "option: droplet_id\n"
    droplets.each_with_index { |droplet, index| puts "#{index}: #{droplet[:id]}" }
    puts "\nPlease enter an option for a droplet to delete?\n\n"
    num = gets.to_i

    while not droplets[num]
      puts "\n#{num} is not a valid option, please enter a valid option\n\n"
      num = gets.to_i
    end

    response = @client.droplets.delete(id: droplets[num][:id])

    if response
      puts "\ndelete request processed succesfully\n\n"
    else
      result
    end
  end
end
