Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :memos
    end
  end
end