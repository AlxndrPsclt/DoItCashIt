module UsersHelper
# FAIRE UN TEST POUR PERMETTRE AUX UTILISATEURS DE FAIRE SANS COMPTE GRAVATAR
#Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

	def gravatar_for_comment(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=25"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

	def gravatar_for_header(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=175"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

end
