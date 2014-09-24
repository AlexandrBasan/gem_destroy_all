Rails.application.routes.draw do
  match '/destroy_all_records', to: 'destroyall#destroy_all', via: 'delete'
  match '/destroy_all_records_with_conditions', to: 'destroyall#destroy_all_with_conditions', via: 'delete'
end