module V1
  class Root < Grape::API
    mount V1::Dashboards
    mount V1::Accounts
    mount V1::Injections
    mount V1::PageInjections
    mount V1::Pages
  end
end
