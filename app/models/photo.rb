class Photo < ActiveRecord::Base

  def self.popular_url
    url =  "https://api.instagram.com/v1/media/popular?client_id=70046fd70d824d79950d52b0aef8bc15"
    response = HTTParty.get(url)
    jsonresponse = JSON.parse(response.body)

    @images = []
    jsonresponse["data"].each do |x|
      @images << x["images"]["low_resolution"]["url"]
    end
    @images
  end

end
