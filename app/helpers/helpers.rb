class Helpers
  def self.current_user(session_hash)
      User.find(session[:user_id], session[:password])
  end

  def self.is_logged_in?(session_hash)
    !!session[:user_id]
  end

end
