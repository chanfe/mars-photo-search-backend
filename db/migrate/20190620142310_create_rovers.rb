class CreateRovers < ActiveRecord::Migration[5.2]
  def change
    create_table :rovers do |t|

      t.timestamps
    end
  end
end
