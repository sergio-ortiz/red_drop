require "net/http"

class Auth
  def initialize
    file = File.open("secret.txt", "a+")
    @secret = file.read
    file.close

    uri = URI('https://api.digitalocean.com/v2/droplets')
    @http = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https')
    @req = Net::HTTP::Get.new(uri)

    @req["Authorization"] = "Bearer #{@secret}"
    @res = @http.request(@req)
  end

  def token
    while @secret.empty? or not @res.code === "200"
      puts "There in no valid API token in memory,\nplease enter a valid API token."
      @secret = gets.chomp
      File.write("secret.txt", @secret)

      @req["Authorization"] = "Bearer #{@secret}"
      @res = @http.request(@req)
    end
    @secret
  end
end
