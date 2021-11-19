Rails.application.routes.draw do
  root to: 'memos#index'
  namespace 'api' do
    namespace 'v1' do
      resources :memos
    end
  end
end