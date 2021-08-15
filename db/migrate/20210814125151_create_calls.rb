class CreateCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :calls do |t|
      t.references :customer, foreign_key: true
      t.string :statu
      t.datetime :time
      t.string :comment
      t.timestamps
    end
  end
end
