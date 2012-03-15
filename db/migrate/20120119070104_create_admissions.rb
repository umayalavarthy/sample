class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.string :name
      t.string :parentname
      t.datetime :dob
      t.string :address
      t.string :phno
      t.boolean :feepaid

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
