module ApplicationHelper

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=150"
    image_tag gravatar_url, alt: user.username, class: 'img-circle'
  end

  def article_authorization(article_user)
    logged_in? && current_user == article_user
  end

end
