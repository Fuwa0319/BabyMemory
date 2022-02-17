class CreateTemperatures < ActiveRecord::Migration[6.0]
  def change
    create_table :temperatures do |t|
      t.integer     :temperature_list_id, nill: false
      t.string      :memo
      t.references  :user, nill: false, foreign_key: true
      t.references  :memory, nill: false, foreign_key: true
      t.timestamps
    end
  end
end
