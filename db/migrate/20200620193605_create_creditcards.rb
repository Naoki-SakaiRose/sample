class CreateCreditcards < ActiveRecord::Migration[5.0]
  def change
    create_table :creditcards do |t|
      t.bigint      :user,                    null: false
      t.string      :payjp_custumer_id,       null: false
      t.string      :payjp_card_id,           null: false
    end
  end
end
