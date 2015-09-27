module V1
  class Pages < Grape::API
    version 'v1'
    format :json
    prefix :api

    include Defaults

    # Collection
    resources "pages" do
      get do
        Account.your_pages(token)
      end

      post do
        Account.your_pages(token).create!(data)
      end
    end

    # Member
    resources "pages/:id" do
      get do
        Account.your_pages(token).find_by!(id: id)
      end

      put do
        Account.your_pages(token).find_by!(id: id).update!(data)
      end

      delete do
        Account.your_pages(token).destroy(id)
      end
    end
  end
end
