module V1
  class Accounts < Grape::API
    version 'v1'
    format :json
    prefix :api

    include V1::Defaults

    resource :accounts do
     params do
       requires :id, type: Integer, desc: "Status id."
     end
     route_param :id do
       get do
         Account.find(params[:id])
       end
     end

     get :first_account do
       Account.first
     end
   end
  end
end
