json.extract! user, :id, :name, :email, :password, :security_question, :security_answer, :created_at, :updated_at
json.url user_url(user, format: :json)
