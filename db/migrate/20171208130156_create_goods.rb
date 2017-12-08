class CreateGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :goods do |t|
      t.string :title, null: false
      t.decimal :revenue, null: false
      t.date :published_at, null: false

      t.timestamps
    end

    add_index :goods, :published_at
  end
end
