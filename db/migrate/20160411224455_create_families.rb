class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :family_name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
