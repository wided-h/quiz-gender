Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'genders#home'
  get '/genders/guess_gender', to: 'genders#guess_gender'
  get '/genders/final_score' , to: 'genders#final_score'
end
