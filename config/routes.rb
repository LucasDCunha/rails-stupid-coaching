Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ask', to: 'questions_controller#ask', as: 'ask'
  get '/answer', to: 'questions_controller#answer', as: 'answer'

  root to: 'questions_controller#ask'
end
