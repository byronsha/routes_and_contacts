class CreateUsersAgain < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, presence: true, uniqueness: true, null: false
      t.timestamps
    end
  end
end
