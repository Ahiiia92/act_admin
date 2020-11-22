ActiveAdmin.register Client do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :firstname, :lastname, :phone_number, :email, :address, :birthday
  #
  # or
  #
  # permit_params do
  #   permitted = [:firstname, :lastname, :phone_number, :email, :address, :birthday]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
