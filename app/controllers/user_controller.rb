class UserController < ApplicationController
    def delete
     
        reset_session
        redirect_to new_user_session_path
      
    end
  end