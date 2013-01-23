Hoppedout::Application.routes.draw do
  constraints( FormatTest.new( :json ) ) do
    resources :batches, :except => :edit
  end

  constraints( FormatTest.new( :html ) ) do
    get '*foo', :to => 'pages#index'
    get '/', :to => 'pages#index'
  end
end
