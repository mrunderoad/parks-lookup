class AddBusinessTable < ActiveRecord::Migration[5.2]
  def change
    create_table :business do |t|
      t.column :content, :string
      t.column :name, :string
      t.column :type, :string
    end
  end
end
