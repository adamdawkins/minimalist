FlowRouter.route('/',
  name: 'home'
  action: ->
    FlowLayout.render('default_layout', main: 'home')
)

FlowRouter.route('/players',
  name: 'players.index',
  action: ->
    FlowLayout.render('default_layout', main: 'players_index')
)

