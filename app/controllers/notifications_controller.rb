class NotificationsController < ApplicationController
  def index
    # potentially may be an issue as getting all notifications.
    @notifications = Notification.all.reverse
  end
end
