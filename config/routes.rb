Hoppedout::Application.routes.draw do
  constraints( FormatCheck.new( :json ) ) do
    resources :batches, except: :edit
    resources :hops, except: :edit
    resources :malts, except: :edit
  end

  constraints( FormatCheck.new( :html ) ) do
    get '*foo', :to => 'pages#index'
    get '/', :to => 'pages#index'
  end
end
