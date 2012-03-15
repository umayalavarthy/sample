class AddEmailToAdmissions < ActiveRecord::Migration
  def self.up
    add_column :admissions, :email, :string
  end

  def self.down
    remove_column :admissions, :email
  end
end
