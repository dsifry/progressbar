# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_progressbar_session',
  :secret      => 'a19b9bf511cca89a9e1a9fb293232ec2333cba141e8e6b54ca8b4fa5589ab2cc09d033cd26a5907f152ab9d2fb29fcbf872315465df18de53453a73c7be63270'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
