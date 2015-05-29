Template.home.helpers(
  incoming_challenges: ->
    if Meteor.userId()
      return Challenges.find(
        opponent_id: Meteor.userId()
      )

  sent_challenges: ->
    if Meteor.userId()
      return Challenges.find(
        creator_id: Meteor.userId()
      )
)
