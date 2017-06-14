class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  after_create_commit { notify }
  
  private

  def notify
    Notification.create(event: "New Notification")
  end
end
