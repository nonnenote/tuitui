class CreateTuis < ActiveRecord::Migration[5.1]
  def change
    create_table :tuis do |t|
      t.text :content
    end
  end
end
