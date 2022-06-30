class AddDetailsToTodos < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :text, :string
    add_column :todos, :is_completed, :boolean, default: false
  end
end
