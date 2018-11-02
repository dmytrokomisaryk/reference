class AddReferenceTo<%= table_name.camelize%> < ActiveRecord::Migration<%= migration_version%>
  def change
    add_column :<%= table_name%>, :reference, :string
    add_index :tickets, :reference, unique: true
  end
end