output "app_user_assignments_lookup_id" {
  description = "Map of id values across all app_user_assignments_lookup, keyed the same as var.app_user_assignments_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_app_user_assignments.app_user_assignments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_user_assignments_lookup_users" {
  description = "Map of users values across all app_user_assignments_lookup, keyed the same as var.app_user_assignments_lookup except keys with no users are omitted"
  value       = { for k, v in data.okta_app_user_assignments.app_user_assignments_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

