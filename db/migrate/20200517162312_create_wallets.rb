class CreateWallets < ActiveRecord::Migration[6.0]
  def change
    create_table :wallets do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :iban
      t.string :bic
      t.string :reference

      t.timestamps
    end
  end
end
