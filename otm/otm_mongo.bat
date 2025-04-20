// comments database
 use comments

 show dbs

 db.createCollection("comment")

 comments> db.comment.insertOne({
 ...     "videoName": "react video",
 ...     "comment": "how is that video?",
 ...     "replies": ["rep101", "rep102"]
 ...  })
 {
   acknowledged: true,
   insertedId: ObjectId('680539e0f670e364324d7942')
 }


comments> db.comment.find()
[
  {
    _id: ObjectId('680539e0f670e364324d7942'),
    videoName: 'react video',
    comment: 'how is that video?',
    replies: [ 'rep101', 'rep102' ]
  }
]

//create collection replies
db.createCollection("replies")
db.replies.insertMany([
    {
        _id: "rep101",
        "reply": "this video provides good overview"
    },
    {
        _id: "rep102",
        "reply": "Please give some more details on use cases"
    }
])