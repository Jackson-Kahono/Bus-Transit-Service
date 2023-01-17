Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*"
    # The React part will be on port 3001 so thats way we add it
    # Change it to the production url when going on production

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
