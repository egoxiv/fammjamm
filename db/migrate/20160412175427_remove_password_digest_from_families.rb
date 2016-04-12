class RemovePasswordDigestFromFamilies < ActiveRecord::Migration
  def change
    remove_column :families, :password_digest
  end
end
