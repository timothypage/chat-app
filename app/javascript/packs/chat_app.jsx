import React from 'react'
import { render } from 'react-dom'

import Messages from './containers/Messages'
import ChatEntry from './containers/ChatEntry'

document.addEventListener('DOMContentLoaded', () => {
  render(
    <div id="react-chat-app">
      <Messages />
  	  <ChatEntry />
    </div>,
    document.getElementById('chat-app')
  )
})
