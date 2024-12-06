class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.string :gender, null: false
      t.date :birthdate
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
