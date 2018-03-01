class EmailsController < ApplicationController

  before_action :all_emails, only: [:index, :create]
  respond_to :html, :js

  # index action has been removed

  def new
    @email = Email.new
  end

  def show
  	@email = Email.find(params[:id])
  end

  private

    def all_emails
      @emails = Email.all
    end

    def task_params
      params.require(:email).permit(:object, :body)
    end

end
