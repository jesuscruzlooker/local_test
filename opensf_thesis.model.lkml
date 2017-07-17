connection: "bq_thesis"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.18
# NOTE: for BigQuery specific considerations

explore: munci_service_requests {}

explore: sffd_service_calls {}

explore: sfpd_incidents {}
