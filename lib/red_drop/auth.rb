require "faraday"

class Auth
  def initialize
    puts "loading..."

    file = File.open("secret.txt", "a+")
    @secret = file.read
    file.close

    @conn = Faraday.new(
      url: "https://api.digitalocean.com/v2/droplets",
      headers: {"Authorization" => "Bearer #{@secret}"},
    )
    @res = @conn.get
  end

  def token
    while @secret.empty? or not @res.success?
      puts "\nThere in no valid API token in memory,\nplease enter a valid API token."
      @secret = gets.chomp
      File.write("secret.txt", @secret)

      @conn.headers["Authorization"] = "Bearer #{@secret}"
      @res = @conn.get
    end
    @conn
  end
end
