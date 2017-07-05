view: totaly_code_types {
  derived_table: {
    sql: SELECT
        companies.category_code,
        COUNT(companies.category_code) AS total_types
      FROM crunchbase.companies  AS companies
      GROUP BY 1
      ORDER BY 2  DESC
      LIMIT 500;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}.category_code ;;
  }

  dimension: total_types {
    type: number
    sql: ${TABLE}.total_types ;;
  }

  set: detail {
    fields: [category_code, total_types]
  }
}
