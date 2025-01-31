class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :grade
      t.string :answers
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
