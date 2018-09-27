class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(params[:contact])
    if @contact.name == nil
      @contact.name = "visiteur inconnu"
    end
    if @contact.message == nil
      @contact.message = "Intéressé par la Newsletter"
    end

    @contact.request = request
    if @contact.deliver
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
