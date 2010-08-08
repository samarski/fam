# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fam_session',
  :secret      => '73041e41047a5dacbbd0ed2bd4d0244b9b90091881bdfb73276a7655b5362198243b31f4b1dc3a62fbd0e4e36a475ae18a28f2a957f2ce660a69e6cdb43eb327'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
