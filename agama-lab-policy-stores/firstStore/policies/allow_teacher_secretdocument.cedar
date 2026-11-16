@id("allow_teacher_secretdocument")
permit(
  principal is Jans::User,
  action,
  resource is Jans::SecretDocument
) 
when {
  principal has userinfo_token &&
  principal.userinfo_token has role &&
  principal.userinfo_token.role.contains("teacher")
};