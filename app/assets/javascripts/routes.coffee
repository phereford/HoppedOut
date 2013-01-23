App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'hops', ->
    @route 'new'
  @resource 'malts', ->
    @route 'new'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.HopsIndexRoute = Ember.Route.extend
  model: ->
    App.Hop.find()
  setupController: (controller, model) ->
    controller.set('hops', model)
    @controllerFor('application').set('currentRoute', 'hops')

App.MaltsIndexRoute = Ember.Route.extend
  model: ->
    App.Malt.find()
  setupController: (controller, model) ->
    controller.set('malts', model)
    @controllerFor('application').set('currentRoute', 'malts')
