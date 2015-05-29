FlowRouter.route('/',
  name: 'home'
  action: ->
    FlowLayout.render('default_layout', main: 'home')
)

