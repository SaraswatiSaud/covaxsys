# frozen_string_literal: true

# Messages Controller class
class MessagesController < ApplicationController
  before_action :find_params, only: %i[new create]

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user_id = current_user.id
    @message.save
  end

  private

  def find_params
    @conversation = Conversation.find(params[:conversation_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
