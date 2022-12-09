require "faraday"

class Auth
  def initialize
    puts "loading..."

    file = File.open("secret.txt", "a+")
    @secret = file.read
    file.close

    @faraday = Faraday.new("https://api.digitalocean.com/v2/droplets")
    @res = @faraday.get do |req|
      req.headers["Authorization"] = "Bearer #{@secret}"
    end
  end

  def token
    while @secret.empty? or not @res.success?
      puts "\nThere in no valid API token in memory,\nplease enter a valid API token."
      @secret = gets.chomp
      File.write("secret.txt", @secret)

      @res = @faraday.get do |req|
        req.headers["Authorization"] = "Bearer #{@secret}"
      end
    end
    @secret
  end
end
