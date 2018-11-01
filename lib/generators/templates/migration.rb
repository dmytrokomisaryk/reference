class AddRefereceTo<%= table_name.camelize%> < ActiveRecord::Migration<%= migration_version%>
  def change
    add_column :<%= table_name%>, :reference, :string
  end
end