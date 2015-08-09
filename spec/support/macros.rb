def set_current_user
  aaron = Fabricate(:user)
  session[:user_id] = aaron.id
end

def set_referrer
  request.env['HTTP_REFERER'] = "http://localhost:3000"
end

def current_user
  User.find(session[:user_id])
end

def sign_in(user = nil)
  user ||= Fabricate(:user)
  visit login_path
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Submit"
end