- dashboard: update dashboard
  layout: newspaper
  elements:
  - name: new look
    label: new look
    model: crunchbase
    explore: companies
    type: table
    fields:
    - companies.category_code
    - companies.blog_url
    - companies.founded_date
    - companies.description
    sorts:
    - companies.blog_url desc
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
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    series_types: {}
    listen:
      Description: companies.description
    row:
    col:
    width:
    height:
  filters:
  - name: Description
    title: Description
    type: string_filter
    default_value: "%market%"
    model:
    explore:
    field:
    listens_to_filters: []
