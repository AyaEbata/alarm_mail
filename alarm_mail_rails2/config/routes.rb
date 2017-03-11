Rails.application.routes.draw do

  get 'settings' => 'settings#index'

  get 'top/index'

  get 'send_mails/send', to:'send_mails#index'
  resources :alerm_infos

  root 'top#index'

end
