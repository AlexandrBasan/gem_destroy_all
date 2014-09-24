Rails.application.routes.draw do
  match '/destroy_all_records', to: 'destroyall#destroy_all', via: 'delete', :as => :destroy_all_records
  match '/destroy_all_records_with_conditions', to: 'destroyall#destroy_all_with_conditions', via: 'delete', :as => :destroy_all_records_with_conditions
end