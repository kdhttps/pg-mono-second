@id("allow_student_read")
permit(
  principal is Jans::User,
  action in [Jans::Action::"Read"],
  resource is Jans::Application
) 
when {
  principal has userinfo_token &&
  principal.userinfo_token has role &&
  principal.userinfo_token.role.contains("student")
};