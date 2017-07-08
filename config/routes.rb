Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	get '/business', :to => "business#index"
  	get '/business/:business_id/stage',	:to => "stage#index"
  	get '/business/:business_id/stage/new',	:to => "stage#new"
	end
end
