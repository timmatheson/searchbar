# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_searchbar_session',
  :secret      => '96e23f68720aadce06d1e131e3c0ff4940f21e165705a9ed8d36b44adf92059b93582e00e9d5371dedf4c04b7bfd73a98b07404ac8bebc98d23ad8da4b8701fc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
