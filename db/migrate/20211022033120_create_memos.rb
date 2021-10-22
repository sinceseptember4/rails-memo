class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.string :title
      t.string :text
      t.timestamps
    end
  end
end
