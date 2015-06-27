class MessagesController < ApplicationController
  password = 'pop'

  def index
    if params[:password] == 'pop'
      text = params[:message] || "I'm okay."
      Message.create(text: text, ip_address: request.remote_ip)
      @messages = Message.all.order(created_at: :desc)
      render 'index'
    else
      render 'error'
    end
  end
end
