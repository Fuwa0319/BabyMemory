class CreateWeighs < ActiveRecord::Migration[6.0]
  def change
    create_table :weighs do |t|

      t.timestamps
    end
  end
end
