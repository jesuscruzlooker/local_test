- dashboard: lookml_dashboard
  title: Lookml Dashboard Testing
  layout: tile
  tile_size: 185

  filters:

  elements:

    - name: add_a_unique_name_1498164246
      title: Untitled Visualization
      model: crunchbase
      explore: companies
      type: table
      fields: [companies.category_code, companies.blog_url, companies.description, companies.founded_date]
      sorts: [companies.blog_url desc]
      limit: 500
      column_limit: 500
      show_view_names: true
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false



    - name: add_a_unique_name_1498166037
      title: Untitled Visualization
      model: crunchbase
      explore: companies
      type: table
      fields: [companies.category_code, companies.blog_url, companies.description, companies.founded_date]
      filters:
        companies.category_code: "{{ _user_attributes['company_category'] }}"
      sorts: [companies.blog_url desc]
      limit: 500
      column_limit: 50
      show_view_names: true
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
