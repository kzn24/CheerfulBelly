json.extract! user, :id, :first_name, :last_name, :first_name_kana, :last_name_kana, :gender, :birthdate, :email, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
