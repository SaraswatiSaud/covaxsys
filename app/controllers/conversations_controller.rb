# frozen_string_literal: true

# Conversations Controller Class
class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_params, only: [:show]

  def index
    @other_users = User.where.not(id: current_user.id)
  end

  def create
    @conversation = Conversation.between(params[:sender_id], params[:recipient_id])&.first
    @conversation = Conversation.create!(conversation_params) if @conversation.nil?
    redirect_to conversation_path(@conversation.id)
  end

  def show
    @messages = @conversation.messages.order(created_at: :desc)
    @message = @conversation.messages.new
  end

  private

  def find_params
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end
end
