module TableHelper
  def generate_pagy_table
    render("/pagy_tables/table.html.erb")
  end
end