def humanized_time_ago(time_ago_in_minutes)
  if time_ago_in_minutes >= 60
    "#{time_ago_in_minutes / 60} hours ago"
  else
    "#{time_ago_in_minutes} minutes ago"
  end
end

get '/' do
  @finstagram_post_CatanKing201 = {
    username: "CatanKing201",
    avatar_url: "https://m.media-amazon.com/images/I/818oIpXL7tL._AC_SY450_.jpg",
    photo_url: "https://i.cbc.ca/1.3002510.1426819330!/fileImage/httpImage/settlers-of-catan-attempt-to-break-record.jpg",
    humanized_time_ago: humanized_time_ago(20),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "CatanKing201", 
      text: "Thanks for coming guys! It was really fun playing with you all."
    }]
  }

  @finstagram_post_salmon = {
    username: "HappySalmonboardgame",
    avatar_url: "https://mms.businesswire.com/media/20211109005399/en/924798/22/HappySalmon-Release.jpg",
    photo_url: "https://mms.businesswire.com/media/20211109005399/en/924798/22/HappySalmon-Release.jpg",
    humanized_time_ago: humanized_time_ago(20),
    like_count: 0,
    comment_count: 2,
    comments: [{
      username: "HappySalmonboardgame",
      text:"The Best 90 second game you will every play."
    }]
  }

  @finstagram_post_crab = {
    username: "YouGotCrabsgame",
    avatar_url: "https://boardgamereview.co.uk/wp-content/uploads/2020/02/youve-got-crabs-crabs.png",
    photo_url: "https://www.mindgames.ca/wp-content/uploads/2022/04/media-710.nl",
    humanized_time_ago: humanized_time_ago(10),
    like_count: 0,
    comment_count: 2,
    comments: [{
      username:"YouGotCrabsgame",
      text: "A game about secrets."
    }]
  }

  @finstagram_posts = [@finstagram_post_CatanKing201,@finstagram_post_salmon,@finstagram_post_crab].to_s 
erb(:index)
end

  