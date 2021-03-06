class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.references   :user,        type: :bigint,   null: false, foreign_key:true
      t.string       :post_code,                    null: false
      t.references   :prefecture,  type: :bigint,   null: false, foreign_key:true
      t.string       :city,                         null: false
      t.string       :block_num,                    null: false
      t.string       :bill_name
      t.string       :first_name,                   null: false
      t.string       :last_name,                    null: false
      t.string       :first_name_kana,              null: false
      t.string       :last_name_kana,               null: false
      t.string       :tel
    end
  end
end
