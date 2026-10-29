@id("forbid_non_admin_read_to_application")
forbid(
  principal is Jans::User,
  action in [Jans::Action::"Read"],
  resource is Jans::Application
)
when {
  principal has userinfo_token &&
  principal.userinfo_token has role &&
  principal.userinfo_token.role.contains("user")
};
