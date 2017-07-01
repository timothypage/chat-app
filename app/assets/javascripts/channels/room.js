console.log("loading?")

App.room = App.cable.subscriptions.create({channel: "RoomChannel", room: 1}, {
  connected: function() {
    console.log("connected successfully to room")
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
  	console.log("RECEIVING FROM ROOM CHANNEL")
  	console.log(data)
    // Called when there's incoming data on the websocket for this channel
  },

  message: function(msg) {
    this.perform("message", {room: 1, contents: msg})
  }
});

// setTimeout(function() {
//   App.room.send({ sent_by: "Paul", message: "your mom goes to college"})
//   console.log("sent message?")
// }, 10000)
