class PagesController < ApplicationController
  def home
    @message = Message.new
  end

  def create
    @message = Message.find(params[:id])
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "message successfully created"
      redirect_to @message
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:nome, :sobrenome, :email, :descricao)
  end
end
