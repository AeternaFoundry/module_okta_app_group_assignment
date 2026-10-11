resource "okta_app_group_assignment" "app_group_assignments" {
  for_each = var.app_group_assignments

  app_id            = each.value.app_id
  group_id          = each.value.group_id
  priority          = each.value.priority
  profile           = each.value.profile
  retain_assignment = each.value.retain_assignment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

