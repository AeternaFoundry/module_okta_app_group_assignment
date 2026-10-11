output "app_group_assignments_id" {
  description = "Map of id values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no id are omitted"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_group_assignments_app_id" {
  description = "Map of app_id values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no app_id are omitted"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "app_group_assignments_group_id" {
  description = "Map of group_id values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no group_id are omitted"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "app_group_assignments_priority" {
  description = "Map of priority values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no priority are omitted"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.priority if v.priority != null }
}
output "app_group_assignments_profile" {
  description = "Map of profile values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no profile are omitted"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.profile if v.profile != null && length(v.profile) > 0 }
}
output "app_group_assignments_retain_assignment" {
  description = "Map of retain_assignment values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no retain_assignment are omitted"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.retain_assignment if v.retain_assignment != null }
}

