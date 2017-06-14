class MessagesChannel < ApplicationCable::Channel
  def subscribed
    def subscribed
    stream_from "messages_#{params[:chatroom_id]}"
    end
  end
end
