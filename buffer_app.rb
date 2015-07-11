require 'httparty'

class BufferApp
  include HTTParty
  base_uri 'https://api.bufferapp.com/1'

  def initialize(token, id)
      @token = token
      @id = id
  end

  def create(text, scheduled_at="")
  	if scheduled_at.empty?
    	BufferApp.post('/updates/create.json', :body =>  {"text" => text, "profile_ids[]" => @id, "access_token" => @token, "top" => true})
    else
    	BufferApp.post('/updates/create.json', :body =>  {"text" => text, "profile_ids[]" => @id, "access_token" => @token, "scheduled_at" => scheduled_at})
  	end
  end 
end