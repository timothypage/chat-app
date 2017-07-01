import React from 'react'


export default React.createClass({
  sendMessage: function() {
  	let tb = document.getElementById('chat-entry-textbox')
  	let msg = tb.value

  	App.room.send({message: msg})

  	tb.value = ""
  },

  handleKeyPress: function(e) {
    if( e.key === 'Enter' ) {
      this.sendMessage()
    }
  },

  render: function() {
  	return <div className="chat-entry">
  	  <input onKeyPress={this.handleKeyPress} type="text" id="chat-entry-textbox" />
  	  <button onClick={this.sendMessage}>Send</button>
  	</div>
  }
})