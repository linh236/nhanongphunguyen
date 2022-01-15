class SendMessageJob < ApplicationJob
  queue_as :default

  def perform message, current_user
    mine = ApplicationController.render(
      partial: 'messages/mine', 
      locals: { message: message, current_user: current_user}
    )

    theirs = ApplicationController.render(
      partial: 'messages/theirs', 
      locals: { message: message, current_user: current_user}
    )

    ActionCable.server.broadcast "room_channel_#{message.room_id}", mine: mine, theirs: theirs, message: message
  end
end
