module V1
  class Injections < Grape::API
    version 'v1'
    format :json
    prefix :api

    include Defaults

    # Collection
    resources "injections" do
      get do
        Account.your_injections(token)
      end

      post do
        Account.your_injections(token).create!(data)
      end
    end

    # Member
    resources "injections/:id" do
      get do
        Account.your_injections(token).find_by!(id: id)
      end

      put do
        Account.your_injections(token).find_by!(id: id).update!(data)
      end

      delete do
        Account.your_injections(token).destroy(id)
      end
    end
  end
end
