import React from 'react'

export default React.createClass({
  render: function() {
  	let msg = this.props.msg
    return <li>
      <div className="username">{msg.sent_by}</div>
      <div className="message-contents">{msg.contents}</div>
    </li>
  }
})
