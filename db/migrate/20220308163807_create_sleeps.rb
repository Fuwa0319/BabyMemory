class CreateSleeps < ActiveRecord::Migration[6.0]
  def change
    create_table :sleeps do |t|

      t.timestamps
    end
  end
end
