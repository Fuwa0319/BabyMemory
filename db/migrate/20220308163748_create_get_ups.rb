class CreateGetUps < ActiveRecord::Migration[6.0]
  def change
    create_table :get_ups do |t|

      t.timestamps
    end
  end
end
