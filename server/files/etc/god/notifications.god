God::Contacts::Email.message_settings = {
  # NOTE:
  # If this address ever changes, update ec2onrails::server.configure_smtp_gateway to match!
  :from => 'app@localhost'
}

God::Contacts::Email.server_settings = {
   :address => 'localhost',
   :port => 25
}

God.contact(:email) do |c|
  c.name = 'app'
  c.email = 'app@localhost'
  c.group = 'default'
end
