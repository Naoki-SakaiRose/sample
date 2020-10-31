class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string       :name,                        null: false
      t.integer      :price,                       null: false
      t.text         :description
      t.timestamp    :closed_time
      t.bigint       :buyer_id
      t.bigint       :prefecture,                  null: false
      t.bigint       :category,                    null: false
      t.bigint       :brand
      t.string       :size,                        null: false
      t.integer      :condition,                   null: false
      t.integer      :preparation,                 null: false
      t.integer      :postage,                     null: false
      t.bigint       :user,                        null: false
      t.integer      :status,                      null: false
      t.timestamps
    end
  end
end