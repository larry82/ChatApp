
 #  message.reply(
	# attachment: {
 #      type: 'template',
 #      payload: {
 #        template_type: 'button',
 #        text: 'Human, do you like me?',
 #        buttons: [
 #          { type: 'postback', title: 'Yes', payload: 'HARMLESS' },
 #          { type: 'postback', title: 'No', payload: 'EXTERMINATE' }
 #        ]
 #      }
 #    }
 #  )
# Facebook::Messenger::Thread.set({
#   setting_type: 'greeting',
#   greeting: {
#     text: 'Welcome to your new bot overlord!'
#   },
# }, access_token: ENV['ACCESS_TOKEN'])


# Facebook::Messenger::Thread.set({
#   setting_type: 'call_to_actions',
#   thread_state: 'existing_thread',
#   call_to_actions: [
#     {
#       type: 'postback',
#       title: 'Help',
#       payload: 'DEVELOPER_DEFINED_PAYLOAD_FOR_HELP'
#     },
#     {
#       type: 'postback',
#       title: 'Start a New Order',
#       payload: 'DEVELOPER_DEFINED_PAYLOAD_FOR_START_ORDER'
#     },
#     {
#       type: 'web_url',
#       title: 'View Website',
#       url: 'http://example.com/'
#     }
#   ]
# }, access_token: ENV['ACCESS_TOKEN'])