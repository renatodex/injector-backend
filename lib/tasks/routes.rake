namespace :api do
  desc "API Routes"
  task :routes => :environment do
    V1::Root.routes.each do |api|
      method = api.route_method.ljust(10)
      path = api.route_path.gsub(":version", api.route_version)
      puts "     #{method}".yellow + " #{path}".light_blue
    end
  end
end
