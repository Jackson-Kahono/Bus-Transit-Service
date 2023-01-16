class AddPasswordConfirmationToUsers < ActiveRecord::Migration[7.0]
  def change
    def change
      add_column :users, :password_confirmation, :string
    end
  end
end
