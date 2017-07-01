class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_1"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
  	Rails.logger.info("received message")
  	ActionCable.server.broadcast("room_1", data)
  end


end
