Template.challenges_new.rendered = ->
  $('select.dropdown').dropdown()

Template.challenges_new.helpers(
  opponent: ->
    Meteor.users.findOne FlowRouter.getParam 'user_id'

  game_lengths: ->
    [
      value: 30
      text: '30 days (The Classic)'
    ,
      value: 14
      text: '14 days (The Rookie)'
    ,
      value: 0
      text: 'Last Man Standing'
    ]
)

Template.challenges_new.events(
  'submit form': (event, template) ->
    event.preventDefault()

    challenge = SimpleForm.processForm event.target

    challenge.opponent_id = FlowRouter.getParam 'user_id'
    challenge.creator_id = Meteor.userId()

    Challenges.insert challenge
)
