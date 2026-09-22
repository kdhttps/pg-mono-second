@id("cannot_write_if_not_admin")
permit(
  principal is Jans::User,
  action in [Jans::Action::"Write"],
  resource is Jans::Application
)
when {
  principal has userinfo_token &&
  principal.userinfo_token has role &&
  !principal.userinfo_token.role.contains("admin")
};
