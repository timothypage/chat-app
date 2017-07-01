import React from 'react'
import Message from './Message'

export default React.createClass({
  getMessages: function() {
    return [
      {id: "aaa", sent_by: "Paul", contents: "Hello Tim"},
      {id: "aab", sent_by: "Tim", contents: "Hello Paul"}
    ]
  },
  render: function() {
    return <ul id="messages">
      {this.getMessages().map(msg => <Message key={msg.id} msg={msg} /> )}
    </ul>
  }
})
