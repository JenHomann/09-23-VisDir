class PhotographerMailer < ActionMailer::Base
  
  def welcome(photographer)
    @photographer = photographer
    
    mail(:to => @photographer.email, :subject => "Welcome", :from => "mpjeno123test@gmail.com")
  end
  
  def delete(photographer)
    @photographer = photographer
    
    mail(:to => @photographer.email, :subject => "Your account has been deleted", :from => "mpjeno123test@gmail.com")
  end
  
end