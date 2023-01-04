class RestaurantAdminsController < ApplicationController
  def delete
   
      reset_session
      redirect_to new_restaurant_admin_session_path
    
  end
end
