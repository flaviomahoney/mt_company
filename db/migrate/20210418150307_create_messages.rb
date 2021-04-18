class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :nome
      t.string :sobrenome
      t.string :email
      t.text :descricao

      t.timestamps
    end
  end
end
