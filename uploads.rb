use Rack::Uploads

post "/uploads" do
  env['rack.uploads'].each do |upload|
    upload.mv('/var/www/sinatra/uploads/files/#{upload.filename}')
  end
end

