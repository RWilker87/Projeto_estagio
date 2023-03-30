class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.date :data_de_nascimento
      t.string :genero
      t.string :spotify_token

      t.timestamps
    end
  end
end
