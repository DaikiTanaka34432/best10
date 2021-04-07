class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title,  null: false
      t.text :rank1,  null: false
      t.text :rank2,  null: false
      t.text :rank3,  null: false
      t.text :rank4,  null: false
      t.text :rank5,  null: false
      t.text :rank6,  null: false
      t.text :rank7,  null: false
      t.text :rank8,  null: false
      t.text :rank9,  null: false
      t.text :rank10,  null: false
      t.text :detail,  null: false
      t.references :user,  null: false, foreign_keys: true
      t.timestamps
    end
  end
end
