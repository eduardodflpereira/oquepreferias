class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text, null: false
      t.string :option1, null: false
      t.string :option2, null: false

      t.timestamps null: false
    end
  end
end
