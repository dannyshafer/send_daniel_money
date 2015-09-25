class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :address_line1, :address_line2, :city, :state, :zip, :country)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :address_line1, :address_line2, :city, :state, :zip, :country)
  end
end