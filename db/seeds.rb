# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  ["cunderwoodmn@gmail.com", "password", "admin", "true"],
  ["cunderwoodmn@yahoo.com", "password", "Chris U"],
  ["mail@gmail.com", "password", "W. Gretzky"],
  ["Lemieux@hotmail.com", "password", "Le Magnifque"],
  ["Mikita@prodigy.com", "password", "S.Mikita"],
  ["S_Yzerman@AOL.com", "password", "Stevie_Y"],
]

user_list.each do |mail, pass, uname, admin|
  User.create( email: mail, password: pass, username: uname, admin: admin )
end

post_list = [
  ["Sharks’ Marleau might be on the trading block again", "Over the course of his long NHL career, San Jose Sharks winger Patrick Marleau has been mentioned several times in trade rumors. Now in his 18th season with the Sharks, the 36-year-old is once again the subject of speculation.
Sportsnet’s Elliotte Friedman reports Marleau’s name has surfaced in trade talk, though it’s uncertain who’s pushing for the move. Friedman notes Marleau, who’s carrying a $6.66-million annual cap hit through 2016-17, hasn’t been asked by management to waive his no-movement clause.
Local reporters subsequently questioned Marleau, who joked the rumors were starting early this season. He claims he wasn’t approached about waiving his clause and refuses to speculate over any scenario where he would consider that option.
Following the Sharks first-round elimination from the 2014 playoffs, there was some media chatter regarding Marleau’s future in San Jose. It briefly surfaced against last summer after the Sharks missed the 2015 post-season. Observers noted the decline in his performance through 2014-15, wondering if he’d consider moving on to a Stanley Cup contender.
The latest Marleau trade talk is likely tied to the club’s current performance. After a solid start to this season, the Sharks enter this week having won only three of their last 10 games. Marleau netted five points during that stretch.
Some rival clubs could be calling Sharks GM Doug Wilson to inquire about the veteran winger’s availability. Wilson could also be floating Marleau’s name to see if there’s any serious bidders. His cap hit alone, however, could make it difficult to find a willing trade partner this early in the season.
Marleau still has complete control of this situation. If he’s unwilling to waive his movement clause under any circumstances, it won’t matter if management is shopping him or how many teams express interest in his services.
", "s.mikita"],

  ["FLAMES’ POOR START COULD LEAD TO CHANGES", "Approaching mid-November, the Calgary Flames are still struggling to overcome their poor start to this season. With a 5-9-1 record heading into Tuesday’s game against the Florida Panthers, the Flames face the risk of falling completely out of the playoff race before Christmas if they don’t soon pull out of their tailspin.
Trade rumors continue to dog the club, with defensemen Dennis Wideman and Kris Russell prominently featured. The Ottawa Sun’s Bruce Garrioch reports GM Brad Treliving continues to gauge their market value.
Wideman carries a full no-movement clause and an annual cap hit of $5.25 million through 2016-17, making him very difficult to move at this point in the season. Russell, meanwhile, is a pending UFA lacking a movement clause and carrying a more affordable $2.6 cap hit. He could be easier to trade, but there’s speculation Treliving prefers to re-sign him.
Should the Flames remain out of playoff contention leading up to the Feb. 29 trade deadline, Treliving could put some of his UFAs on the trade block. Winger Jiri Hudler is the best of the bunch. He lacks a no-trade clause and is coming off a career-best 76-point season.
While Hudler has 11 points in 15 games thus far, the Calgary Sun’s Eric Francis notes the 31-year-old winger’s been largely invisible of late. Francis suggests he’s not only costing the Flames a playoff berth, but also a chance for a good return if they opt to deal him at the deadline.
The Flames still have plenty of time to reverse their fortunes. Of late, they’ve shown some signs of improvement, winning three of their last five. However, they’ll have to keep looking to within for improvement. It doesn’t appear any help is coming via the trade market.", "Le Magnifique"],

  ["Jordin Tootoo says Alexandre Burrows made remarks about family, calls him ‘classless’", "Vancouver’s Alexandre Burrows has a reputation of being one of the most difficult players in the NHL to play against. On top of his speed and ability to contribute offensively, the Canucks left winger has a penchant for being one of the more pesky players in the league. Jordin Tootoo said Burrows went too far Sunday night, though.
In the first period of Sunday’s game, Burrows and New Jersey’s Tootoo found themselves in the penalty box at the same time. Tootoo, who had taken a holding minor earlier in the period, was still serving his penalty when Burrows and Devils center Travis Zajac got into a shoving match that saw both whistled for roughing minors. Once Burrows was in the box, he could be seen shouting across to Tootoo and Zajac.

While it was unclear what Burrows said, Tootoo was clearly angered by it post-game, telling reporters that Burrows was out of line with his comments.
“Burrows, when we were in the penalty box, he said some personal remarks regarding my family and it’s just unacceptable,” Tootoo told NorthJersey.com’s Tom Gulitti. “The penalty box guys even rolled their eyes like, ‘Is this guy really saying this (expletive)?’ I don’t have any respect for him. I don’t need an apology for him or nothing. It’s just classless. We’re all professionals and everyone fights a fight no one knows about and when you dive into personal issues, it’s just classless. To me, that’s cowardly.”
When reporters asked Tootoo for specifics, the Devils right winger wouldn’t reveal what was said by Burrows, and Gulitti reported Tootoo declined to confirm whether it was related to Tootoo’s heritage or “his family’s battles with alcoholism.” Tootoo told NJ.com’s Rich Chere that the NHL, “shouldn’t tolerate stuff like that.” Burrows did not comment post-game.
According to Rule 75.6 of the NHL rule book: “It is the responsibility of all game officials and all Club officials to send a confidential report to the Commissioner setting out the full details concerning the use of obscene gestures or language by any player, Coach or other team official. The Commissioner shall take such further disciplinary action as he shall deem appropriate.” There has been no indication at this time that officials working Sunday’s game, nor the Devils, have submitted a report to the league.
While a member of the Nashville Predators, Tootoo voluntarily entered the league’s substance abuse program to help him in his battle with alcoholism in December 2010. Tootoo has had to deal with the loss of his brother, Terrence, who committed suicide in 2002 at 22, which Tootoo talked about in his book All the Way: My Life on Ice.
In the second period, Tootoo took the ice to challenge Burrows to a fight, but he said that’s when Derek Dorsett stepped in. Tootoo and Dorsett exchanged blows and both were handed 10-minute misconducts for fighting before the puck had dropped.", "W.Gretzky"],

  ["Stars’ Ales Hemsky bloodies Red Wings’ Jonathan Ericsson with unpenalized high hit", "Dallas Stars right winger Ales Hemsky isn’t known for his physical play, but the 32-year-old threw a dangerous check Sunday night that left Detroit Red Wings blueliner Jonathan Ericsson downed, bloodied and serving a minor penalty for roughing.
Hemsky’s blow to Ericsson came with less than eight minutes remaining in the third frame of Sunday’s tilt. With the puck in the corner and Ericsson attempting to make a play along the boards, Hemsky came in from behind and delivered a high hit that left the Red Wings defenseman bleeding from the right side of his head. Ericsson looked momentarily shaken up following the hit and fell to his knees while appearing to check his helmet and his head. For obvious reasons, Ericsson was furious when he got back to his feet and immediately went after Hemsky. Ericsson dropped his gloves and began to throw punches at Hemsky, which landed Ericsson a minor penalty for roughing.
There’s potential for Hemsky to face supplemental discipline, especially with the aftermath of the hit. From an optics standpoint, seeing Ericsson bloodied on a hit where it appears Hemsky left his feet the slightest bit could land him in some hot water. That the hit was also from behind and came with Ericsson’s numbers facing Hemsky will definitely be cause for the NHL’s Department of Player Safety to at least take a second look at the hit.
The Red Wings killed off the minor to Ericsson, but Dallas would go on to add two empty-net goals. The Stars picked up the 4-1 victory and moved 12-3-0 on the campaign and now have 24 points, tops among the Central Division.", "Steve_Y"],

  ["Even if the Jets won’t admit it – Dustin Byfuglien’s behavior is hurting them", "It was magical seeing towel-waving Jets fans pack the MTS Centre for Winnipeg’s first playoff game in 19 years Monday night. Still, it was a night to forget for the Jets, who blew their third straight third-period lead and lost to the Anaheim Ducks in overtime, falling behind 3-0 in the Pacific Division semifinal.
It was an especially nightmarish evening for Jets defenseman Dustin Byfuglien, who was on the ice for three of Anaheim’s five goals and sucker-punched Corey Perry after Perry scored in the second period, a-la Dale Hunter’s attack on Pierre Turgeon. Perry turned out to be fine, but it didn’t make Byfuglien’s actions any less selfish and dumb. The play was over.
So, over the past 22 days, we’ve seen the following acts from Dustin Byfuglien, arguably the Winnipeg Jets’ best, most important player. What has to be extremely disheartening to the Jets and their fan base is the nature of these acts. We’re not seeing a physical player lose his cool and do something he regrets because he was protecting his teammates. We’re seeing isolated acts designed to serve one person: Dustin Byfuglien. The Miller crosscheck occurred away from the play, with the puck gone. The Perry attack occurred after a goal, when the play was dead. And Tuesday’s media scrum portrayed Byfuglien as angry and antagonistic. It’s ironic that he repeated the mantra of sticking together as a team when he was behaving like anything but a team player.
That said, Jets coach Maurice defended Byfuglien at length afterward.
“Part of it is accurate in that he’s got an awesome sense of humour. You won’t like that. Don’t underestimate the investment the players make.
“Here’s where I’m losing this argument before it even starts, you’re going to find one of the other 650 NHL players who would have handled that nicely and would have been contrite, and everybody would have thought that was good. He’s a very, very competitive man, and he’s particularly unhappy with the result, more than anything else he wants to win. So, he doesn’t like the fact that he has to speak to the media today. And, I’m reading [on] twitter, ‘guy makes so much money he should be happy to stand in front of the media and talk to them,’ and there’s a certain dynamic there between the media and some of the players that you feel there’s an absolute obligation that he has to come out and answer for everything because of the gift and the joy that it is to play professional sports, and the amount of money that a man would make, and at some point, he has the right to come out here and say that.
“I want you to fully appreciate the number of f-bombs he dropped on you in the back of his brain that didn’t come out, out of the sense of civility that he has. He’s a kind and civil and giving man, so the fact that he didn’t tell you how he really felt is maturity.
I’m not winning this argument. I’m going to get killed for that. I don’t care. There have been lots of days where I have wanted to come out and tell you what I’d like to invite all of you to do. It has nothing to do with you personally. It’s just that you’re not in a good mood that day, you don’t want to talk about it, but someone 3,000 miles away has told you you have to do this, and somebody’s getting fined, and we might, but he did do what he had to do, he spoke to the media, and you didn’t like it, and he’ll probably get over that.”
You won’t find sour grapes here, in the sense that the problem doesn’t stem from a hurt or sting that “Big Buff won’t talk to us.” Nor is it about him not appreciating what he does for a living. Not every player will talk to us every time, and that’s not the end of the world at all. The problem is that, by stonewalling reporters’ questions on one of those occasions when he has been made available to them, Byfuglien isn’t honoring the NHL’s or the Winnipeg Jets’ media access policy. The Jets’ policy, which uses the league’s standard language, states:
“True North Sports & Entertainment (TNSE) and the Winnipeg Jets Hockey Club endeavor to provide members of the media with appropriate access and proper resources for the effective performance of their services and to cultivate an environment of mutual co-operation and respect.”
Decide for yourself whether Byfuglien’s interview provided media members with appropriate access and resources for effective performance of their services, and if mutual co-operation and respect were present.
Instead of breaking down what the Winnipeg Jets must do Wednesday night to stay alive against Anaheim, here we are discussing Big Buff’s media behavior and cheap shot on Perry. A few weeks ago, as the Jets strove to make the playoffs, the scuttlebutt was about Byfuglien’s suspension costing him four of his team’s final five games.
The team’s best player has become a distraction because of his immature behavior, and that’s a shame, because he’s a damn dynamic and damn entertaining player. How can we not say he’s hurting the Jets as much as he’s helping them at this point? And how long before his antics alienate him from his teammates? Maurice went on to pound the table about how much he loves Byfuglien. But sooner or later even Big Buff’s staunchest supporters will realize he’s doing things that don’t serve the good of the group.
There’s still time for Byfuglien to right his ship, but he must start acting on and off the ice in a manner that puts his team ahead of himself.
", "Chris U"]
]

post_list.each do |title, body, author|
  post = Post.create( title: title, body: body, author: author )

end

comment_list = [
  ["4", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", "Chris U"],
  ["1", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", "s.mikita"],
  ["3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", "Stevie_Y"],
  ["2", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", "Le Magnifque"],
  ["5", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", "W.Gretzky"],
  ["1", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", "Stevie_y"],
]

comment_list.each do |post, body, author|
  Comment.create( post_id: post, body: body, author: author )
end

tag_list = [
   "hockey",
   "fight",
   "goal",
   "shootout",
   "slash",
   "drama"
]

tag_list.each do |name|
  Tag.create( name: name)
end

posts_tags_list = [
  [1,1],
  [1,2],
  [3,3],
  [2,4],
  [4,5],
  [5,6],
  [2,1],
  [5,1]
]

posts_tags_list.each do |post, tag|
  PostsTags.create(post_id: post, tag_id: tag)
end
