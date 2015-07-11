Buffer App API Ruby Wrapper
---

This is a simple implementation of a Ruby Wrapper for the BufferApp API.

Currently, only the following requests work:

	POST /1/updates/create.json

I will certainly implement the whole library if I got more time. This class was implemented when I got frustrated by the lack of documentation in the official gem (the API Doc link was dead when I tried to access it) for a single purpose: create and schedule updates.

Please install ``httparty`` before using the class,

	gem install httparty
	
Basic Usage in ``irb``:
	
	load 'buffer_app.rb'
	buffer = BufferApp.new(your_token, your_profile_id)
	puts buffer.create(your_post, date_string_iso8601_format)

I hope it saves you some time.
