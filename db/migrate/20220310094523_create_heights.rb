class CreateHeights < ActiveRecord::Migration[6.0]
  def change
    create_table :heights do |t|

      t.timestamps
    end
  end
end
