# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jcheld_session',
  :secret      => '898e103bd04db1857ed65125d117f837d2861e1e4bbdae7847aaca696e3e5f86ee4064ee723c4bfe031b5e333f6d6f19f5903c38f7035cf78b107465d5a73950'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
