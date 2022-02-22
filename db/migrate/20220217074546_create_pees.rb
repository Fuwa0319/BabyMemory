class CreatePees < ActiveRecord::Migration[6.0]
  def change
    create_table :pees do |t|
      t.integer     :amount_id, null: false
      t.string      :memo
      t.references  :user, null: false, foreign_key: true
      t.references  :memory, null: false, foreign_key: true
      t.timestamps
    end
  end
end
