module SessionsHelper

	def signed_in?
		!current_user.nil?
	end

	def signed_in_user
    redirect_to sign_in_url, notice: "Please sign in." unless signed_in? 
  end

end
