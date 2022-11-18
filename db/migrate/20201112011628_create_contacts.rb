class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.string :address
      t.string :visa
      t.string :work
      t.string :country
      t.string :period
      t.string :subject
      t.string :message
      t.timestamps
    end
  end
end
