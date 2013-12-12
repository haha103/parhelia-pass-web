class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :key
      t.string :owner
      t.string :user
      t.string :password
      t.string :category
      t.string :comments

      t.timestamps
    end
  end
end
