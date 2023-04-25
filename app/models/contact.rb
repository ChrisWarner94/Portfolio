class Contact < MailForm::Base
    attribute :name, :validate => true
    attribute :message, :validate => true
    attribute :phone_number, :validate => true
    attribute :email, :validate => true

    def headers
    {
        :subject => "Inbound mail from www.Christopher-Warner.co.uk",
        :to => "chriswarner0903@gmail.com",
        :from => %("#{name}")
    }
    end
end
