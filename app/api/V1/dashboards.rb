module V1
  class Dashboards < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :dashboards do
      resource :sumary do
        get :pages do
          {}
        end

        get :injections do
          {}
        end
      end
   end
  end
end
