class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.datetime :worked_at,  null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
