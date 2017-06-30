view: companies {
  sql_table_name: crunchbase.companies ;;

  dimension: blog_url {
    type: string
    sql: ${TABLE}.blog_url ;;
  }

  dimension: category_code {
    type: string

    sql: CASE WHEN ${TABLE}.category_code IS NOT NULL THEN ${TABLE}.category_code Else 'test' END;;
  }


  dimension: product_image {
    sql: ${TABLE}.category_code ;;
    html: <img src="https://images-na.ssl-images-amazon.com/images/I/41UwJsDNczL.jpg" /> ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: crunchbase_url {
    type: string
    sql: ${TABLE}.crunchbase_url ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension_group: founded {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.founded_at ;;
  }

  dimension: full_record {
    type: yesno
    sql: ${TABLE}.full_record ;;
  }

  dimension: homepage_url {
    type: string
    sql: ${TABLE}.homepage_url ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.number_of_employees ;;
  }

  dimension: overview {
    type: string
    sql: ${TABLE}.overview ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}.permalink ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: twitter_username {
    type: string
    sql: ${TABLE}.twitter_username ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    html:
    <ul>
    <li> value: {{ value | times:4.3 | minus:3.2 }} </li>
    <li> rendered_value: {{ rendered_value }} </li>
    <li> website: https://www.google.com/search?q={{ value }}&oq=adver&aqs=chrome.0.69i59j69i57j0l4.1102j0j8&sourceid=chrome&ie=UTF-8</li>
    <li> link: {{ link }} </li>
    <li> {{ _model._name }} </li>
    </ul> ;;
    drill_fields: [name, twitter_username]
  }


  measure: count2 {
    type: count
    drill_fields: [name, twitter_username]
  }





}
