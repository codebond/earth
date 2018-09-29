class CreateStones < ActiveRecord::Migration[5.2]
  def change
    create_table :stones do |t|
      t.json :info

      t.timestamps
    end
  end
end
