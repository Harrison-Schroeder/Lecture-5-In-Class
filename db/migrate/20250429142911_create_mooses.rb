class CreateMooses < ActiveRecord::Migration[7.1]
  def change
    create_table :mooses do |t|

      t.timestamps
    end
  end
end
