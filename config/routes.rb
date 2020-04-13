Rails.application.routes.draw do
  get 'zoom_meetings/join' => 'zoom_meetings#join', as: :join
end
