# frozen_string_literal: true

# Messages Database
class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :conversation
      t.references :user

      t.timestamps
    end
  end
end
