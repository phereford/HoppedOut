App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isHops: (->
    @get('currentRoute') == 'hops'
  ).property('currentRoute')

  isMalts: (->
    @get('currentRoute') == 'malts'
  ).property('currentRoute')
