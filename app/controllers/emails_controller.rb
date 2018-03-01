class EmailsController < ApplicationController

  before_action :all_emails, only: [:index, :create, :update, :destroy]
  before_action :set_emails, only: [:edit, :update, :destroy]
  respond_to :html, :js

  # index action has been removed

  def new
    @email = Email.new
  end

  def show
  	@email = Email.find(params[:id])
  end

  def create
    @email  = Email.create(task_params)
  end


  def destroy
    @email.destroy
  end


  private

    def all_emails
      @emails = Email.all
    end

    def task_params
      params.require(:email).permit(:object, :body)
    end

    def set_emails
      @email = Email.find(params[:id])
    end

end
