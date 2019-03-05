class Registration < Devise::RegistrationsContolloer

  private 

  def sign_up_params
    params.require(:user).permit(:name, 
                                 :password,
                                 :email, 
                                 :password_confirmation)
  end

  def account_update
    params.require(:user).permit(:name, 
                                 :password
                                 :email
                                 :password_confirmation
                                 :current_password)
  end
end