class MessagesController < ApplicationController
  def index
    @message = Message.new
    @thank = Thank.find(params[:thank_id])
    @messages = @thank.messages.includes(:thank)
  end

  def create
    @thank = Thank.find(params[:thank_id])
    @message = @thank.messages.new(message_params)
    if @message.save
      redirect_to thank_messages_path(@thank)
    else
      @messages = @thank.messages.includes(:thank)
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:comment).merge(profile_id: current_user.profile.id)
  end
end
