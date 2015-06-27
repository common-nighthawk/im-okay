class MessagesController < ApplicationController
  password = 'pop'

  def index
    if params[:password] == 'pop'
      text = params[:message] || "I'm okay."
      m = Message.new(text: text, ip_address: request.remote_ip)
      response = HTTParty.get("http://ipinfo.io/#{m.ip_address}/city")
      m.update_attributes(location: response.parsed_response.chomp)
      @messages = Message.all.order(created_at: :desc)
      render 'index'
    else
      render 'error'
    end
  end
end
