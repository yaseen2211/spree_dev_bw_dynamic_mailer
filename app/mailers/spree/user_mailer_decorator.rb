module Spree
  module UserMailerDecorator 
    def welcome(user)
      @user = user
      # finder_obj = Spree::Email::EmailDynamic.finder("welcome","Spree::User")
      # subject = finder_obj.subject
      # @single_replace_temp = Spree::Email::EmailDynamic.make_dynamic([@user],finder_obj.template)
      # @vendor_password_reset_url = spree.edit_spree_user_password_url(reset_password_token: token, host: Spree::Store.current.url)
      # mail(to: @user.email, from: from_address, subject: "Welcome to Tim Auction")
      user_name = @user.name_by_email(user.email)
      mail(to: @user.email, from: from_address, subject: "Welcome to DROPIT!,#{user_name}!")
    end
    def vendor_welcome(user, token)
      @vendor_password_reset_url = spree.edit_spree_user_password_url(reset_password_token: token, host: Spree::Store.current.url)
      @user = user
      vendor = user.vendor
      mail(to: @user.email, from: from_address, subject: "Welcome #{vendor.try(:name)}, Your account is now active!", bcc: BCC_EMAILS)
    end
    def confirmation_instructions(user, token, _opts = {})
    @confirmation_url = spree.spree_user_confirmation_url(confirmation_token: token, host: Spree::Store.current.url)
    @email = user.email

    mail to: user.email, from: from_address, subject: 'Reset Password Request'
    end
    def reset_password_instructions(user, token, *_args)
      @edit_password_reset_url = spree.edit_spree_user_password_url(reset_password_token: token, host: Spree::Store.current.url)

      mail to: user.email, from: from_address, subject: 'Reset Password Request'
    end

  end
end
::Spree::UserMailer.prepend(Spree::UserMailerDecorator)



# mail to: user.email, from: from_address, subject: Spree::Store.current.name + ' ' + I18n.t(:subject, scope: [:devise, :mailer, :confirmation_instructions])