connection: "thelook"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: acquisitions {}

explore: companies {
    view_name: competitions

#  access_filter: {
#    field:  companies.category_code
#    user_attribute: company_category
#  }
}

explore: companies_to_update {}

explore: competitions {}

explore: employment {}

explore: funding {}

explore: investments {
  join: funding {
    type: left_outer
    sql_on: ${investments.funding_id} = ${funding.id} ;;
    relationship: many_to_one
  }
}

explore: ipo {}

explore: offices {}

explore: people {}

explore: runs {}

explore: tags {}

explore:  totaly_code_types {
  join: companies {
    type:  left_outer
    sql_on:  ${companies.category_code} = ${totaly_code_types.category_code};;
    relationship: one_to_one
  }
}
