class CreateNekos < ActiveRecord::Migration[5.0]
  def change
    create_table :nekos do |t|
      t.string :name,    null: false
      t.string :sex,     null: false
      t.string :image
      t.string :kind,    null: false
      t.text :comment,   null: false
      t.timestamps
    end
  end
end
