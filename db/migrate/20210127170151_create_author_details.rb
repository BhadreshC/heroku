class CreateAuthorDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :author_details do |t|
      t.string :name
      t.integer :age
      t.integer :mobileno
      t.belongs_to :author
      t.timestamps
    end
  end
end
