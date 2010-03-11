# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_aerostats_session',
  :secret => 'ecd0e3c133a56644607ec5d05a623933b6540dd1740a5dda58da4d27cb0a52ae36de62a4d36402620c78d1116e533d4a47dd24474c4d9deb0515e03a51d5f551'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
