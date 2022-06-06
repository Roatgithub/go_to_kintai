json.extract! quiz, :id, :question, :answer, :image, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
json.image url_for(quiz.image)
