class AddReadToEmail < ActiveRecord::Migration[5.1]
  def change
    add_column :emails, :read, :boolean
  end
end
