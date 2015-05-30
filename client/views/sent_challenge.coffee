Template.sent_challenge.helpers(
  opponent: ->
    Meteor.users.findOne @opponent_id

  start: ->
    moment(@start_date).format 'MMMM Do YYYY'
)
