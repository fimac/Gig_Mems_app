require 'securerandom'
class ChatroomsController < ApplicationController
  before_action :require_login

  def logged_in?
    @current_user != nil
  end

  def index
    chatrooms = @current_user.chatrooms
    @existing_chatrooms_users = @current_user.existing_chatrooms_users
  end

  def create
    @other_user = User.find(params[:other_user])
    @chatroom = find_chatroom(@other_user) || Chatroom.new(identifier: SecureRandom.hex)
    if !@chatroom.persisted?
      @chatroom.save
      @chatroom.subscriptions.create(user_id: @current_user.id)
      @chatroom.subscriptions.create(user_id: @other_user.id)
    end
    redirect_to user_chatroom_path(@current_user, @chatroom,  :other_user => @other_user.id)
  end

  def show
    @other_user = User.find(params[:other_user])
    @chatroom = Chatroom.find_by(id: params[:id])
    @message = Message.new
  end

private
  def find_chatroom(second_user)
    chatrooms = @current_user.chatrooms
    chatrooms.each do |chat|
      chat.subscriptions.each do |s|
        if s.user_id == second_user.id
          return chat
        end
      end
    end
    nil
  end

  def require_login
    redirect_to session_new_path unless logged_in?
  end
end
