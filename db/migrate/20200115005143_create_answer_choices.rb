class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.belongs_to :question
      t.string :text, null: false
    end
  end
end
