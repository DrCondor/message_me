class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @messages = Message.all.order(:created_at)
    @message = Message.new
  end

end
