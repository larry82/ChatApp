# require "facebook/messenger"
# include Facebook::Messenger
# Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])
# Bot.on :message do |message|
#   puts "got your message!"
# end

require "facebook/messenger"
include Facebook::Messenger
Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])
# message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
# message.sender      # => { 'id' => '1008372609250235' }
# message.seq         # => 73
# message.sent_at     # => 2016-04-22 21:30:36 +0200
# message.text        # => 'Hello, bot!'
# message.attachments # => [ { 'type' => 'image', 'payload' => { 'url' => 'https://www.example.com/1.jpg' } } ]
Bot.on :message do |message|



	message.reply(
		text: '安安'
	)
 #  sender_id = message.sender["id"]
	# 建立或找出使用者
	user = User.where(sender_id:  sender_id).first_or_create(sender_id:  sender_id)
 #  text = message.text

 #  # 辨別行為
	# if text.include?('下注')
 #  		action = "下注"
	# else
 #  		action = "登入"
	# end

	# if action == "下注"
	# 	bet = text.scan(/\d/).join('').to_i
	#     if user.points >= bet
	#     	lucky_ball(user.points,bet)
	# 		user.update(points:@new_points)
	# 		message.reply(
	# 		  text: '您下注了'+bet.to_s
	# 		)
	# 		message.reply(
	# 	  	  text: '您中了'+@multiple.to_s+'倍，您目前持有'+user.points.to_s+'點F幣。'
	# 		)
			
	# 	else
	#     	message.reply(
	# 		  text: '您的F幣不足！'
	# 		)
	#   	end
	# end

	# if action == "登入"
	# 	message.reply(
	#   	  text: '全國最大的線上娛樂中心上線啦！'
	# 	)
	# 	unless user.points?
	#   		user.update(points:300)
	#   		message.reply(
	#   		  text: '您已獲得300點F幣，作為您的啟動資金。'
	#     	)
	# 	else
	#   		message.reply(
	#   		  text: '歡迎回來，您目前持有'+user.points.to_s+'點F幣。'
	#     	)
	# 	end
	# end


	# Message.create(
 #      message_id: message.id,
 #      text:  message.text
 #    )
end

private

	def lucky_ball(points,bet)
		case rand(100) + 1
			when  1..60   
				@multiple = 0
			when 60..95   
				@multiple = 2
			when 95..100  
				@multiple = 3
		end

		@new_points = (points-bet)+bet*@multiple
	end

