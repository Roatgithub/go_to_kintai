class AddCompanyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company, :string, null: false
  end
end
