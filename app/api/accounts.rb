module Accounts
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :accounts do
     desc "Return an account."
     get :first_account do
       Account.first
     end
   end
  end
end
