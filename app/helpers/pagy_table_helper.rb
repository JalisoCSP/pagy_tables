module PagyTableHelper
  def generate_pagy_table(style_options = {})
    render "/pagy_tables/table.html.erb",
      style_options: pagy_tables_default_options.merge(style_options)
  end

  private

  def pagy_tables_default_options
    { pagy_table_style: "pagy_table_style",
      pagy_table_tr_style: "pagy_table_tr_style",
      pagy_table_th_style: "pagy_table_th_style",
      pagy_table_td_style: "pagy_table_td_style"
    }
  end
end