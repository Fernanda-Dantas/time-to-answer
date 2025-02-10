# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# app/assets
Rails.application.config.assets.precompile += %w( application.js application.css 
                                                  admins_backoffice.js admins_backoffice.css 
                                                  users_backoffice.js users_backoffice.css 
                                                  admin_devise.css admin_devise.js
                                                  user_devise.css user_devise.js )

# lib/assets
Rails.application.config.assets.precompile += %w( custom.js custom.css img.jpg _img.png )

# vendor/assets
Rails.application.config.assets.precompile += %w( jquery-2.2.3/dist/jquery )
