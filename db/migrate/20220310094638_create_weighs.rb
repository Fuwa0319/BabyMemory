class CreateWeighs < ActiveRecord::Migration[6.0]
  def change
    create_table :weighs do |t|
      t.integer     :weigh_list_id,  null:false
      t.string      :memo
      t.references  :user, null: false, foreign_key: true
      t.references  :memory, null: false, foreign_key: true
      t.timestamps
    end
  end
end
