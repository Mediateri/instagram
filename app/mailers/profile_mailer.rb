class ProfileMailer < ApplicationMailer
    def profile_mail(profile)
        @profile = profile
        @url  = 'root_path'
        mail(to: @profile.user.email, subject: 'Welcome to My Awesome Site')
    end
end
