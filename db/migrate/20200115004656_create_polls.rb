class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.belongs_to :user
      t.string :title, null: false
    end
  end
end
