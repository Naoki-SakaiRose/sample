class CreateItemimages < ActiveRecord::Migration[5.0]
  def change
    create_table :itemimages do |t|
      t.bigint       :item,                  null: false
      t.string       :image,                 null: false
    end
  end
end