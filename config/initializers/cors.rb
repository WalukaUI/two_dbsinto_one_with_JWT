# Be sure to restart your server when you modify this file.

# Avoid  issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
allow do
    origins Rails.env.development? ? 'http://localhost:3000': 'http://localhost:3000'
    resource '*',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
  allow do
    origins Rails.env.production? ? 'https://doctor-appointment-creator.netlify.app' : 'https://doctor-appointment-creator.netlify.app'
#'http://localhost:3001'

    resource '*',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
  allow do
    origins Rails.env.production? ? 'https://main.dyqdosgprnszn.amplifyapp.com' : 'https://main.dyqdosgprnszn.amplifyapp.com'

    resource '*',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
  allow do
    origins Rails.env.production? ? 'https://tnt-project-manager.netlify.app' : 'https://main.dyqdosgprnszn.amplifyapp.com'

    resource '*',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
