FlowRouter.route('/',
  name: 'home'
  action: ->
    FlowLayout.render('default_layout', main: 'home')
)

FlowRouter.route('/players',
  name: 'players.index'
  action: ->
    FlowLayout.render('default_layout', main: 'players_index')
)

FlowRouter.route('/challenge/:user_id',
  name: 'challenges.new'
  action: ->
    FlowLayout.render('default_layout', main: 'challenges_new')
)
