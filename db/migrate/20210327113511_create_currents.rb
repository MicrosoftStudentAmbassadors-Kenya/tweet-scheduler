class CreateCurrents < ActiveRecord::Migration[6.1]
  def change
    create_table :currents do |t|

      t.timestamps
    end
  end
end
