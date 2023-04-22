class Contact < MailForm::Base
    attribute :name, :validate => true
    attribute :message, :validate => true

    def headers
    {
        :subject => "sending",
        :to => "chriswarner0903@gmail.com",
        :from => %("#{name}")
    }
    end
end