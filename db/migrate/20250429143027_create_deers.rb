class CreateDeers < ActiveRecord::Migration[7.1]
  def change
    create_table :deers do |t|

      t.timestamps
    end
  end
end
