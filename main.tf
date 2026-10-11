data "okta_app_user_assignments" "app_user_assignments_lookup" {
  for_each = var.app_user_assignments_lookup

  id = each.value.id
}

