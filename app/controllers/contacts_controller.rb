class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Successfully Registered!"
        else
            redirect_to new_contact_path, notice: "An Error Occurred."
        end
    end
    
    private
        def contact_params
            params.required(:contact).permit(:name, :email, :comments)
        end
end 