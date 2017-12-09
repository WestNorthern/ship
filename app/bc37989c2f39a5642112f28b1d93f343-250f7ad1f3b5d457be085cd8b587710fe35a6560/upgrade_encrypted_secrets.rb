# Download this to your Rails app directory and run with:
# bin/rails runner upgrade_encrypted_secrets.rb

# Everything below here is private API and not something your app should use.
Rails::Secrets.singleton_class.prepend Module.new {
  def decrypt(data)
    cipher = OpenSSL::Cipher.new("aes-256-cbc").decrypt
    cipher.key = key
    cipher.update(data) << cipher.final
  end
}

puts "Generating a new higher entropy encryption key in config/secrets.yml.key."
puts "Rotate the encryption key now."

decrypted_secrets = Rails::Secrets.read
File.binwrite("config/secrets.yml.key", Rails::Secrets.generate_key)
Rails::Secrets.write(decrypted_secrets)
