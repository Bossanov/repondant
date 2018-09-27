class Contact < MailForm::Base
  attribute  :name, :validate => true
  attribute  :mail, :validate => true
  attribute  :message, :validate => true

  def headers
   {
    :subject => "Nouvelle candidature",
    :to => "antoine.staumont@autismeinfoservice.fr",
    :from => %("#{name}" <#{mail}>)
   }
  end
end
