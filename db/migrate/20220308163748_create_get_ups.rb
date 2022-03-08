class CreateGetUps < ActiveRecord::Migration[6.0]
  def change
    create_table :get_ups do |t|
      t.string  :memo
      t.references  :user,   null: false, foreign_key: true
      t.references  :memory, null: false, foreign_key: true
      t.timestamps
    end
  end
end
