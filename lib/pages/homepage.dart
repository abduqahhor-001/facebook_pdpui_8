import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ))
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 120,
            color: Colors.black,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/user_5.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: Colors.white)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What`s on your mind?',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Live",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Photo",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Check in",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                    storyImage: 'assets/images/story_5.jpeg',
                    userImage: 'assets/images/user_5.jpeg',
                    userName: 'User Five'
                ),
                makeStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'User Four'
                ),
                makeStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'User Three'
                ),
                makeStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_2.jpeg',
                    userName: 'User Two'
                ),
                makeStory(
                    storyImage: 'assets/images/story_1.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'User One'
                ),
              ],
            ),
          ),

          makeFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feed1Image: 'assets/images/story_2.jpeg',
              feed2Image: 'assets/images/story_4.jpeg'
          ),
        ],
      ),
    );

  }
  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Colors.white.withOpacity(.5),
                    Colors.white.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white70),)
            ],
          ),
        ),
      ),
    );
  }
  Widget makeFeed({userName, userImage, feedTime, feedText, feed1Image,feed2Image}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.white70),),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.white,),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.white70, height: 1.5, letterSpacing: .7),),
                SizedBox(height: 20,),
              ],
            ),
          ),

          Container(
            height: 240,
            child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feed1Image),
                          fit: BoxFit.cover
                      )
                  ),
                )),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feed2Image),
                          fit: BoxFit.cover
                      )
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        child: makeLove()
                    ),
                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.white70),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.white70),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

}
