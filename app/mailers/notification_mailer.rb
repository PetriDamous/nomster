class NotificationMailer < ApplicationMailer
    default from: 'no-reply@nerdster.com'
    
    def comment_added
        mail(to: "rapidmon64@gmail.com", subject: "A comment has been added to your place")
    end
end
