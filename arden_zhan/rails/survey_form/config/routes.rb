Rails.application.routes.draw do
  root 'surveys#index'
  post 'surveys' => 'surveys#process_survey'

  get  'surveys/result'
end
