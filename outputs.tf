output "app_group_assignments_id" {
  description = "Map of id values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.id }
}
output "app_group_assignments_app_id" {
  description = "Map of app_id values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.app_id }
}
output "app_group_assignments_group_id" {
  description = "Map of group_id values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.group_id }
}
output "app_group_assignments_priority" {
  description = "Map of priority values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.priority }
}
output "app_group_assignments_profile" {
  description = "Map of profile values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.profile }
}
output "app_group_assignments_retain_assignment" {
  description = "Map of retain_assignment values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignment.app_group_assignments : k => v.retain_assignment }
}

