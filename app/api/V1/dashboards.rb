module V1
  class Dashboards < Grape::API
    version 'v1'
    format :json
    prefix :api

    include Defaults

    resource :dashboards do
      resource :sumary do
        get :totals do
          {
            pages: current_account.pages.count,
            injections: current_account.injections.count
          }
        end

        get :pages do
          current_account.pages.sumary
        end

        get :injections do
          current_account.injections.sumary
        end
      end
   end
  end
end
