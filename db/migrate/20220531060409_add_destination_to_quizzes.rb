class AddDestinationToQuizzes < ActiveRecord::Migration[6.0]
  def change
    add_column :quizzes, :destination, :integer
  end
end
