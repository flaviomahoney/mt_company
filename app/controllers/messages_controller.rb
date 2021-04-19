class MessagesController < ApplicationController

    def index
        @messages = Message.all
    end

    def create
        @message = Message.new(message_params)
        if @message.save
          flash[:success] = "message successfully created"
          redirect_to '/'
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
