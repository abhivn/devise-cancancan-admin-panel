class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, :after => :email
    add_column :users, :last_name, :string, :after => :first_name
  end
end
