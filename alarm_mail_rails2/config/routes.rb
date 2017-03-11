Rails.application.routes.draw do

  get 'send_mails/send', to:'send_mails#index'
  resources :alerm_infos

end
