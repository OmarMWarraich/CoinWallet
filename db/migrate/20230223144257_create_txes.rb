class CreateTxes < ActiveRecord::Migration[7.0]
  def change
    create_table :txes do |t|
      t.bigint :author_id
      t.string :name
      t.float :amount
      t.references :user, null: false, foreign_key: true
      t.references :commodity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
