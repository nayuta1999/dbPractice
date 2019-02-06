insert into tweets (
    select
    tweets.uid = null,
    tweets.user, 
    tweets.body, 
    tweets.liked, 
    tweets.retweet, 
    tweets.include_reply,
    tweets.created_at
    from tweets, tweets tweets2, tweets tweets3, tweets tweets4, tweets tweets5, tweets tweets6, tweets tweets7);
