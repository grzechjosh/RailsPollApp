class CreateResponse < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.belongs_to :question
      t.belongs_to :user
      t.belongs_to :answer_choice
    end
  end
end
