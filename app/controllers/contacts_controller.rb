class ContactsController < ApplicationController
    
    def new 
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        @contact.save
        if @contact.deliver
          
        else
          
        end
      
        
      
    end

 
  private

  def contact_params
    params.require(:contact).permit(:name, :message, :phone_number, :email, )
  end

end
