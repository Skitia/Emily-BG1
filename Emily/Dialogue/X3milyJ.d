BEGIN X3milyJ
/* Talk 1. */
IF ~Global("X3milyTalk","GLOBAL",2)~ EmilyT1.1Edit  // This is the new start for Emily 1.1
SAY @583 // ~Might we chat for a bit? I was wondering where you hailed from. You don't sound like you're from where I am.~ [EmilSay]
++ @584 + Emily.T1A // ~I am from Candlekeep.~
++ @585 + Emily.T1B // ~I'm from the great kingdom of Aw, and lived in a floating city full of flying pigs and talking sheep.~
++ @586 + EmilyT1.5 // ~It isn't interesting. What about your own home?~
++ @4 + EmilyT1.4 // ~This isn't the time for conversation, Emily.~ 
END

IF ~~ Emily.T1B 
SAY @587 // ~Oh, you're pulling my leg, aren't you? Ha. It sounds fun, this make believe place, I'll give you that. More than my own childhood home.~
IF ~~ + EmilyT1.5
END 

IF ~~ Emily.T1A 
SAY @0 //~Candlekeep? That place with the monks and books? What was it like growing up there?~
++ @1 + EmilyT1.1 // ~It was quaint, and peaceful. Removed from the troubles of the world, for the most part.~
++ @2 + EmilyT1.2 // ~I'm not sure if you would have liked it. It was safe, but removed from nature, a scholar's dream, a monk's sanctuary.~
++ @3 + EmilyT1.3 // ~Dull. I was bored of the place. I think I'd have wanted to live out more in an open town.~
END

IF ~~ EmilyT1.1
SAY @5 // ~Ooh. That sounds nice, in small batches. I'd think it get boring though just...stuck in a small space, and you couldn't easily return if you wanted to wander. Not very ideal.~
++ @6 + EmilyT1.5 // ~What about you? What was your home like?~
++ @7 + EmilyT1.6 // ~I miss it. I'd return to live my life out there if I could.~
++ @8 + EmilyT1.7 // ~You're right. I wouldn't go back to stay out my days in Candlekeep.~ 
++ @9 + EmilyT1.4 // ~Let's keep moving, we can talk later.~
END

IF ~~ EmilyT1.2
SAY @10 // ~I don't think I would have, not for too log. Just...stuck. And if you leave you can't return? I'd find it a little lonely, and want something more.~
++ @6 + EmilyT1.5 // ~What about you? What was your home like?~
++ @7 + EmilyT1.6 // ~I miss it. I'd return to live my life out there if I could.~
++ @8 + EmilyT1.7 // ~You're right. I wouldn't go back to stay out my days in Candlekeep.~ 
++ @9 + EmilyT1.4 // ~Let's keep moving, we can talk later.~
END

IF ~~ EmilyT1.3 
SAY @11 // ~I can agree with that! I like being around people, a real community.~
++ @6 + EmilyT1.5 // ~What about you? What was your home like?~
++ @12 + EmilyT1.6 // ~I do miss some of the people. Winthrop...Gorion...~
++ @13 + EmilyT1.7 // ~I hope to find something like that out there someday, if I'm not still traveling.~
++ @9 + EmilyT1.4 // ~Let's keep moving, we can talk more later.~
END

IF ~~ EmilyT1.4
SAY @14 // ~Right! Back to marching time. I'll just get back in our formation.~
IF ~~ DO ~ RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)IncrementGlobal("X3milyTalk","GLOBAL",1)~ EXIT
END
 
IF ~~ EmilyT1.5
SAY @15 // ~My home was...quaint. Too quaint. We were never allowed to leave the estate grounds or see much of the outside world. But the estate itself was beautiful. The trees in the garden were gorgeous, and art decorated every room.~
= @16 // ~I like traveling a lot, but I do miss home sometimes. I can't go back right now, but I do miss it.~
++ @17 + EmilyT1.8 // ~Why are you not able to go back home?~
++ @18 + EmilyT1.9 // ~Enjoy the freedom. The independence. Home will always be there, but the adventure of the moment may not.~
++ @19 + EmilyT1.10 // ~I'm sure you'll see your estate someday.~
++ @20 + EmilyT1.4 // ~Let's keep moving, we can talk more later.~
END

IF ~~ EmilyT1.6
SAY @16 // ~I can understand where you come from. My home wasn't perfect, but I still miss it. It's still home, all the same.~
++ @6 + EmilyT1.5 // ~What about you? What was your home like?~
++ @9 + EmilyT1.4 // ~Let's keep moving, we can talk more later.~
END

IF ~~ EmilyT1.7
SAY @21 // ~That's why I like this, seeing the world beyond. I mean...I do miss home. Home is precious, with precious people.~
++ @22 + EmilyT1.5 // ~What was your home like?~
++ @18 + EmilyT1.9 // ~Enjoy the freedom. The independence. Home will always be there, but the adventure of the moment may not.~
++ @19 + EmilyT1.10 // ~I'm sure you'll see your estate someday.~
END

IF ~~ EmilyT1.8
SAY @23 // ~Well, I physically can, but, it's...tense right now. Father is...getting older, and wants to pass his responsibilities on. But only one sibling can be the heir of the estate, and make all the important calls.
= @24 // ~Let's just say neither me or my brother are the most liked options by friends and servants? You either have me, the bastard rumored to be born out of wedlock to the woman he didn't marry, or the selfish entitled bastard, my brother.
++ @25 + EmilyT1.11 // ~And is the rumor true? You don't seem to be from Baldur's gate, but your mother is there.~
++ @26 + EmilyT1.12 // ~Succession should be by blood, shouldn't it?~
++ @27 + EmilyT1.13 // ~Leadership isn't give to those who think they deserve it, but by those who act like leaders.~
++ @28 + EmilyT1.4 // ~It sounds complicated. Come on, let's continue, we've delayed long enough.~
END

IF ~~ EmilyT1.9
SAY @29 // ~Hey, that's a rather wise word. Makes me feel better, even.~
++ @17 + EmilyT1.8 // ~Why are you not able to go back home?~
++ @30 + EmilyT1.4 // ~I'm glad. Come, let's continue.~
END

IF ~~ EmilyT1.10 
SAY @31 // ~I hope so, <CHARNAME>~
IF ~~ DO ~RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)IncrementGlobal("X3milyTalk","GLOBAL",1)~ EXIT
END

IF ~~ EmilyT1.11
SAY @32 // ~Maybe. A little. Okay, it's a yes or no thing, I know. It's true. And if my brother knew for certain I couldn't dispute his case, a scandal would erupt.~
= @33 // ~It doesn't matter though, does it? It's...petty, compared to what we're dealing with, or you're dealing with. Yet at the same time, it bothers me.~
++ @26 + EmilyT1.12 // ~Succession should be by blood, shouldn't it?~
++ @27 + EmilyT1.13 // ~Leadership isn't give to those who think they deserve it, but by those who act like leaders.~
++ @28 + EmilyT1.4 // ~It sounds complicated. Come on, let's continue, we've delayed long enough.~
END

IF ~~ EmilyT1.12 
SAY @34 // ~Honestly? I don't know. I think we can do better than just let someone lead because they have a right to. The world's a mess because of the entitled.~
++ @35 + EmilyT1.10 // ~I can't help you with this, but you will figure it out. Have faith.~
++ @28 + EmilyT1.4 // ~It sounds complicated. Come on, let's continue, we've delayed long enough.~
END

IF ~~ EmilyT1.13
SAY @36 // ~That's what I think, <CHARNAME>. For now, I like this freedom, being away from home for the first time in my life. But I know how things will be if my brother takes control. I'll have to face it eventually.~
++ @35 + EmilyT1.10 // ~I can't help you with this, but you will figure it out. Have faith.~
++ @28 + EmilyT1.4 // ~It sounds complicated. Come on, let's continue, we've delayed long enough.~
END

// Talk #2
// Functions we need: ReputationLT(Player1,13) ReputationGT(Player1,12)

IF ~Global("X3milyTalk","GLOBAL",4)~ EmilyT2
SAY @41 // ~<CHARNAME>, I couldn't help but make an observation.~
+~ReputationGT(Player1,12)~+ @42 + EmilyT2.GR // ~What is it?~
+~ReputationLT(Player1,13)~+ @42 + EmilyT2.LR // ~What is it?~
+~ReputationGT(Player1,12)~+ @43 + EmilyT2.GR // ~What are you noticing?~ 
+~ReputationLT(Player1,13)~+ @43 + EmilyT2.LR // ~What are you noticing?~ 
++ @44 + EmilyT2.1 // ~This isn't a good time.~
END

IF ~~ EmilyT2.GR
SAY @45 // ~I've been noticing how you treat others and try to help everyone. You're quite heroic. What motivates you?~
++ @46 + EmilyT2.GR1 // ~There's enough suffering in the world. A little less weight for everyone is only right.~
++ @47 + EmilyT2.GR2 // ~I've never really thought about it. I just act.~
++ @48 + EmilyT2.GR3 // ~I feel good when others feel good.~
END

IF ~~ EmilyT2.GR1
SAY @49 // ~I do agree. If everyone pitched in for each other...the world would be so different.~
IF ~~ + EmilyT2.2
END

IF ~~ EmilyT2.GR2 
SAY @50 // ~Maybe there is merit to the belief we're built to be charitable, rather than born selfish.~
IF ~~ + EmilyT2.2 
END

IF ~~ EmilyT2.GR3
SAY @51 // ~I can relate to that a lot, <CHARNAME>, to feel happy when you see someone else smile.~
IF ~~ + EmilyT2.2
END

IF ~~ EmilyT2.LR
SAY @52 // ~You're not the most heroic person I've seen, but you're not incapable of aiding others either. I'm trying to understand what motivates you to act. Do you care to help people, or are you only out for yourself?~
++ @46 + EmilyT2.GR1 // ~There's enough suffering in the world. A little less weight for everyone is only right.~
++ @53 + EmilyT2.LR1 // ~I want to help people. But the best way to help them is never so clear, and not everyone deserves a hand.~
++ @47 + EmilyT2.LR2 // ~I've never really thought about it. I just act.~
++ @54 + EmilyT2.LR3 // ~I'm here for me. I can't devote time for every person in need.~
END

IF ~~ EmilyT2.LR1 
SAY @55 // ~I don't agree completely. I think people deserve another chance, at least one chance.~
IF ~~ + EmilyT2.2
END

IF ~~ EmilyT2.LR2
SAY @56 // ~You should consider reflection. You'd learn a lot about yourself if you just thought about it, possibly even avoid doing a bad decision~
IF ~~ + EmilyT2.2
END

IF ~~ EmilyT2.LR3
SAY @57 // ~At least you are honest, even if I disagree.~
IF ~~ + EmilyT2.2
END

IF ~~ EmilyT2.1
SAY @70 // ~Well I have noticed you could take it easy? We're not going to be in danger every second. Hopefully.~
= @71 // ~But, as you say.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

IF ~~ EmilyT2.2
SAY @58 // ~I feel forced. Is that weird to say?~
= @59 // ~I feel something driving me to give the coin to the beggar, defend the innocent, fight for people's liberty and safety against corruption.~
= @60 // ~I can't name what it is, but it makes me happy when I go along with it. And I feel distraught if I don't.~
++ @61 + EmilyT2.2G // ~It is called being a good person.~
++ @62 + EmilyT2.2A // ~I don't really understand what you mean at all by that.~
++ @63 + EmilyT2.2E // ~If you're incapable of acting for yourself, and only for others, you're just a slave.~
++ @64 + EmilyT2.2Z // ~It is just your conscience. Do you wish to always listen to it?~
END

IF ~~ EmilyT2.2G
SAY @65 // ~Is it? Sometimes I think it's deeper then that.~
IF ~~ + EmilyT2.2A
END

IF ~~ EmilyT2.2E
SAY @68 // ~That's...no, I'm not even going to try to see your thinking behind that response. Let's just...continue on.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

IF ~~ EmilyT2.2Z
SAY @69 // ~We should, shouldn't we? But I'm not sure if that is it. Or well, maybe it really is just that.~
IF ~~ + EmilyT2.2A
END

IF ~~ EmilyT2.2A
SAY @66 // ~Maybe I'm just sounding weird. I'm not frustrated by it, I just don't understand it.~
= @67 // ~Sorry. Let's just...continue on.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

// Talk 3

IF ~Global("X3milyTalk","GLOBAL",6)~ EmilyT3
SAY @72 // ~We've been on the road for a while now, <CHARNAME>. Are you beginning to miss the people you left behind?~
++ @73 + EmilyT3.Gorion // ~I miss Gorion, he was like a father to me.~
++ @74 + EmilyT3.Some // ~Sometimes, though I have been absorbed with the task at hand.~
++ @75 + EmilyT3.Father // ~Not anyone in particular. What about you?~
++ @76 + EmilyT3.Refuse // ~It is not something I am comfortable talking about.~
END

IF ~~ EmilyT3.Gorion
SAY @77 // ~What was he like?~
++ @78 + EmilyT3.Gor1 // ~He was a kind man, who always looked out for the best of me.~
++ @79 + EmilyT3.Gor1 // ~He was a man of many secrets. He was a good teacher, but did his best to keep me sheltered.~
++ @80 + EmilyT3.Gor2 // ~He was a bit of a bore, to be honest.~
++ @81 + EmilyT3.Gor3 // ~He was a weakling in the end. It was no wonder he died so soon after leaving the walls.~
END 

IF ~~ EmilyT3.Some
SAY @82 // ~There's so much going on you just don't have time to think about it, hmm?
IF ~~ + EmilyT3.Father
END 

IF ~~ EmilyT3.Refuse
SAY @83 // ~If we keep pain inside, it festers and doesn't heal.~
IF ~~ + EmilyT3.Father
END 

IF ~~ EmilyT3.Gor1 
SAY @84 // ~He sounds like a sweet, protective man.~
IF ~~ + EmilyT3.Father
END 

IF ~~ EmilyT3.Gor2
SAY @85 // ~A bore? I guess people living amongst monks might be uninteresting.~
IF ~~ + EmilyT3.Father
END 

IF ~~ EmilyT3.Gor3
SAY @86 // ~That's awful to say. If he loved you so, <CHARNAME>, why such a dim view? I suppose some relationships are complicated.~
IF ~~ + EmilyT3.Father
END

/* The blocks below use Global Variables to make sure responses are only said once. This helps the player know not to repeat themselves, and is good RP flavor.
So one problem with Tra-ification is making an error. I marked Emily's response here with an already used number slot. 
I'd rather not go and move all the numbers up one because of this mistake, so I'll just insert the next available number.*/
IF ~~EmilyT3.Father
SAY @146 // ~I often think of my father. This trip was his idea, getting away from home for a while.~
= @147 // ~It took a lot of trust from him, for him to tell about the contact he received from my mother, to tell me her name, Alina, a beautiful name.~
= @148 // ~He saw how much a drain all of the talk of heirdom was on me, and my desire to leave the walls for a while, and encouraged it. I love him a lot for that.~
+~Global("X3T3EmilBrother","GLOBAL",0)~+ @87 DO ~IncrementGlobal("X3T3EmilBrother","GLOBAL",1)~ + EmilyT3.Brother // ~And yet your relationship with your brother seems much less warm.~
/* Fath1 won't be copied over to any other block, so we won't use a global variable to check for repeat, while Glad, Mean, and Done are exit blocks. */
++ @88 + EmilyT3.Fath1 // ~You did well by him, Emily.~
++ @90 + EmilyT3.Glad // ~You've gone through a lot, but I'm glad you're with me.~
+~Global("X3T3EmilMother","GLOBAL",0)~+ @91 DO ~IncrementGlobal("X3T3EmilMother","GLOBAL",1)~ + EmilyT3.Mother // ~You've not said much about your mother, only that she exists.~
++ @92 + EmilyT3.Mean // ~It seem like another sappy depiction of a noble brat's upbringing.~
++ @93 + EmilyT3.Done // ~Thank you for telling me. We should continue on.~
END 

IF ~~ EmilyT3.Brother 
SAY @94 // ~ It isn't. It could be the competition, or the hanging of a lie. Maybe it's his greed or selfishness that drives a wedge. I can't say.~
= @95 // ~I've tried to bridge it. Sometimes I feel I get close. Then something happens, he gets angry, we argue, and we're back to the usual.~
/* EmilyT3.Broth1 only appears after Brother, and shouldn't need a variable check, it will show the other remaining options after being picked.*/
++ @96 + EmilyT3.Broth1 // ~It sounds complicated.~ 
++ @90 + EmilyT3.Glad // ~Your familial issues seem difficult, but I'm glad you're with me.~
+~Global("X3T3EmilMother","GLOBAL",0)~+ @91 DO ~IncrementGlobal("X3T3EmilMother","GLOBAL",1)~ + EmilyT3.Mother // ~You've not said much about your mother, only that she exists.~
++ @92 + EmilyT3.Mean // ~Seems like another sappy depiction of a noble brat's upbringing.~
++ @93 + EmilyT3.Done // ~Thank you for telling me. We should continue on.~
END

IF ~~ EmilyT3.Fath1
SAY @97 // ~He was a good parent. Even if I was a bit of a brat sometimes!~
+~Global("X3T3EmilBrother","GLOBAL",0)~+ @87 DO ~IncrementGlobal("X3T3EmilBrother","GLOBAL",1)~ + EmilyT3.Brother // ~And yet your relationship with your brother seems much less warm.~
/* Fath1 won't be copied over to any other block, so we won't use a global variable to check for repeat, while Glad, Mean, and Done are exit blocks. */
++ @90 + EmilyT3.Glad // ~Your familial issues seem difficult, but I'm glad you're with me.~
+~Global("X3T3EmilMother","GLOBAL",0)~+ @91 DO ~IncrementGlobal("X3T3EmilMother","GLOBAL",1)~ + EmilyT3.Mother // ~You've not said much about your mother, only that she exists.~
++ @92 + EmilyT3.Mean // ~It seem like another sappy depiction of a noble brat's upbringing.~
++ @93 + EmilyT3.Done // ~Thank you for telling me. We should continue on.~
END

IF ~~ EmilyT3.Glad
SAY @149 // ~Thank you, <CHARNAME>. That makes me happy to hear.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

IF ~~ EmilyT3.Mother 
SAY @98 // ~Do you mean my biological mother, or Father's wife, the mother who raised me?~
+~Global("X3T3EmilMothRaise","GLOBAL",0)~+ @99 DO ~IncrementGlobal("X3T3EmilMothRaise","GLOBAL",1)~ + EmilyT3.MomRaise // ~Tell me of the woman who raised you.~
+~Global("X3T3EmilMothBio","GLOBAL",0)~+ @100 DO ~IncrementGlobal("X3T3EmilMothBio","GLOBAL",1)~  + EmilyT3.MomBio // ~Tell me of your biological mother.~
END 

IF ~~ EmilyT3.Mean 
SAY @101 // ~Maybe, though a bit of a jerk thing to say, <CHARNAME>...even if you're not all wrong.~
= @102 // ~I won't trouble you with more. We've work of yours to get to, anyway.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

IF ~~ EmilyT3.Done 
SAY @103 // ~Got it. Lead the way, oh fearless leader!~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

IF ~~ EmilyT3.Broth1 
SAY @104 // ~It is. It really is.~
++ @90 + EmilyT3.Glad // ~Your familial issues seem difficult, but I'm glad you're with me.~
+~Global("X3T3EmilMother","GLOBAL",0)~+ @91 DO ~IncrementGlobal("X3T3EmilMother","GLOBAL",1)~ + EmilyT3.Mother // ~You've not said much about your mother, only that she exists.~
++ @92 + EmilyT3.Mean // ~Seems like another sappy depiction of a noble brat's upbringing.~
++ @93 + EmilyT3.Done // ~Thank you for telling me. We should continue on.~
END

IF ~~ EmilyT3.MomRaise 
SAY @105 // ~Elissa, though I always call her mother, is an amazingly strong woman. She commands respect, and no subject or noble, friend or rival, dares speak lowly of her.~
= @106 // ~ She claimed me as her own even though I was another's child, and raised me as her own. The good stuff and the dry stuff. She taught me all of the etiquette I should know. Gods, some of the rules really seem pointless to me.~
= @107 // ~I still don't understand why she didn't demand father hand me over to a monastery, or temple, but bless her heart. 
++ @90 + EmilyT3.Glad // ~Your familial issues seem difficult, but I'm glad you're with me.~
+~Global("X3T3EmilMothBio","GLOBAL",0)~+ @100 DO ~IncrementGlobal("X3T3EmilMothBio","GLOBAL",1)~  + EmilyT3.MomBio // ~Tell me of your biological mother.~
++ @92 + EmilyT3.Mean // ~Seems like another sappy depiction of a noble brat's upbringing.~
++ @93 + EmilyT3.Done // ~Thank you for telling me. We should continue on.~
END 

IF ~~ EmilyT3.MomBio 
SAY @108 // ~I only know what I know from father, really. They met before he was arranged in marriage. She was an elf, with a passion for righting the wrongs, and gave a thirst of adventure to my father.~
= @109 // ~I think it was one reason why he was pushed to marry soon after.~
= @110 // ~Their departure was bitter, but their...meetings had produced me. He was settling, and she still wanted to adventure, and a child alone would be too dangerous. So she asked a big favor of my other mother...and she consented.~
= @111 // ~It was a bit of magical deception, but no one knew, everyone thought that my father's wife conceived before marriage and they rushed it. Some wonder still...hence the issues of heirdom.~
= @112 // ~I wonder if she will even remember me, when I finally find her?~
++ @113 + EmilyT3.Remember // ~She will. I have faith.~
++ @90 + EmilyT3.Glad // ~Your familial issues seem difficult, but I'm glad you're with me.~
+~Global("X3T3EmilMothRaise","GLOBAL",0)~+ @99 DO ~IncrementGlobal("X3T3EmilMothRaise","GLOBAL",1)~ + EmilyT3.MomRaise // ~Tell me of the woman who raised you.~
++ @92 + EmilyT3.Mean // ~Seems like another sappy depiction of a noble brat's upbringing.~
++ @93 + EmilyT3.Done // ~Thank you for telling me. We should continue on.~
END 

IF ~~ EmilyT3.Remember
SAY @114 // ~That's nice of you to say, <CHARNAME>. I hope you're right.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END 

// Talk 4

IF ~Global("X3milyTalk","GLOBAL",8)~ EmilyT4
SAY @115 // ~So, fearless leader. What's your preference, Longbow, or Crossbow?~
++ @116 + EmilyT4.Cross // ~The Crossbow.~
++ @117 + EmilyT4.Long // ~The longbow.~ 
++ @118 + EmilyT4.Sling // ~I prefer a sling.~
++ @119 + EmilyT4.Dart // ~I prefer the dart.~
++ @120 + EmilyT4.Short // ~I prefer the shortbow.~
++ @121 + EmilyT4.Axe // ~I prefer throwing axes.~
++ @122 + EmilyT4.Magic // ~I would rather just use magic.~
++ @123 + EmilyT4.Melee  // ~I'm committed to using melee in battle.~ 
++ @565 + EmilyT4.Archer // ~I'm not sure.~
END 

IF ~~ EmilyT4.Cross 
SAY @124 // ~Easy to use, slow to fire, but they pack a real jolt. A good answer.~
IF ~~  + EmilyT4.Archer
END

IF ~~ EmilyT4.Long 
SAY @125 // ~They take some skill, but mastery makes it deadly in the hands of an expert. A good answer.~
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Sling 
SAY @126 // ~They seem almost basic weapons, but a broken skull is a broken skull. An interesting answer.~
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Dart 
SAY @127 // ~You know, they are fast and quick. But I think their range is rather poor.~ 
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Short 
SAY @128 // ~Ha. Well, it's just as deadly as the long bow, if you're skilled at it, and lighter. A good answer.~
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Axe 
SAY @129 // ~A throwing axe? They're so heavy, and harder to carry ammunition around. I have to disagree with that one.~
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Magic 
SAY @130 // ~Magic, hmm? Still, you never know when you're out of spells and need to attack from afar still.~
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Melee 
SAY @131 // ~Only melee? That's commitment, but not always tactical, don't you think? 
IF ~~ + EmilyT4.Archer 
END

IF ~~ EmilyT4.Archer 
SAY @132 // ~I'm a bit indecisive between the longbow and crossbow. But I'll use whichever you prefer me to use of course.~
= @133 // ~It's just a shame there isn't much quality ammunition to stockpile on for either of them.~
++ @134 + EmilyT4.Fine // ~We're fine with what we have.~
++ @135 + EmilyT4.Store // ~I'll visit a store and see what they got.~
++ @136 + EmilyT4.Basic // ~If you're so skilled, you should be fine with basic ammunition.~
++ @137 + EmilyT4.Funds // We're pinched for funds right now.
++ @138 + EmilyT4.Think // It is. Do you have any ideas?~
END 

IF ~~ EmilyT4.Fine 
SAY @139 // ~I guess we're fine, but we could do better.~
IF ~~ + EmilyT4.Think
END 

IF ~~ EmilyT4.Store 
SAY @140 // ~That's nice, <CHARNAME>. I could also use a pair of new boots...and so many other things that will cause us to run out of gold faster. Good thing you're in charge of the funds.~
IF ~~ + EmilyT4.Think 
END 

IF ~~ EmilyT4.Basic 
SAY @141 // ~Skill won't do anything against magic wards. And plain arrows look plain. Hrm, that sounds rather silly of me.~
IF ~~ + EmilyT4.Think 
END 

IF ~~ EmilyT4.Funds 
SAY @142 // ~I understand, <CHARNAME>. It's good you're in charge of the funds. I'd have us in a bit of trouble with my urge, I just love getting a new pair of boots.~
IF ~~ + EmilyT4.Think 
END 

IF ~~ EmilyT4.Think 
SAY @143 // ~I guess that is what make battle dangerous. Someone else could have better, top notch equipment over us, someone more wicked and malicious.~
= @686 // ~It makes me wonder if training can overcome quality equipment.~
++ @687 + Emily.T4A // ~Equipment is no good if you don't know how to use it properly.~
++ @688 + Emily.T4B  // ~Once they fall, their good equipment is our equipment for the taking.~
++ @689 + Emily.T4C // ~I can see the worry in that. Hopefully we can manage.~
END 

IF ~~ Emily.T4A 
SAY @690 // ~You have a point their, leader. Let's hope all of our enemies are so poorly trained.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END 

IF ~~ Emily.T4B
SAY @691 // ~Isn't that stealing? Sort of? I mean if they're dead? It does make me feel guilty sometimes when we take things from the dead...I know, it's weird! You know what? Forget I said anything.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END 

IF ~~ Emily.T4C
SAY @692 // ~See? I am so glad you agree. Because sometimes I do worry my thoughts are odd. At least we've managed this long, unless the gods are toying with us and just like watching us struggle.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END 

// Talk 5 
/* 2/29/2020 Change: Crafting is removed from Emily, so this talk is instead about Emily's Necklace.
Some of these dialogue names therefore may seem odd.
*/
IF ~Global("X3milyTalk","GLOBAL",10)~ EmilyT5
SAY @150 // ~Did I tell you about the necklace I am wearing?~
++ @151 + EmilyT5.Solution // ~I've seen you use it before. It holds some sort of magic, doesn't it?~ 
++ @152 + EmilyT5.BuyingOut // ~No, you've never mentioned it.~
++ @153 + EmilyT5.NotNow // ~This isn't the time.~
END 

IF ~~ EmilyT5.Solution 
SAY @154 // ~I always just remember wearing it around my neck. I think it was from my birth mother, but my father would never really say. Honestly, I had no idea it could free someone who was frozen by the will of a mage until I accidentally came across two apprentice boys dueling in the courtyard.~
++ @155 + EmilyT5.Good // ~What happened next?~
++ @156 + EmilyT5.Bad // ~What were you doing so near a magic duel?~
++ @157 + EmilyT5.Exactly // ~Let me guess, one of them got paralyzed?~
END 

IF ~~ EmilyT5.BuyingOut 
SAY @158 // ~Really? I thought I might have explained why I press my hand around it a lot. It's not because I'm weird, I swear.~
IF ~~ + EmilyT5.Solution 
END 
/* Unlike other "Let's talk later" chats, this one can be re-visited with P.I.D. */ 
IF ~~ EmilyT5.NotNow
SAY @159 // ~Oh. I understand, then. Another time!~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)~ EXIT
END

IF ~~ EmilyT5.Good 
SAY @158 //  ~I can't remember the boy's name, Richard maybe, he got paralyzed. The other boy found it so funny and started poking him. I went in and told him he should release him, then when I put my hand on Richard, my necklace glowed, and he was freed.~ 
= @159 // ~The boy was so shocked he just started staring at me like I had something funny on my face. He didn't see Richard get so furious he punched him right in the jaw.~
= @160 // ~The house guards had to separate them, and I got chastised for being late to my lesson.~
++ @161 + EmilyT5.Will // ~That was a funny discovery of its power.~
++ @162 + EmilyT5.Not  // ~You got chastised for that? You did nothing wrong.~
++ @163 + EmilyT5.NotArcher // ~That's it? I was expecting a grander story.~ 
END 

IF ~~ EmilyT5.Bad 
SAY @164 // ~Well I was on my way to a lesson from one of the Ladies, but they were half-naked for some reason, and I was noticing their torso was like carved mountain. On a mage, even, can you believe it? So very distracting, that, in an enjoyable way.~
IF ~~ + EmilyT5.Good 
END 

// New! 
IF ~~ EmilyT5.Exactly 
SAY @701 // ~Exactly. You, <CHARNAME>, are a good listener.~ 
IF ~~ + EmilyT5.Good 
END 

IF ~~ EmilyT5.Will 
SAY @165 // ~That's what I thought. When you don't have the ability to figure out how something works, it could manifest itself in an odd moment.~ 
IF ~~ + EmilyT5.Anyway
END 

IF ~~ EmilyT5.Not 
SAY @166 // ~I know! I was even helping. Surely if a lady is being a hero, she can be late. Especially for helping a cute boy. You're only a young girl once.~
IF ~~ + EmilyT5.Anyway
END 

IF ~~ EmilyT5.NotArcher 
SAY @167 // ~Well, I'm not the best story teller, it's just a childhood memory. Childhoods aren't usually so dark and grim. At least you'd hope not.~
IF ~~ + EmilyT5.Anyway
END 

IF ~~ EmilyT5.Anyway 
SAY @685 // ~Anyway, I know the road awaits us. We can swap some more tales another time.~
IF ~~ DO ~RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)IncrementGlobal("X3milyTalk","GLOBAL",1)~ EXIT
END

// New Talk 8 
/* This occurs before old Talk 6, and one day after the end of Emily's quest and 45 RL minutes after talk 5. */
IF ~Global("X3milyBookTalk","GLOBAL",2)~ NewTalk8
SAY @588 // ~Hey, do you have a moment? I wanted to share what I learned so far. It's so exciting!~
+~!Dead("X3Dal")~+ @42 + Emily.8ListenAlive // ~What is it?~
+~!Dead("X3Dal")~+ @589 + Emily.8ListenAlive // ~How can I say no to an excited face like that?~
+~Dead("X3Dal")~+ @42 + Emily.8ListenDead // ~What is it?~
+~Dead("X3Dal")~+ @589 + Emily.8ListenDead // ~How can I say no to an excited face like that?~
++ @590 + Emily.8Sleep // ~Gods no, I just want to get some rest.~
END  

IF ~~ Emily.8Sleep 
SAY @591 // ~Aww! Well. Okay.~
IF ~~ DO ~ SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~
EXIT 
END 

IF ~~ Emily.8ListenAlive  
SAY @592 // ~Adalgisa, that elf we helped, this journal seems to go quite far back. She must have written all the time. It's like seeing a window into someone's life.~
IF ~~ + Emily.8Listen 
END

IF ~~ Emily.8ListenDead 
SAY @593 // ~This journal...it definitely seems to belong to Alina. Her name is on it. But I can't fathom how the elf we met came across it.~ 
IF ~~ + Emily.8Listen 
END

IF ~~ Emily.8Listen
SAY @594 // ~One thing is for certain, she knew my father even before my biological mother did. She speaks of traveling with him, and Adalgisa's description of him is...interesting. Less than impressive, to say the least.~
++ @595 + Emily.Talk8Say // ~What did she say about him?~
++ @596 + Emily.8Expecting // ~Were you expecting every person who met him to think positively of him?~
++ @597 + Emily.8Bored // ~This doesn't sound very interesting.~
END 

IF ~~ Emily.8Expecting 
SAY @645 // ~Oh no no. I do find it amusing, I'm not offended. Though I can't see my father smiling at some of the descriptions she gives him. The slovenly spoiled boar. That'd make his ears red.~
= @646 // ~Her goading seems to have gotten him to break some of the typical rules we have to follow and leave with her on an adventure without telling anyone. How much I want to call my father a hypocrit now, with his lessons and warnings!~
IF ~~ + Emily.8Talk8 
END 

IF ~~ Emily.Talk8Say 
SAY @598 // ~Oh, she complains about his stubbornness, his class, and his by-the-rules attitude. He was reluctant to leave the estate as that wasn't what nobles did, hop onto the road for a thrill. It seems she was able to rope him into an adventure, and he was different forever after.~
= @599 // ~He never spoke of that. I knew he journeyed, but he talked so little of former companions.~ 
IF ~~ + Emily.8Talk8 
END 

IF ~~ Emily.8Talk8
SAY @600 // ~As for Adalgisa, she seemed to take her entire life on the road. Always with a desire to improve everyone's life little by little. It's quite amazing.~
++ @605 + Emily.8Soon // ~Perhaps you'll learn if they met your mother, Alina soon.~
++ @602 + Emily.8Adventure // ~I agree. The only thing better than hearing of the adventuring life is living it.~
++ @597 + Emily.8Bored // ~This doesn't sound very interesting.~
END 

IF ~~ Emily.8Bored 
SAY @601 // ~Uh, right. I'll keep on reading, and let you know if something maybe more interesting to you come along, then.~
IF ~~ DO ~SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~ EXIT 
END 

IF ~~ Emily.8Soon
SAY @603 // ~I hope so. Anyway, I'll get some rest and read some more later. Goodnight, <CHARNAME>.~ 
IF ~~ DO ~SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~ EXIT 
END 

IF ~~ Emily.8Adventure 
SAY @604 // ~Exactly! Anyway, I'll get some rest and read some more later. Goodnight, <CHARNAME>.~ 
IF ~~ DO ~SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~ EXIT 
END 

//New Talk 9 
IF ~Global("X3milyBookTalk","GLOBAL",5)~ NewTalk9
SAY @606 // ~<CHARNAME>, <CHARNAME>!~ 
++ @42 + EmilyTalk9 // ~What is it?~
++ @607 + EmilyTalk9 // ~An excited Emily must mean she has more details to share from the journal?~
++ @608 + EmilyTalkRest9 // ~Again, Emily? I am tired.~
END 

IF ~~ EmilyTalkRest9 
SAY @610 // ~I...okay. Get some rest, then.~
IF ~~ DO ~SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~ EXIT 
END 

IF ~~ EmilyTalk9 
SAY @609 // ~It's about the Planar Hunters we encountered. She wrote extensively about them. I guiltily started reading from the end to see if there was things of more present interest, and they feature extensively in her writing.~
IF ~Dead("X3dal")~ + EmilyTalk9Dead 
IF ~!Dead("X3dal")~ + EmilyTalk9Alive
END 

IF ~~  EmilyTalk9Dead 
SAY @611 // ~They do not sound like good people. There's talk of torture, and experimentation. A philosophy of purity...I can't imagine her lying to herself. We shouldn't have taken her life.~
++ @612 + Opinion9 // ~That is her opinion. That does not make her right.~ 
++ @613 + Information9 // ~I acted with the information I had at that time. We had no time to investigate in depth.~
++ @614 + Question9 // ~Do not question what I did.~
END 

IF ~~ Opinion9
SAY @619 // ~Opinion? Would she lie to herself? She did not expect us to read this.~
= @620 // ~We aided torturers. Murderers. I don't think that makes us more right than her.~
IF ~~ + EmilyTalk9DDone 
END 

IF ~~ Information9
SAY @621 // ~Hastiness isn't the excuse we should be using for a bad decision.
= @622 // ~I don't mean to hold it over your head, it has just...bothered me for some time. Like a needle stabbing at me constantly.~
IF ~~ + EmilyTalk9DDone 
END 

IF ~~ Question9 
SAY @623 // ~Do not? My mind isn't going to stop thinking because you dictate you must not be criticized.~
IF ~~ + EmilyTalk9DDone
END 

IF ~~ EmilyTalk9DDone 
SAY @624 // ~Forget it. I'm going to get some rest. Sleep well.~
IF ~~ DO ~SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~ EXIT 
END 

IF ~~ EmilyTalk9Alive 
SAY @615 // ~I'm glad we helped her. She talks of torture they did, and experimenting in this deranged philosophy of purity. They want to hurt, even kill these poor people just to benefit their own ends and research.~
++ @616 + Organization9 // ~These Planar Hunters sound more extensive than just the few we have met. Did she learn any more about them, or where their organization calls home?~
++ @617 + EmilyTalk9Mom // ~Any information on your mother, Alina?~
++ @618 + Gain9 // ~What do they plan to gain from this?~
END 

IF ~~ Organization9 
SAY @625 // ~She suggests they may be based further south. Tethyr, or Amn perhaps. Plane-touched beings are so rare however, that they spend most of their time on the road tracking individuals down.~
IF ~~ + EmilyTalk9Mom
END 

IF ~~ Gain9 
SAY @626 // ~Power. Magic energy, perhaps even healing. There were hypothesis, notes she read in abandoned warehouses were they once housed a few captured planar beings. All...murdered to see if they could replicate some of their abilities in non-planar beings with blood.~
= @627 // ~Not a single subject survived. It's terrible to read.~
IF ~~ + EmilyTalk9Mom
END 

IF ~~ EmilyTalk9Mom 
SAY @628 // ~There was nothing on mother. I think I skipped too far ahead. I'll read in order now, though. There must be a mention, somewhere.~
++ @629 + EmilyTalk9.1 // ~She wouldn't have given it to you if she didn't know something about her would be in it.~
++ @630 + EmilyTalk9.2 // ~Let me know what you find out.~
++ @631 + EmilyTalk9.Rest // ~I'm going to get some rest now, Emily.~ 
END 

IF ~~ EmilyTalk9.1 
SAY @632 // ~You're right. At least I hope so. I guess I can only keep reading.~
IF ~~ + EmilyTalk9.Rest 
END 

IF ~~ EmilyTalk9.2 
SAY @633 // ~Yes, I'll keep you in the loop. This is fun!~ 
IF ~~ + EmilyTalk9.Rest 
END 

IF ~~ EmilyTalk9.Rest 
SAY @634 // ~Right. Best we get some sleep. Rest well, <CHARNAME>.~  
IF ~~ DO ~SetGlobalTimer("X3milyOneHour","GLOBAL",ONE_DAY)IncrementGlobal("X3milyBookTalk","GLOBAL",1)RestParty()~ EXIT 
END 

// Talk 6 Edit: Now Technically after Talk 7 and 8.
/* Occurs immediately after the quest ends. There is a short timer from end of quest to this talk appearing.
This needs to be split into two chains, one for dead mother and one for alive. */ 
IF ~!Dead("X3Dal")Global("X3milyTalk","GLOBAL",12)~ Emily.6Alive1.1 
SAY @640 // ~I know we are only just stirring, but I need to speak to you.~
++ @641 + Emily.6Alive // ~You seem bothered. Tell me what ails you?~
++ @642 + Emily.6Alive // ~What is it now?~
++ @643 + Emily.6Alive // ~Go ahead, it is all right.~
END 

IF ~~ Emily.6Alive 
SAY @566 // ~This book...it confirms everything I believed. She was...she was her. The mother I have been seeking for so long. And she didn't tell me.~
++ @397 + Emily.6ASorry // ~I am sorry.~
++ @482 + Emily.6ASorry // ~I had a feeling. I should have said something.~
++ @644 + Emily.6ABook // ~So you are just like her, then, in blood.~
+~Global("X3DalReveal","GLOBAL",1)~+ @483 + Emily.6ABook // ~When I used that gem, it revealed you have planar blood as well.~
++ @484 + Emily.6AThere // ~It was cowardly of her not to say it from the start, and to just give you a book!~
END 

IF ~~ Emily.6ASorry  
SAY @485 // ~It's not your fault. You didn't do anything wrong.~
+~Global("X3DalReveal","GLOBAL",1)~+ @483 + Emily.6ABook // ~When I used that gem, it revealed you have planar blood as well.
++ @644 + Emily.6ABook // ~So you are just like her, then, in blood.~
++ @484 + Emily.6AThere // ~She does not seem there for you. She seems dedicated to this mission of hers.~
END 

IF ~~ Emily.6ABook 
SAY @409 // ~I am Aasimar. I understand that much from what the text says. It makes so many things more clear now.~
= @410 // ~This doesn't change anything, does it? I don't want you to think I'm weird.~
++ @412 + Emily.6ASuspect // ~So you never knew?~
++ @413 + Emily.6AYou // ~What now, then?~
++ @414 + Emily.6APower // ~It's nice to know I've a powerful ally.~
++ @420 + Emily.6AEmily // ~This doesn't change anything. You will always be Emily to me.~
END 

IF ~~ Emily.6ASuspect 
SAY @421 // ~I didn't, entirely. I guess you always suspect, golden eyes aren't exactly normal, and but it's so subtle I never thought about it.~
IF ~~ + Emily.6AYou
END 

IF ~~ Emily.6APower 
SAY @422 // ~Power? Knowing doesn't make me more powerful. Just...more understanding of things now.~
IF ~~ + Emily.6AYou 
END 

IF ~~ Emily.6AEmily 
SAY @423 // ~You've no idea how reassuring that is to hear.~ 
IF ~~ + Emily.6AYou 
END 

IF ~~ Emily.6AYou 
SAY @424 // ~I'm going to keep reading this journal, but from here it's your business we should set on out. So, lead on, fearless leader!~
/* Emily's Race from this moment is correctly set as Aasimar.*/ 
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)ChangeRace("X3mily",AASIMAR)~ EXIT 
END 


IF ~~ Emily.6AThere 
SAY @411 // ~I want to believe she gave me this because she wanted me to understand, but did not have time, or...maybe I am just pretending, and you are right.~
++ @397 + Emily.6ASorry // ~I am sorry.~
++ @644 + Emily.6ABook // ~So you are just like her, then, in blood.~
+~Global("X3DalReveal","GLOBAL",1)~+ @483 + Emily.6ABook // ~When I used that gem, it revealed you have planar blood as well.~
END 

//New Emily Talk "6" Start (Technically Talk 8 now) 
IF ~Dead("X3Dal")Global("X3milyTalk","GLOBAL",12)~ Emily.1.1.6Dead
SAY @636 // ~<CHARNAME>? Can we speak? I've been...reading all night. I couldn't even sleep. Oh what have we done?~
++ @637 + Emily.6Dead // ~What's wrong, Emily?~
++ @638 + Emily.6Dead// ~I really don't want to deal with this right after waking.~
++ @639 + Emily.6Dead // ~What did you learn that has you this way?~
END 

IF ~~ Emily.6Dead
SAY @396 // ~This book...it confirms everything I feared. She was...touched, an Aasimar, and so am I. She was my mother. And now she is dead, because we killed her.~
++ @397 + Emily.6DSorry // ~I am sorry.~
++ @415 + Emily.6DForgive // ~I did not know.~
++ @416 + Emily.6DInteresting // ~The book says that? Interesting.~
++ @417 + Emily.6DWhine // ~If you are going to cry, do it somewhere else.~
END 

IF ~~ Emily.6DWhine 
SAY @418 // ~You are heartless.~
IF ~~ + Emily.6DLeave 
END 

IF ~~ Emily.6DInteresting 
SAY @419 // ~Interesting? My mother is *Dead*. Because of your decision. And that is your response?~
IF ~~ + Emily.6DForgive 
END  

IF ~~ Emily.6DSorry 
SAY @398 // ~Sorry. Sorry isn't good enough.~
IF ~~ + Emily.6DForgive 
END 

IF ~~ Emily.6DForgive 
SAY @399 // ~I don't know if I can forgive you for what transpired. And I don't know if I can stay around any longer.~
++ @400 + Emily.6DKnow // ~She was hardly forthright with information. How were we to know?! (If the PC's reputation is less than 17, Emily will leave the party from this line)
++ @401 + Emily.6DRedeem // ~If I could go back and undo it, I could, but I can't. Please stay, and let me redeem myself.~ (If the PC's reputation is less than 17, Emily will leave the party from this line)
++ @402 + Emily.6DGo // ~She was never there for you, and clearly was up to no good. Let her memory go.~ (If the PC's reputation is less than 17, Emily will leave the party from this line)
++ @403 + Emily.6DLeave // ~Then go. You are hardly necessary for us.~ 
END 

IF ~~ Emily.6DKnow 
SAY @404 // ~You should have listened to me! I told you not to. I felt something was off. I...~
IF ~ReputationLT(Player1,17)~ + Emily.6DLeave 
IF ~ReputationGT(Player1,16)~ + Emily.6DStay 
END 

IF ~~ Emily.6DRedeem 
SAY @405 // ~Redeem yourself. That is asking a *lot*.~
IF ~ReputationLT(Player1,17)~ + Emily.6DLeave 
IF ~ReputationGT(Player1,16)~ + Emily.6DStay 
END 

IF ~~ Emily.6DGo 
SAY @406 // ~You say that as if she doesn't even matter as a person, that what you did wasn't wrong.~ 
IF ~ReputationLT(Player1,17)~ + Emily.6DLeave 
IF ~ReputationGT(Player1,16)~ + Emily.6DStay 
END 

IF ~~ Emily.6DStay 
SAY @407 // ~You have been a saint...a good person, always doing the right thing. I'll stay to see this through, I owe you that much...just leave me alone for now.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1) RealSetGlobalTimer("X3milyTimer","GLOBAL",3200)SetGlobal("X3milyPIDOFF","GLOBAL",1)ChangeRace("X3mily",AASIMAR)~ EXIT /*~Emily's P.I.D. Topics will shut down until the 7th talk, where the player can try to re-earn her trust. It doesn't matter if you had something in progress, there will be tension. 
Her seventh talk will still occur, and she will thank the PC for giving her time.
For this to work well, the mother must be set up as suspicious seeming enough a player might decide to kill her, and the purists "good" enough that they might choose them.~ */ 
END 

IF ~~ Emily.6DLeave 
SAY @408 // ~I will go. That will be the best for all of us. Goodbye. I hope to never see you again.~
IF ~~ DO ~LeaveParty()EscapeArea()~ EXIT 
END  

// Final Talk 

IF ~Global("X3milyTalk","GLOBAL",14)~ Emily.T7
SAY @432 // ~<CHARNAME>, I'd like to say something.~
+~Dead("X3Dal")~+ @433 + Emily.7Alone // ~I thought you wished me to leave you alone.~
++ @434 + Emily.7Ready // ~Go ahead, Emily.~
++ @435 + Emily.7Ready // ~Speak.~
++ @436 + Emily.7Time // ~This isn't the time.~
END 

IF  ~~ Emily.7Alone 
SAY @437 // ~I did. And I'm still angry, but that does nothing to help, and we're close to the end of things.~
IF ~~ + Emily.7Ready
END 

IF ~~ Emily.7Time 
SAY @438 // ~There may not be another time. We're close to the end of things, and we don't know the outcome.~
IF ~~ + Emily.7Ready 
END 

IF ~~ Emily.7Ready 
SAY @439 // ~Whatever happens, I've grown a lot since I left home, and I've you to thank. You've been a good friend.~
+~!Dead("X3Dal")Gender(Player1,MALE)ReputationGT(Player1,16)~+ @440 + Emily.7J1 // ~Just a friend?~
+~!Dead("X3Dal")ReputationLT(Player1,17)~+ @440 + Emily.7J2 // ~Just a friend?~
+~Dead("X3Dal")~+ @440 + Emily.7J3 // ~Just a friend?~
++ @441 + Emily.7Continue // You've been a good friend to me, too. 
++ @442 + Emily.7Useful // ~And you've been useful to me.~ 
++ @443 + Emily.7Continue // ~We should move on.~
END 

IF ~~ Emily.7Continue 
SAY @444 // ~I guess we should continue on, hmm?~ 
/* The Set Global of PIDOFF to 0 is for those who persuaded Emily to Stay, they can speak to her again. */
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1)SetGlobal("X3milyPIDOFF","GLOBAL",0)~ EXIT 
END 

IF ~~ Emily.7Useful  
SAY @445 // ~Nothing wrong with being pragmatic about our bond, I suppose.~
IF ~~ + Emily.7Continue 
END 

IF ~~ Emily.7J3
SAY @446 // ~Definitely just. That sort of relationship isn't for me. Especially with you...not after mother fell because of us.~
= @447 // ~Look, if things get difficult as we approach the end of this, talk to me, I'll be your friend, and your ear still. I won't ignore you in your time of need.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1)SetGlobal("X3milyPIDOFF","GLOBAL",0)~ EXIT 
END  

IF ~~ Emily.7J2 
SAY @448 // ~Are you proposing a relationship? I don't think that's a good idea to even think about right now.~
= @449 // ~I'll always be your ear and your friend, but let's just focus on the problems of the now.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1)SetGlobal("X3milyPIDOFF","GLOBAL",0)~ EXIT 
END 

IF ~~ Emily.7J1 
SAY @450 // ~Well...you are a very noble caring man. The idea is tempting, it's just now isn't the time, not with what we're handling now, or at home in Tethyr.~
= @451 // ~Maybe if things were different, but...I'll still be your ear and friend, always.~
IF ~~ DO ~IncrementGlobal("X3milyTalk","GLOBAL",1)SetGlobal("X3milyPIDOFF","GLOBAL",0)~ EXIT 
END 

// New Craft Talk: Chapter 3, is in Beregost 
IF ~Global("X3milyCraftTalk","GLOBAL",1)~ EmilyT.Craft
SAY @702 // ~You know, it's funny how we're back in the same place we met, Beregost. It's not been so long, but...I'm glad to be along, and not stuck in a keep.~
++ @703 + Craft.1 // ~Aye, though we still have a long way to go before our road is finished, I fear.~
++ @704 + Craft.2 // ~You've been a valuable contribution. I think I should be the one glad to have you along.~
++ @705 + Craft.3 // ~We don't have time for idle banter, Emily.~
++ @706 + Craft.4 // ~You've said as much before. I'm glad to know you're enjoying being a pretend commoner.~
END 

IF ~~ Craft.1 
SAY @707 // ~Ha, all the more opportunities to get lost in the wonders of the wilderness, then. But, I did have something I want to mention to you.~
IF ~~ + Craft.5
END 

IF ~~ Craft.2 
SAY @708 // ~I...that's nice to hear, <CHARNAME>. I was always worried after I left home I would be too green to succeed at this. But anyway, I had something I wanted to speak about.~
IF ~~ + Craft.5
END 

IF ~~ Craft.3 
SAY @709 // ~Wait, I didn't mean to just talk, talk, talk. I did have something to mention.~
IF ~~ + Craft.5
END 

IF ~~ Craft.4
SAY @710 // ~Sometimes <CHARNAME>, you're a bit of a donkey's hindquarters. I don't even know why I am about to mention this, but it will help our group I hope.~
IF ~~ + Craft.5
END 

IF ~~ Craft.5 
SAY @711 // ~A little while before I left, I had a meeting with an elf who claimed to be a friend of my blood mother. I admit, his presence helped spark my desire to find her at all.~
= @712 // ~He taught me how to enchant arrows with the weave and be an even better archer than I was. Father didn't trust him, but I was able to secure an audience with him once a tenday. I always asked him questions about my mother, but he would never answer.~
= @713 // ~He seemed only intent to teach me about wielding the arcane and combining it with archery, because it was "What she would have taught me." One lesson around that was doing this with fletching, which I knew a little about.~
++ @714 + Craft.6 // ~What became of the elf after your training?~
++ @715 + Craft.7 // ~You can make arrows, then?~
++ @716 + Craft.7 // ~What are you getting at?~ 
+~!InParty("X3Rec")~+ @717 + Craft.8 //~Can you get to the point of this tale?~ 
+~InParty("X3Rec")~+ @718 + Craft.9 // ~Can you get to the point of this tale?~ 
END 

IF ~~ Craft.6
SAY @719 // ~He had an audience with my father one day, and then never came back. A few days later, I was leaving the keep wtih my father's permission to search for my mother. I think he told him what he knew, and that I should go find her. But I'll never know, really.~
= @720 // ~What he taught me that stuck though, was making arrows and bolts. I've got a bit of supplies from our travels, and I think I could make a few batches, if you'd like. I only have so many materials, and can only do so many at once, but if we're low on quality ammunition, it's another option.~
++ @724 + Craft.10  // ~Thank you Emily. This could be useful.~
++ @725 + Craft.11 // ~How many batches do you think you could make?~
++ @726 + Craft.12 // ~I don't think that will be necessary.~
END 

IF ~~ Craft.7
SAY @721 // ~I can make arrows or bolts with the lessons I was taught. They're not the same as the ones we'll find in stores, and I can only make so many batches before I run out of materials. But it may help us if we run into a situation where we're low on quality ammunition.~
++ @724 + Craft.10  // ~Thank you Emily. This could be useful.~
++ @725 + Craft.11 // ~How many batches do you think you could make?~
++ @726 + Craft.12 // ~I don't think that will be necessary.~
END 

IF ~~ Craft.8 
SAY @722 // ~Oops, I do that sometimes. I do like to tell a good story now and then. Let me get to my point.~
IF ~~ + Craft.7
END 

IF ~~ Craft.9
SAY @723 // ~Oops, I didn't mean to drawl on. Maybe I should ask Recorder for tips on how to tell a story more elegantly. Let me get to my point.~
IF ~~ + Craft.7
END 

IF ~~ Craft.10 
SAY @728 // ~Well, I aim to be useful, and not just with my bow. I know, bad joke.~
IF ~~ + Craft.13 
END 

IF ~~ Craft.11 
SAY @729 // ~I've enough materials to make twenty batches of a dozen bolts or arrows at a time. Once I'm out, I won't be able to make anymore, but it should be nifty in a pinch.~
IF ~~ + Craft.13 
END 

IF ~~ Craft.12 
SAY @730 // ~Well, you never know. Or maybe you do know. The offer is always open.~
IF ~~ + Craft.13 
END 

IF ~~ Craft.13 
SAY @727 // ~I even have a bit of string I could use to modify and improve a bow or crossbow. Just not...any bow or crossbow? We wouldn't want to waste good bow string. Just talk to me when you have a bow or crossbow you want to see if we can modify a bit.~
IF ~~ DO ~SetGlobal("X3milyCraft","GLOBAL",1)SetGlobal("X3milyCraftTalk","GLOBAL",2)AddSpecialAbility("X3EFA")AddSpecialAbility("X3EFB")~ EXIT
END  

// Quest Reminder Upon Entering Baldur's Gate

IF ~Global("X3milyQuestStart", "GLOBAL", 1)~ EmilyT.Reminder
SAY @144 // ~Finally, we're in the city.~
IF ~~ + EmilyT.Reminder2
END

IF ~~ EmilyT.Reminder2
SAY @145 // ~Perhaps a good place to start would be the Blade and Stars Inn. We could ask if anyone's heard of my mother there. Someone's bound to recognize her name.~
IF ~~ DO ~SetGlobal("X3milyQuestStart","GLOBAL",2)AddJournalEntry(@10002,QUEST)~ EXIT
END 

// GENDER CHANGE, Make sure this is below talks. 

IF ~Global("X3milySexChange","GLOBAL",1)~ EGender
SAY @37 //~Oookay. Did you identify this before asking me to wear it?~
= @38 //~Let's get this reversed back. Soon. I can't return home someday as a boy. Although my brother would be more than happy with that embarrassing spectacle.~
IF ~~ DO ~SetGlobal("X3milySexChange","GLOBAL",2)~ EXIT
END

// Reputation: Warning 

IF ~Global("X3milyUnhappy","GLOBAL",1)~ EUnhappy 
SAY @490 // ~<CHARNAME>, this needs to change. We are not acting as we ought to. You are better than this.~
++ @491 + EUnhappy1 // ~I am sorry. I'll be more thoughtful and considerate of my actions.~ 
++ @492 + EUnhappy2 // ~A momentary lapse, nothing more.~
++ @493 + EUnhappy3 // ~There will be more of this, I assure you.~
++ @494 + EUnhappy4 // ~Shut up and step in line.~
END 

IF ~~ EUnhappy1 
SAY @495 // ~Thank you. I will hold you to that promise.~
IF ~~ DO ~SetGlobal("X3milyUnhappy","GLOBAL",2)~ EXIT 
END 

IF ~~ EUnhappy2
SAY @496 // ~I hope that is all it is.~
IF ~~ DO ~SetGlobal("X3milyUnhappy","GLOBAL",2)~ EXIT 
END 

IF ~~ EUnhappy3 
SAY @497 // ~Then soon, there will be none of me. Take my warning seriously.~
IF ~~ DO ~SetGlobal("X3milyUnhappy","GLOBAL",2)~ EXIT 
END 

IF ~~ EUnhappy4 
SAY @498 // ~I'll drop it for now. But more of this and you'll neither see or hear me. Take my warning seriously.~
IF ~~ DO ~SetGlobal("X3milyUnhappy","GLOBAL",2)~ EXIT 
END 



// Reputation: LEAVING 

IF ~Global("X3milyLeaves","GLOBAL",1)~ ELeaves 

SAY @499 // ~That's it, <CHARNAME>. I'll not devote another moment of loyalty to your monstrous actions. Goodbye, I will never want to see you again!~
IF ~~ DO ~LeaveParty()EscapeArea()~ EXIT 
END 

// Mom Dead 

IF ~Global("X3milyMomDead","GLOBAL",1)~ EMomDead
SAY @545 // ~Why...why did we do this? We're just murderers.~
++ @546 DO ~CreateItem("X3EJorn",0,0,0)SetGlobal("X3milyMomDead","GLOBAL",2)~ + EMomDead2 // ~She was a danger to people, she was blooded.~
++ @547 DO ~CreateItem("X3EJorn",0,0,0)SetGlobal("X3milyMomDead","GLOBAL",2)~ + EMomDead4 // ~Because that was what our job was.~
++ @548  DO ~CreateItem("X3EJorn",0,0,0)SetGlobal("X3milyMomDead","GLOBAL",2)~ + EMomDead3 // ~Because I said so.~
END 

IF ~~ EMomDead2 
SAY @549 // ~No. No she wasn't dangerous. And what is so terrible about having celestial blood?~
IF ~~ + EBook1
END 

IF ~~ EMomDead3 
SAY @555 // ~Your order frankly was stupid, leader.~
IF ~~ + EBook1 
END 

IF ~~ EMomDead4 
SAY @556 // ~From those people? Are they even trustable?~
IF ~~ + EBook1 
END 

IF ~~ EBook1
SAY @550 // ~Strange She has this book on her, and it's...written in a language I'm not familiar with, but I can understand it.~
= @551 // ~I'll keep it for myself. Let's just...get out of here.~
++ @552 + EBook2 // ~Tell me more about the book. I'd like to see it.~
+~Global("X3DalReveal","GLOBAL",1)~+ @553 + EGlow // ~Explain why you were glowing. Are you plane-touched, too?~
++ @554 EXIT  // ~Very well, let's go.~
END 

IF ~~ EBook2 
SAY @557 // ~You can look at it if you wish, but...do you really understand these letters?~
++ @558 + EBook3 // ~I don't, how can you read it?~
++ @559 EXIT // ~Never mind, let's just go.~
+~Global("X3DalReveal","GLOBAL",1)~+ @553 + EGlow // ~Explain why you were glowing. Are you plane-touched, too?~
END 

IF ~~ EBook3 
SAY @560 // ~I don't know. I thought this was elven text, but perhaps its something else. WHatever it is, it feels familiar to me.~
+~Global("X3DalReveal","GLOBAL",1)~+ @553 + EGlow // ~Explain why you were glowing. Are you plane-touched, too?~
++ @554 EXIT  // ~Very well, let's go.~
END 

IF ~~ EGlow 
SAY @561 // ~The gem must have been faulty. Or a reflection off of her skin. It could have been anything.~
++  @562 + EGlow2 // ~I'm not convinced.~
++ @563 + EGlow2 // ~I think you are.~
++ @554 EXIT  // ~Very well, let's go.~
END 

IF ~~ EGlow2 
SAY @564 // ~Look, we can discuss it later if you really remain unconvinced, but for right now, let's just go.~
IF ~~ EXIT 
END 

//Mom Alive, book received. 

IF ~Global("X3milyMomAlive","GLOBAL",1)~ EMomAlive
SAY @570 // ~Strange...this book, it's written in a different language.~
++ @571 + EBook4 // ~Can I see it?~
+~Global("X3DalReveal","GLOBAL",1)~+ @583 + EGlow3 // ~Explain why you were glowing. Are you plane-touched, too?~
++ @584 + EBook4 // ~Perhaps it contains power.~ 
END 

IF ~~ EBook4 
SAY @572 // ~Here, take a look at it, what do you think?~
++ @573 + EBook5 // ~It seems incomprehensible to me.~
+~CheckStatGT(Player1,15,INT)~+ @574 + EBook5 // ~It's written in celestial, though I cannot understand a word of it.~
++ @575 + EBook5 // ~A book with a secret message, perhaps?~
END 

IF ~~ EBook5 
SAY @585 // ~And yet...I can understand it as easily as any other normal book.~
= @576 // ~I'll take some time to read it. Maybe it will reveal something.~
++ @577 + EBook6 // ~Let me know what you learn.~
++ @578 + EBook6 // ~As you wish.~
++ @579 + EBook6 // ~So long as you hide none of its contents from me.~
END 

IF ~~ EBook6 
SAY @580 // ~I'll let you know what I learn.~ 
IF ~~ DO ~SetGlobal("X3milyMomAlive","GLOBAL",2)~ EXIT 
END 

IF ~~ EGlow3 
SAY @581 // ~I can't say for sure, though I lean no, it must have been faulty. That's something you would know, not just find out. At least I hope so.~ 
= @635 // ~Odd. The language of this book is...I want to say elven, but that seems different, I know elven, yet whatever this text is, it seems so familiar to me, I can understand the words meaning.~= @582 // ~There must have been a reason. Take a look at this book, what do you think?~
++ @573 + EBook5 // ~It seems incomprehensible to me.~
+~CheckStatGT(Player1,15,INT)~+ @574 + EBook5 // ~It's written in celestial, though I cannot understand a word of it.~
++ @575 + EBook5 // ~A book with a secret message, perhaps?~
END 

// Checks for Expired Timer. 
IF ~GlobalTimerExpired("X3milyCraftTimer","GLOBAL")GlobalGT("X3milyAtWork","GLOBAL",0)~ Emily.PCraftAlert
SAY @696 // ~Hey <CHARNAME>, good news! I just finished with that work you gave me to do.~
IF ~Global("X3milyAtWork","GLOBAL",1)~ + Emily.PCraftSBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",2)~ + Emily.PCraftFBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",3)~ + Emily.PCraftSArrowDone
IF ~Global("X3milyAtWork","GLOBAL",4)~ + Emily.PCraftFArrowDone
IF ~Global("X3milyAtWork","GLOBAL",5)~ + Emily.PCraftEagleDone
IF ~Global("X3milyAtWork","GLOBAL",6)~ + Emily.PCraftHeavyXDone
IF ~Global("X3milyAtWork","GLOBAL",7)~ + Emily.PCraftLightXDone
IF ~Global("X3milyAtWork","GLOBAL",8)~ + Emily.PCraftLongXDone
END

// Interjections 

// Death Knight 
I_C_T2 DEATH2 0 X3milyDeath20 // 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @500 // ~You will not survive, demon. I will make sure of it.~
== DEATH2 @501 // ~I can smell the blood of angels. Your death will be extra satisfying.~
== X3milyJ IF ~!Race("X3mily",Aasimar)~ THEN @502 //~What are you talking about? You must be mad like everything else here.~
== X3milyJ IF ~Race("X3mily",Aasimar)~ THEN @503 // ~I won't be giving you that satisfaction.~  
== DEATH2 IF ~!Race("X3mily",Aasimar)~ THEN @504 // ~Be it ignorance or stupidity, you will not survive to know better.~
END 

// Tracea, note these all must be I_C_T2.  
I_C_T2 TRACEA 1 X3milyTRACEA1 // 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @505 // ~A creature of the abyss. No. I won't allow it to survive here!~
END 

I_C_T2 TRACEA 2 X3milyTRACEA2 // 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @505 // ~A creature of the abyss. No. I won't allow it to survive here!~
END 

I_C_T2 TRACEA 3 X3milyTRACEA3 // 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @505 //~A creature of the abyss. No. I won't allow it to survive here!~
END 

I_C_T2 TRACEA 4 X3milyTRACEA4 // 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @505 // ~A creature of the abyss. No. I won't allow it to survive here!~
END 

I_C_T2 TRACEA 5 X3milyTRACEA5 // 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @505 // ~A creature of the abyss. No. I won't allow it to survive here!~
END 

// TENYA 
I_C_T2 TENYA 5 X3milyTENYA5
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @506 // ~What she is doing is wrong. What they did is also wrong. But, I'd much rather not hurt the girl, even if what she did was wicked.~
END 

//Minsc 
I_C_T Minsc 0 X3milyMinscPJ0
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @507 // ~We should help him rescue his lady. His odds will be all the greater for it and her life should not be left in peril.~
END 

I_C_T Minsc 1 X3milyMinscPJ1
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @507 // ~We should help him rescue his lady. His odds will be all the greater for it and her life should not be left in peril.~
END 

//Edwin 

I_C_T Edwin 3 X3milyEdwinPJ3 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @508 // ~No questions asked? Well, that's a sure sign that you're up to no good.~
END

// Ingot 

I_C_T2 Ingot 1 X3milyIngot1
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @509 // ~Even gnolls have politics. Well, I do hope you are of a mind to help this captive, <CHARNAME>.~
END

// Dorn Pre-joining. 
I_C_T2 Dorn 16 X3milyDornPJ16
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @510 // ~I can't agree with this. A blackguard with us? He's nothing but a killer.~
== Dorn IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @511 // ~Calm yourself. I'm sure my skills will not interfere with your...mewling arrows.~
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @512 // ~Hrmph~.
END

// Larriaz 
I_C_T2 Larria 5 X3milyLarria5
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @513 // ~I think it's too late to help her. This is tragic, but...we should honor her request.~
END 

//Carsa 
I_C_T Carsa 4 X3milyCarsa4 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @514 // ~You are stronger than the voice, miss. Don't give in.~
== Carsa ~No! Run! Run! Run!~
END

//Melica
I_C_T2 Melica 2 X3milyMelica2  
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @515 // ~I'm not the only one hearing it talk, right? I'm pretty sure I didn't overindulge in wine last night.~
END

// Wenric 
I_C_T2 Wenric 1 X3milyWenric1  
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @516 // ~I wouldn't sleep a wink if my neighbors were groaning and rotting flesh, either. Let's help him out.~
END

// Noble #9 
I_C_T Nobl9 0 X3milyNoble90 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @517 // ~Well, talk about selfish, wasteful indulgence of coin.~
== Nobl9 @684
END

// Lena 
 
I_C_T2 Lena 5 X3milyLena5 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @518 // ~We should head there right away. There's no telling how little time he has left.~
END

// Elminister 
I_C_T2 Elmin2 0 X3milyElmin20 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @519 // ~I'm no wizard, but that's a name even I recognize. What is he doing here, I wonder.~
END

// Traitor at Archaelogical place 
I_C_T Gallor 1 X3milyGallor1 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @520 // ~I'm no wizard, but that's a name even I recognize. What is he doing here, I wonder.~
END

I_C_T2 Gallor 6 X3milyGallor6 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @521 // ~I'm no wizard, but that's a name even I recognize. What is he doing here, I wonder.~
END

I_C_T2 Gallor 7 X3milyGallor7
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @521 // ~I'm no wizard, but that's a name even I recognize. What is he doing here, I wonder.~
END

I_C_T HURGAN 7 X3milyHurgan7
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @529
END 

//Innkeeper ask: Flat Interjects 
INTERJECT INNKE3 0 X3milyINNKE30 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID) Global("X3EmiMotherAsk","GLOBAL",0) !Global("X3milyMomDead","GLOBAL",1)!Global("X3milyMomAlive","GLOBAL",1)~ THEN @567 // ~Sir, have you ever had any elven patrons? Perhaps named Alina?~
DO ~SetGlobal("X3EmiMotherAsk","GLOBAL",1)~
== INNKE3 @568
DO ~AddJournalEntry(@10006,QUEST)~
== X3milyJ @569
EXIT

INTERJECT INNKE3 1 X3milyINNKE31 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID) Global("X3EmiMotherAsk","GLOBAL",0) !Global("X3milyMomDead","GLOBAL",1)!Global("X3milyMomAlive","GLOBAL",1)~ THEN @567 // ~Sir, have you ever had any elven patrons? Perhaps named Alina?~
DO ~SetGlobal("X3EmiMotherAsk","GLOBAL",1)~
== INNKE3 @568
DO ~AddJournalEntry(@10006,QUEST)~
== X3milyJ @569
EXIT

INTERJECT INNKE3 2 X3milyINNKE32 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID) Global("X3EmiMotherAsk","GLOBAL",0) !Global("X3milyMomDead","GLOBAL",1)!Global("X3milyMomAlive","GLOBAL",1)~ THEN @567 // ~Sir, have you ever had any elven patrons? Perhaps named Alina?~
DO ~SetGlobal("X3EmiMotherAsk","GLOBAL",1)~
== INNKE3 @568
DO ~AddJournalEntry(@10006,QUEST)~
== X3milyJ @569
EXIT

I_C_T2 KARLAT 1 X3milyKArlat1 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @647 // ~You'll not hurt <PRO_HIMHER>, and you will regret choosing money over appreciation of life.~
END

I_C_T BERRUN 20 X3milyBerrun20 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @648 // ~This would do so much to progress an end to this crisis if Thunderhammer can assist. We should see him right away.~
END

I_C_T RASAAD 1 X3milyRasaad1 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @649 // ~That was really, really impressive!~
== RASAAD @650 // ~I thank you. It is focus and energy that makes it possible.~
END

I_C_T2 DINK 1 X3milyDink1 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @651 // ~I hope he's okay, this is not a place you want to be unarmed.~
END 
 
I_C_T TRANZI 0 X3milyTranzi0 
 == X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @652 // ~You look *very* familiar to me. I still have the same questions as when I first saw you in this inn, mage.~
 == Tranzi @653 // ~I did not entertain noseying then, and I won't now, woman.~
 == X3milyJ @654 // ~Men who have things to hide are rarely up to any good.~
END

I_C_T ENDER 17 X3milyEnder17 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @655 // ~Oh don't worry about that. Tell him what happened to Mulahey.~
END 

I_C_T2 TEVEN 2 X3milyTeven2 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @655 // ~Hrm, that was a *great plan*. Surrender to bandits. Lose gold. No justice. If we don't stand up to people like that, no one will.~
END 

I_C_T SLAVE3 1 X3milySlave31
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @656 // ~What are you doing? This man needs hope, not cruelty. Would you want to be talked that way if your situation was reversed? I think not.~
END

// A rare interject. The PC can undo Emily's bold action, though it will come at the cost of Emily herself.
INTERJECT SLAVLEAD 3 X3milySlaveLead3 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @657 // ~I will not stand by and let this man rot down here. Look, take this gold, sir, and please, be safe. <CHARNAME>, I'll accept any consequences for this, just let me help him.~
END 
++ @658 /*~What are you doing?! I decide what is done with our gold.~*/ EXTERN X3milyJ SlaveLeadExplain
++ @659 /*~Explain yourself, Emily.~*/ EXTERN X3milyJ SlaveLeadExplain
++ @660 /*~Give that gold back, old man, and get out of my party, Emily.~*/ EXTERN X3milyJ SlaveLeadByeEmily


CHAIN X3milyJ SlaveLeadExplain
@664 // ~Did you not hear him? What has happened to them is cruel and wrong. We are able and should help him, and if  you will not, *I* will.~
END
++ @662  EXTERN SLAVELEAD 4 // ~You are right. He can keep the gold.~
++ @661  EXTERN SLAVELEAD 4 // ~Fine.~
++ @663 EXTERN X3milyJ SlaveLeadThreaten // ~No, you will not.~
++ @660 /*~Give that gold back, old man, and get out of my party, Emily.~*/ EXTERN X3milyJ SlaveLeadByeEmily


CHAIN X3milyJ SlaveLeadThreaten 
@665 // ~Then I will leave. I can stand a lot of things. But doing nothing to help these people is not one of them.~
END 
++ @662  EXTERN SLAVELEAD 4 // ~You are right. He can keep the gold.~
++ @661  EXTERN SLAVELEAD 4 // ~Fine. We'll do it your way.~
++ @660 /*~Give that gold back, old man, and get out of my party, Emily.~*/ EXTERN X3milyJ SlaveLeadByeEmily

CHAIN X3milyJ SlaveLeadByeEmily 
@666 // ~Gladly.~
// This should impact Emily only, but adding ActionOverride to the front just in case. 
DO ~ActionOverride("X3mily",LeaveParty())ActionOverride("X3mily",EscapeArea())~
EXIT

I_C_T2 DAVAEO 0 X3milyDavaeo0
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @667 // ~Slaver! You *will* face judgement for what you have done!~
END 

I_C_T OGRMBA 0 X3milyOGRMBA0 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @668 // ~That will be ending soon, beast.~
END 

I_C_T DELTAN 2 X3milyDeltan2 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @669 // ~Stop joking around. Take this seriously. We can trust him.~
END 

I_C_T2 KOVERA 6 X3milyKovera6
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @670 // ~As convenient as this is, we aren't murderers. We should not act on his advice.~
END

I_C_T2 KOVERA 5 X3milyKovera5
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @670 // ~As convenient as this is, we aren't murderers. We should not act on his advice.~
END

I_C_T RIELTA 5 X3milyRielta5 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @671 // ~I know this slimy man deserves death. But not here. Not in this way. Let him go. His time will come.~
END

I_C_T SENIYA 1 X3milySeniya1 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @672 // ~Please, this doesn't bring anyone justice.~
== SENIYA @673 // ~My mind is made!~
END

I_C_T TAMOKO 22 X3milyTamoko22 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @674 // ~We do not want to hurt you. Please, talk sense into her, <CHARNAME>. She does not need to die.~
END 

I_C_T PANGWA 2 X3milyPangwa2 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @675 // ~Just like a tyrant, to cause discord at their own gain.~
== PANGWA @676 // ~I've no plans to stay for his "rule".~
END

I_C_T LIIA 9 X3milyLIIa2 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @677 // ~He should not get away, <CHARNAME>. He remains a threat to many innocents even despite even if he was stopped here.~
END

I_C_T VOLETA 0 X3milyVoleta0 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @678 // ~I wonder, poor soul, be you only a victim or a betrayed lackey?~
== VOLETA @679 // ~Lackey? What do you think this wound obviously says?!~
END

I_C_T WINSKI 3 X3milyWinski3 
== X3milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @680 // ~A monster. And so were you for supporting such senseless violence.~
== WINSKI @681 // ~You speak as if I care for your judgment, girl.~
END

APPEND X3milyJ 

// Non-Required Crossmod: Sees Sirene by the Temple of Lathandar, *Not* in Party 
IF ~Global("X3milySeeSirene","GLOBAL",1)~ EmilySeeSirene1
SAY @522 // ~Is that...that's a tiefling, <CHARNAME>. Be careful. The stories about them are...chilling at best. And I always feel the need to destroy such creatures. It's odd.~
++ @523 + EmilySeesSirene2 // ~She's an innocent, Emily. I'm not going to hurt her, and I'm curious about her.~
++ @524 + EmilySeesSirene3 // ~I'll be careful.~
++ @525 + EmilySeesSirene4// ~I'll do as I please.~
END 

IF ~~ EmilySeesSirene2 
SAY @526 // ~Oh, I didn't say I would actually do it! Just felt the need. Maybe that did sound a bit disturbing. Nevermind me!~
IF ~~ DO ~SetGlobal("X3milySeeSirene","GLOBAL",2)~ EXIT 
END 

IF ~~ EmilySeesSirene3 
SAY @527 // ~That's all I ask.~
IF ~~ DO ~SetGlobal("X3milySeeSirene","GLOBAL",2)~ EXIT 
END 

IF ~~ EmilySeesSirene4 
SAY @528 // ~Oookay, Fearless leader. Whatever you please.~
IF ~~ DO ~SetGlobal("X3milySeeSirene","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3milySeeSirene","GLOBAL",1)~ EmilySeeSirene1
SAY @522 // ~Is that...that's a tiefling, <CHARNAME>. Be careful. The stories about them are...chilling at best. And I always feel the need to destroy such creatures. It's odd.~
++ @523 + EmilySeesSirene2 // ~She's an innocent, Emily. I'm curious who she is.~
++ @524 + EmilySeesSirene3 // ~I'll be careful.~
++ @525 + EmilySeesSirene4// ~I'll do as I please.~
END 

IF ~Global("X3milyUlcaster","GLOBAL",1)~ EmilyUlcaster1
SAY @530 // ~To think, we're so near the ruins of an old school. I guess it's more of a magic than generic school, but it still is intriguing.~
++ @531 + EmilyUlcaster2 // ~I wonder what it was like before this.~
++ @532 + EmilyUlcaster3 // ~I'm only here for the treasure.~
++ @533 + EmilyUlcaster4// ~We're going towards it, so be ready.~
END 

IF ~~ EmilyUlcaster2 
SAY @534 // ~It must have been full of really smart wizards. And arrogant jerks too, knowing how practitioners can be sometimes.~
IF ~~ DO ~SetGlobal("X3milyUlcaster","GLOBAL",2)~ EXIT 
END 

IF ~~ EmilyUlcaster3
SAY @535 // ~Erm, well, if that's what you want us to do. Just be careful.~
IF ~~ DO ~SetGlobal("X3milyUlcaster","GLOBAL",2)~ EXIT 
END 

IF ~~ EmilyUlcaster4
SAY @536 // ~Okey-dokey, fearless leader. After you!~
IF ~~ DO ~SetGlobal("X3milyUlcaster","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3milyCarnival","GLOBAL",1)~ EmilyCarnival1
SAY @537 // ~The people seem so happy here, despite all the trouble. It makes me smile. Are we going to stop to partake ourselves?~
++ @538 + EmilyCarnival2 // ~We might, for a short while.~
++ @539 + EmilyCarnival3 // ~Of course not, don't be childish.~
++ @540 + EmilyCarnival2 // ~I suppose we could.~
END 

IF ~~ EmilyCarnival2 
SAY @541 // ~Oh, I'm excited. I wonder if they have one of those spinning games, or a bard performing.~
IF ~~ DO ~SetGlobal("X3milyCarnival","GLOBAL",2)~ EXIT 
END 

IF ~~ EmilyCarnival3
SAY @542 // ~Childish? Someone hasn't been to a carnival in their life, I see.~
IF ~~ DO ~SetGlobal("X3milyCarnival","GLOBAL",2)~ EXIT 
END 

IF ~Global("X3milyBaldurs","GLOBAL",1)~ EmilyBaldurs1
SAY @543 // ~This place is beautiful. It seems so far removed from the rest of the land.~
= @544 // ~Almost too peaceful. We should be careful, just in case.~
IF ~~ DO ~SetGlobal("X3milyBaldurs","GLOBAL",2)~ EXIT  
END 

// Player Initiated Dialogue 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !Global("X3milyPIDOFF","GLOBAL",1)~ THEN BEGIN Emily.PID 
 SAY @168 // ~Something you need?~
 + ~HPPercentGT(Myself,74)RandomNum(3,1)~ + @225 + Emily.PHowAreYou1 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(3,2)~ + @225 + Emily.PHowAreYou2 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(3,3)~ + @225 + Emily.PHowAreYou3 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @225 + Emily.PHowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ @225 + Emily.PHowAreYouHurt // ~How are you doing?~ //(Under 50%)
 +~RandomNum(3,1)~+ @353 + Emily.PThinkingAbout1a //~What are you thinking about?~
 +~RandomNum(3,2)~+ @353 + Emily.PThinkingAbout1b //~What are you thinking about?~
 +~RandomNum(3,3)~+ @353 + Emily.PThinkingAbout1c  //~What are you thinking about?~
 ++ @359 + Emily.PTalk // ~Let's stop and chat for a bit.~ 
 //+~Global("X3milyCraftTalk","GLOBAL",1)~+ @170 + Emily.PCraftTalk // ~You wanted to tell me something earlier?~
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @172 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @172 + Emily.PBow2 // One of the bows is worthy. This fires only once.
 +~GlobalGT("X3milyAtWork","GLOBAL",0)!GlobalTimerExpired("X3milyCraftTimer","GLOBAL")~+ @357 + Emily.PCraftCheckN // ~Can I check on your progress of your craft?~ // Not Ready. 
 +~GlobalGT("X3milyAtWork","GLOBAL",0)GlobalTimerExpired("X3milyCraftTimer","GLOBAL")~+ @357 + Emily.PCraftCheckY // ~Can I check on your progress of your craft?~ // Ready. 
 ++ @169  EXIT
 END 
 
 IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("X3milyPIDOFF","GLOBAL",1)~ THEN BEGIN Emily.PID2
 SAY @486 // ~(Emily pointedly looks away at you. There is strain of sorrow and anger on her face.)~
 ++ @487 EXIT // ~(Leave her be.)~
 ++ @488 + Emily.PID2No // ~(Try to speak with her.)~
 END 
 
 IF ~~ Emily.PID2No 
 SAY @489 // ~Please. Give me space, <CHARNAME>.  Just leave me be right now.~
 IF ~~ EXIT 
 END 

// This is mostly the same from T5 (Thus same names used, bar P added into it.  
IF ~~ Emily.PCraftTalk 
SAY @173 // ~I just wanted to say that I'd be happy to try my hand at improving a crossbow or bow we find. If we're going to be effecient with our ammunition, we should do our best to aim well.~ 
= @160 // ~And I've figured out how to fletch some arrows for myself so I'm not always using the ones we find or buy. It's a bit slow, and I don't think anyone else could make use of them, but it might help a little. Just tell me to fletch an arrow or talk to me about our launchers sometime, and I'll help as best as I can.~
++ @161 + EmilyT5.PWill // ~I will, Emily, thanks!~
++ @162 + EmilyT5.PNot  // ~I don't know if I will need it, but I'll let you know.~
++ @163 + EmilyT5.PNotArcher // ~I'm not much of an archer.~  
END 

IF ~~ EmilyT5.PWill 
SAY @165 // ~Anytime!~ 
IF ~~ DO ~SetGlobal("X3milyCraft","GLOBAL",1)SetGlobal("X3milyCraftTalk","GLOBAL",2)AddSpecialAbility("X3EFA")AddSpecialAbility("X3EFB")~ EXIT
END

IF ~~ EmilyT5.PNot 
SAY @166 // ~Will do, <CHARNAME>.
IF ~~ DO ~SetGlobal("X3milyCraft","GLOBAL",1)SetGlobal("X3milyCraftTalk","GLOBAL",2)AddSpecialAbility("X3EFA")AddSpecialAbility("X3EFB")~ EXIT
END

IF ~~ EmilyT5.PNotArcher 
SAY @167 // ~You could always give it to another companion! Or not. Offer is open anytime.~
IF ~~ DO ~SetGlobal("X3milyCraft","GLOBAL",1)SetGlobal("X3milyCraftTalk","GLOBAL",2)AddSpecialAbility("X3EFA")AddSpecialAbility("X3EFB")~ EXIT
END


IF ~~ Emily.PHowAreYou1
SAY @226 // ~Just fine, <CHARNAME>, thanks for checking up on me.~ 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou2
SAY @227 // ~Got a bit of blood on me, but, it's not mine.~ 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYou3
SAY @228 // ~How kind of you. All okay here, fearless leader.~ 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYouInjured
SAY @229 // ~I can't guarantee some of this blood isn't mine. But I don't feel like I'm dying, so that's good.~ 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYouHurt
SAY @230 // ~I can carry on boss, but I do need to tend to myself sooner or later.~ 
IF ~~ EXIT  
END

IF ~~ Emily.PThinkingAbout1a
SAY @354 // ~I am thinking about food. I'm getting this feeling of hunger in my stomach. What's for our next meal anyway?~
IF ~~ EXIT  
END

IF ~~ Emily.PThinkingAbout1b
SAY @355 // ~I'm just thinking of some of the poor people I've managed to help since I've set out. So much suffering, everywhere. It never seems to end.~
IF ~~ EXIT  
END

IF ~~ Emily.PThinkingAbout1c
SAY @356 // ~Thinking? Not of much. Although what do you think of this: Archery from a Pegasus's back. Just have to find a Pegasus!~
IF ~~ EXIT  
END


  
IF ~~ Emily.PTalk 
SAY  @173 // ~What would you like to talk about?~ 
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
+~Global("Chapter","GLOBAL",1)~+ @174 + Emily.PC1Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",2)~+ @174 + Emily.PC2Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",3)~+ @174 + Emily.PC3Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",4)~+ @174 + Emily.PC4Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",5)~+ @174 + Emily.PC5Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",6)~+ @174 + Emily.PC6Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",7)~+ @174 + Emily.PC7Advice // ~What do you think I should do now?~
// Companion Thoughts 
+ ~NumInPartyAliveGT(2)~ + @175 + Emily.PCompanionThoughts // ~What do you think of our companions?~ 
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,12)~ + @395 + Em.Me1 // ~What do you think of me?~
+ ~NumInPartyAliveLT(3)ReputationLT(Player1,13)~ + @395 + Em.Me2 // ~What do you think of me?~
// Dialogue From Talk Expansions. These fire once. 
+~GlobalGT("X3milyTalk","GLOBAL",2)Global("X3milyPEstateTopic","GLOBAL",0)~+ @183 DO ~SetGlobal("X3milyPEstateTopic","GLOBAL",1)~  + Emily.PT1Estate  // ~Tell me more about the estate you grew up in.~
+~GlobalGT("X3milyTalk","GLOBAL",4)Global("X3milyPFeudTopic","GLOBAL",0)~+ @184 DO ~SetGlobal("X3milyPFeudTopic","GLOBAL",1)~  + Emily.PT2Feud // ~So tell me more about this heir feud, how is it decided?~
+~GlobalGT("X3milyTalk","GLOBAL",6)Global("X3milyPFatherTopic","GLOBAL",1)~+ @185 DO ~SetGlobal("X3milyPFatherTopic","GLOBAL",1)~  + Emily.PT3Father // ~So, tell me a bit about your father. You seem to think well of him.~
+~GlobalGT("X3milyTalk","GLOBAL",8)Global("X3milyPBrotherTopic","GLOBAL",0)~+ @186 DO ~SetGlobal("X3milyPBrotherTopic","GLOBAL",1)~  + Emily.PT4Brother // ~Your relationship with your brother, is there nothing in it you enjoy?~
+~GlobalGT("X3milyTalk","GLOBAL",10)Global("X3milyPParentsTopic","GLOBAL",0)~+ @187 DO ~SetGlobal("X3milyPParentsTopic","GLOBAL",1)~  + Emily.PT5Parents // ~When will your parents expect you back?~
+~GlobalGT("X3milyTalk","GLOBAL",12)Global("X3milyPMotherTopic","GLOBAL",0)~+ @188 DO ~SetGlobal("X3milyPMotherTopic","GLOBAL",1)~ + Emily.PT6Mother // ~What do you think, now that you've met your birth mother?~
+~GlobalGT("X3milyTalk","GLOBAL",14)Global("X3milyPAasimarTopic","GLOBAL",0)~+ @189 DO ~SetGlobal("X3milyPAasimarTopic","GLOBAL",1)~ + Emily.PT7Aasimar // ~The revelation from your birth mother still seems to bother you a lot.~
+~Global("X3milyPTethyrTopic","GLOBAL",0)~+ @190 DO ~SetGlobal("X3milyPTethyrTopic","GLOBAL",1)~ + Emily.PTethyr // ~What can you tell me about Tethyr, your homeland?~ For Kale, Gullykin. For Vienxay, Evermeet. 
+~RandomNum(3,1)~+ @191 + Emily.PArchery1 // ~Can you give me any tips about archery?~  
+~RandomNum(3,2)~+ @191 + Emily.PArchery2
+~RandomNum(3,3)~+ @191 + Emily.PArchery3
+~Global("X3milyCraft","GLOBAL",1)Global("X3milyFletchTopic","GLOBAL",0)~+ @192 DO ~SetGlobal("X3milyFletchTopic","GLOBAL",1)~ + Emily.PFletching // ~Can you tell me more about Fletching?~  
+~GlobalGT("X3milyTalk","GLOBAL",10)!Dead("X3dal")Global("X3milyPCarryTopic","GLOBAL",0)~+ @171 DO ~SetGlobal("X3milyPCarryTopic","GLOBAL",1)~ + Emily.PCarry /* Can I carry your pack? */ // This appears post quest, mother Alive only. 

END 

IF ~~ Emily.PC1Advice 
SAY @176 // ~I think we should head to Nashkel. That's where the iron crisis is coming from, isn't it?~
IF ~~ EXIT 
END 

IF ~~ Emily.PC2Advice 
SAY @177 // ~We need to get to the mines and get to the bottom of this brittle iron.~
IF ~~ EXIT 
END 

IF ~~ Emily.PC3Advice 
SAY @178 // ~The bandits seem both our clue and a terrible issue for the good people here. They are overdue justice.~
IF ~~ EXIT 
END 

IF ~~ Emily.PC4Advice 
SAY @179
IF ~~ EXIT 
END 

IF ~~ Emily.PC5Advice 
SAY @180
IF ~~ EXIT 
END 

IF ~~ Emily.PC6Advice 
SAY @181
IF ~~ EXIT 
END 

IF ~~ Emily.PC7Advice 
SAY @182
IF ~~ EXIT 
END 

IF ~~ Emily.PCompanionThoughts 
SAY @393 // ~Which one exactly?~ 
// BG1
+~InParty("Ajantis")~+ @260 + Em.Ajantis
+~InParty("Alora")~+ @261 + Em.Alora
+~InParty("Branwen")~+ @262 + Em.Branwen
+~InParty("Coran")~+ @263 + Em.Coran 
+~InParty("Dynaheir")~+ @264 + Em.Dynaheir
+~InParty("Edwin")~+ @265 + Em.Edwin
+~InParty("Eldoth")~+ @266 + Em.Eldoth 
+~InParty("Faldorn")~+ @267 + Em.Faldorn 
+~InParty("Garrick")~+ @268 + Em.Garrick 
+~InParty("Imoen")~+ @269 + Em.Imoen 
+~InParty("Jaheira")~+ @270 + Em.Jaheira 
+~InParty("Kagain")~+ @271 + Em.Kagain
+~InParty("Khalid")~+ @272 + Em.Khalid 
+~InParty("Kivan")~+ @273 + Em.Kivan 
+~InParty("Minsc")~+ @274 + Em.Minsc 
+~InParty("Montaron")~+ @275 + Em.Montaron 
+~InParty("Quayle")~+ @276 + Em.Quayle 
+~InParty("Safana")~+ @277 + Em.Safana 
+~InParty("Sharteel")~+ @278 + Em.Sharteel
+~InParty("Skie")~+ @279 + Em.Skie 
+~InParty("Tiax")~+ @280 + Em.Tiax 
+~InParty("Viconia")~+ @281 + Em.Viconia 
+~InParty("Xan")~+ @282 + Em.Xan 
+~InParty("Xzar")~+ @283 + Em.Xzar 
+~InParty("Yeslick")~+ @284 + Em.Yeslick     
// EE 
+~InParty("Neera")~+ @285 + Em.Neera 
+~InParty("Rasaad")~+ @286 + Em.Rasaad 
+~InParty("Dorn")~+ @287 + Em.Dorn 
+~InParty("Baeloth")~+ @288 + Em.Baeloth 
// CrossMod Choices 
+~InParty("X3Vien")~+ @289 + Em.Vienxay 
+~InParty("X3Kale")~+ @290 + Em.Kale 
+~InParty("X3Helga")~+ @697 + Em.Helga
+~InParty("X3Rec")~+ @698 + Em.Recorder
+~InParty("c0aura")~+ @291 + Em.Aura 
+~!Race("X3mily",Aasimar)InParty("C0Sirene")~+ @292 + Em.Sirene1 
+~Race("X3mily",Aasimar)InParty("C0Sirene")~+ @292 + Em.Sirene2 
+ ~InParty("L#1DVER")~ + @293 + Em.Verrsza
+~InParty("#Ishy")~ + 683 + Em.Ishy
// Myself 
/* There are 4 versions of this:
High Reputation (13), High Approval.
Low Reputation (8), Low Approval. 
Low Reputation (8), High Approval. 
Low Approval, but Above 8 Reputation (Standard)
For now, just script high and low reputation*/
+~ReputationGT(Player1,12)~+ @294 + Em.Me1 
+~ReputationLT(Player1,13)~+ @294 + Em.Me2
++ ~Nevermind~ EXIT  
END 

IF ~~ Em.Ajantis 
SAY @295 // ~He's a good man, <CHARNAME>. If really, really serious.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Alora
SAY @296 // ~She's a cheerful soul. I like her a lot.~
IF ~~ EXIT 
END 

IF ~~ Em.Branwen 
SAY @297 // ~She takes her cause seriously. I'm glad she's free of that statue.~
IF ~~ EXIT 
END 

IF ~~ Em.Coran 
SAY @298 // ~He's a fine archer. A bit of a flirt, though. Not sure what to think of that.~
IF ~~ EXIT 
END 

IF ~~ Em.Dynaheir 
SAY @299 // ~She's an honorable woman. Her accent though is quite odd.~
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @300 // ~I'm not fond of traveling with him. His muttering to himself is a bit odd.~
IF ~~ EXIT 
END 

IF ~~ Em.Eldoth 
SAY @301 // ~I think he's a jerk, to say it as nicely as possible. I could say it in other words, but mother would be displeased.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Faldorn 
SAY @302 // ~I don't agree with her methods or view. I wish she could reach an understanding with other people more.~
IF ~~ EXIT 
END 

IF ~~ Em.Garrick 
SAY @303 // ~ I love his music. He's quite talented.~
IF ~~ EXIT 
END 

IF ~~ Em.Imoen 
SAY @304 // ~Your childhood friend? She's a mischievous vixen. You have a good friendship in her.~
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @305 // ~She's a wise woman. A bit motherly, almost reminds me of step-mother.~
IF ~~ EXIT 
END 

IF ~~ Em.Kagain 
SAY @306 // ~He's obsessed with money. I'm not sure how trustable that makes him.~
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY @307 // ~He's a lot braver than he seems. Treat him well, <CHARNAME>. 
IF ~~ EXIT 
END 

IF ~~ Em.Kivan
SAY @308 // ~I feel sorry for him. I get the feeling he had only spent a little time with his love before she was taken from him.~
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY @309 // ~I think we should take his advice. Hamsters, for everyone! No?~
IF ~~ EXIT 
END 

IF ~~ Em.Montaron 
SAY @310 // ~I don't sleep well with him around.~   
IF ~~ EXIT 
END 

IF ~~ Em.Quayle 
SAY @311 // ~He's a bit obnoxious, don't you think?~
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY @312 // ~I've never liked woman like her. They're usually title or gold cravers that seduce nobility.~
IF ~~ EXIT 
END 

IF ~~ Em.Sharteel 
SAY @313 // ~She has some serious issues.~
IF ~~ EXIT 
END 

IF ~~ Em.Skie 
SAY @314 // ~I want to help guide her. I worry for her out here.~
IF ~~ EXIT 
END 

IF ~~ Em.Tiax 
SAY @315 // ~I don't think he's right in the head.~
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @316 // ~I'm not fond of travelling with drow. But if you know what you are doing...~
IF ~~ EXIT 
END 

IF ~~ Em.Xan 
SAY @317 // ~I'm still trying to figure out if he's spreading dread or sarcasm.~
IF ~~ EXIT 
END 

IF ~~ Em.Xzar 
SAY @318 // ~I think we could do better than a necromancer in our company. But it's your choice, <CHARNAME>.
IF ~~ EXIT 
END 

IF ~~ Em.Yeslick 
SAY @319 // ~To lose your whole clan. It's not easy to go on. He's a strong dwarf, in heart and spirit.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @320 // ~I feel a kinship with her, being half-elves. Though I admit, her wild magic does keep me on edge sometimes!~
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @321 // ~I'd much rather travel without him. He's a terrible person.~
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @322 // ~Monks really have a nice physique. I wasn't staring, though! Just...noticing.~
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @323 // ~He's a powerful mage. But he's a drow. We don't need to sacrifice moral for power.~
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY @324 // ~She's a bit of a screeching haughty snob. But I think it's to hide her pain. To be banished from the elven homeland must be hard.~
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY @325 // ~I don't quite understand him. He loves to be heroic, but thinks it's all pointless. His pursuit of heroism almost seems hedonistic.~
IF ~~ EXIT 
END 

IF ~~ Em.Helga 
SAY @699 // ~I've never met a dwarven women before, I confess I kind of thought they only were male. Are they all so...crazy for battle? The face she makes after a fight is a little disturbing.~
IF ~~ EXIT 
END 

IF ~~ Em.Recorder 
SAY @700 // ~I really like her music. She's so sweet and gentle. I worry someone will take advantage of that.~
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @326 // ~She's so adorable. I didn't think I'd say that of a gnome. And her projects are quite interesting.~
IF ~~ EXIT 
END 

IF ~~ Em.Sirene1 
SAY @327 // ~Her heritage makes me very uneasy. She's a paladin, a good woman, but something just makes me want to see her taken down. A bit weird, isn't it?~ 
IF ~~ EXIT 
END 

IF ~~ Em.Sirene2 
SAY @328 // ~I want to like her. And I do a little. But I just feel that boiling inside to destroy her, because of what I am. But I promise I won't.~
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza 
SAY @329 // ~Normally I'd love to be with a cat, but a Rakasha? This is a bad idea walking.~
IF ~~ EXIT 
END 

IF ~~ Em.Ishy 
SAY @682 // ~She's not the usual brute you'd expect of her race. She's quite likable, even.~
IF ~~ EXIT 
END 

 
IF ~~ Em.Me1 
SAY @330 // ~Your heroism is inspiring, <CHARNAME>. I'm glad I follow you. 
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @331 // ~I'd like to see more out of you, to be honest. There's a lot of potential here to change things for the better.~ 
IF ~~ EXIT 
END 

IF ~~ Emily.PT1Estate
SAY @215  // ~I would love to, <CHARNAME>.~ 
= @216 // ~It's a large plot of land in Tethyr. It's walled and gated, and has a lot of history, enduring the recent civil war.~ 
= @217 // ~My parents have lavished the place with art, not a wall doesn't have some embellishment, and the courtyard is always packed with friends, servants, and visiting snobs.~
= @218 // ~It was always secured. Everyone knew everyone who worked and lived in the estate. It often served host for fancy parties and local celebrations.~
++ @219 + Emily.PT1Uncomfortable  // ~I don't think I would be comfortable in that life.~
++ @220 + Emily.PT1Dream // ~That sounds like a dream upbringing.~
++ @221 + Emily.PT1Insult // ~A life of luxury while everyone else struggles, I see.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PT1Uncomfortable 
SAY @222 // ~I wasn't quite comfortable either. You rarely left that small world of the estate once you were in it. And I wanted more.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PT1Dream 
SAY @223 // ~I know what you mean, but I never felt that way about it. It was as much as home for me as a home would be for anyone, with all its ups and downs.~
IF ~~ + Emily.PT1Uncomfortable 
END 

IF ~~ Emily.PT1Insult 
SAY @224 // ~Don't say that like we did nothing for others. I care very much about people. And I'm here now, with you, doing my part. And when...if...I inherit the estate, I'll use our resources to help those around us too.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END

IF ~~ Emily.PT2Feud
SAY @231 // ~The tradition of many, though not all noble families in Tethyr is usually the eldest receives the appointment, unless the noble patriarch or matriarch decides to pass it on to another child.~
= @232 // ~Even if Father selected myself, any sibling has the right to challenge their decision and throw it to the decision of all of the nobility of the estate.~
= @233 // ~Favors, friendship, promises, scandals, everything can play a part in someone's decision.~
++ @234 + Emily.PT2FChosen // ~Do you think you'll be chosen?~
++ @235 + PT2FChallenge // ~And you expect this to be challenged?~
++ @236 + PT2FBastard // ~How does being a bastard play into this?~
++ @237 + PT2FConfusing // ~All of your politics is a bit confusing.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END

IF ~~ Emily.PT2FChosen
SAY @238 // ~Mother...step-mother wants me to. Surprising, isn't it? I won't say no to such responsibility, I would love the opportunity.  
= @239 // ~But it also might be easier for the family for father to go by blood, even if I'm deeply concerned for my brother's thought process on things.~
IF ~~ + Emily.PT2Faraway 
END 

IF ~~ PT2FChallenge
SAY @241 // ~Yes. There is no way I would let my brother be handled such responsibility, and no way he'd let me either.~
= @242 // ~It might seem petty, but the estate has such influence on the land about.~
IF ~~ + Emily.PT2Faraway
END 

IF ~~ PT2FBastard 
SAY @243 // ~Well, if it got out that I wasn't step-mother's actual child? It'd defintely sway the challenge to my brother's favor if it got to that point.~
= @244 // ~Being someone else's child isn't exactly all smiles and happiness to everyone else. It will sting.~
IF ~~ +Emily.PT2Faraway
END 

IF ~~ PT2FConfusing
SAY @245 // ~I bet it is!~
IF ~~ +Emily.PT2Faraway
END

IF ~~ Emily.PT2Faraway
SAY @240 // ~But that's a far away problem. I'll deal with it when it's time.~
++ @246 + PT2FHelp // ~Let me know if there's anyway I can help resolve this.~
++ @247 + PT2FFirst // ~Just don't let this problem get in the way of our work.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT2FHelp 
SAY @248 // ~That's kind, but there's nothing to do for the moment but carry on with your own problems, <CHARNAME>.~
IF ~~ EXIT 
END 

IF ~~ PT2FFirst 
SAY @249 // ~Don't worry. This is not going to come between anything we are doing. Your problems first.~ 
IF ~~ EXIT 
END 

IF ~~ Emily.PT3Father
SAY @250 // ~I do. The war in Tethyr was a big wake up call to the rest of the land. There were many nobles who lost their lives, but my father instead of retreating or hiding away in fear helped to restore peace.
= @251 // ~Those who served him tell me he found success because of how respectful he was to those who served him, firmly holding their trust as seeds of chaos tried to sever that.~
= @252 // ~Now that peace and stability finally seem on the horizon, I'm guessing he sees now as the perfect time to pass things on, or soon, at least.~
++ @253 + PT3Archer // ~So he was a warrior of sorts. Perhaps an archer, even?~
++ @254 + PT3Interesting // ~That's very interesting, to live through such tumultuous times.~
++ @255 + PT3Continue // ~Why doesn't he continue? He seems to do well enough.~
++ @256 + PT3Daughter // ~You sound like a father's girl, how you speak of him.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT3Archer 
SAY @257 // ~You are clever, <CHARNAME>. Yes, he was. He learned from my birth mother, he told me. He's quite good with a crossbow.~
++ @254 + PT3Interesting // ~That's very interesting, to live through such tumultuous times.~
++ @255 + PT3Continue // ~Why doesn't he continue? He seems to do well enough.~
++ @256 + PT3Daughter // ~You sound like a father's girl, how you speak of him.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ PT3Continue 
SAY @258 // ~I don't know. Good men do deserve rest, I suppose.~  
IF ~~ + PT3Interesting 
END 

IF ~~ PT3Daughter 
SAY @259 // ~I wouldn't say that! We have our differences, you know. Well, maybe a little.~
IF ~~ + PT3Interesting 
END 

IF ~~ PT3Interesting 
SAY @257 // ~Had I been a different noble man's daughter, I can't say I'd be here right now. He'll always have my love and appreciation.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PT4Brother
SAY @332 // ~We had our moments when we were younger. We were playing dolls together once. He saw me playing by myself and came over with my pretend. He was like that a lot before, with anyone, even the servants.~
= @333 // ~But then we grew up. There was a hunting accident that saw him nearly killed when he was hunting boar with some servants, and he wasn't quite the same afterwards.~
= @334 // ~A Brush with your own mortality can change everyone. He started focusing more on himself, being more careful, and he never hunted with the commoners again.~
++ @335 + Emily.PT4Bad // ~He doesn't really seem that bad.~
++ @336 + Emily.PT4Hard // ~Maybe you are too hard on him.~
++ @337 + Emily.PT4Change // ~I'm sorry for what happened to your brother.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PT4Change 
SAY @338 // ~It's not your fault.~
IF ~~ + Emily.PT4Difficult
END 

IF ~~ Emily.PT4Hard 
SAY @339 // ~Am I? You'd think with just that. But nothing gives anyone a right to treat others coldly or callously. Not over an accident, nor over leadership.~
IF ~~ + Emily.PT4Difficult
END 

IF ~~ Emily.PT4Bad 
SAY @340 // ~Not in the past. But in the present, I've seen him whip servants for making mistakes. That is unheard of in our family, but he insists it treats respect.~
IF ~~ + Emily.PT4Difficult
END 

IF ~~ Emily.PT4Difficult 
SAY @341 // ~This is...difficult for me to talk about. I'd rather talk about something else.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PT5Parents 
SAY @207 // ~I do not have to return until Father wills it is time for the heir to be declared. Silly isn't it, so much pomp for a bit of land and lordship over it? You must think noble affairs odd.~
++ @208 + Emily.PT5PSoon // ~A little.~
++ @209 + Emily.PT5PSoon // ~And what if it is during our adventure?~
++ @210 + Emily.PT5PGlad // ~I'm glad I was not born into it.~
++ @211 + Emily.PT5PNoList // ~I'd rather not listen to this dull upper class troubles.~ 
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
END 

IF ~~ Emily.PT5PSoon
SAY @212 // ~Well, don't worry about it being soon, at least. Father may delay the retiring of his lording duties, and this process takes time. If it does happen suddenly, we'll cross that bridge when we get to it.~
++ @210 + Emily.PT5PGlad // ~I'm glad I was not born into it.~
++ @211 + Emily.PT5PNoList // ~I'd rather not listen to this dull upper class troubles.~ 
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
END 

IF ~~ Emily.PT5PGlad 
SAY @213 // ~You should. Way too much etiquette and decorum for me. I just want to get out there and make things better, not worry about how to walk properly up stairs, or address Mr. Snob's title.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PT5PNoList 
SAY @214 // ~Well...you asked about it.~
IF ~~ EXIT 
END 


IF ~~ Emily.PT6Mother
SAY @425 // ~ I...~
IF ~Dead("X3Dal")~ + Emily.PT6Mother1 
IF ~!Dead("X3Dal")~ + Emily.PT6Mother2 
END

IF ~~ Emily.PT6Mother1 
SAY @426 // ~I'd rather not recall what happened to her. Please, let's just move on.~
IF ~~ EXIT 
END 

IF ~~ Emily.PT6Mother2 
SAY @427 // ~I wish we had more time together. I hope we cross paths again. I've more questions than answers.~
++ @428 + Emily.PT6Believe // ~I believe you will.~ 
++ @429 + Emily.PT6Think // ~I don't think you will. She didn't seem interested in parenting.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT6Believe 
SAY @430 // ~Thanks for the moral support, fearless leader. Makes me smile.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT6Think 
SAY @431 // ~Maybe...maybe you are right.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Aasimar
SAY @452 // ~It does. Why didn't anyone say something to me? My family is so secretive. What is so dangerous of knowing?~
IF ~Dead("X3Dal")~ + Emily.PT7Dead 
IF ~!Dead("X3Dal")~ + Emily.PT7Alive  
END 

IF ~~ Emily.PT7Dead 
SAY @453 // ~Now, I'll never get the chance to ask her, either.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Alive 
SAY @454 // ~If I ever have children, I want to be more informative with them. We shouldn't fear sharing with our own blood.~
++ @455 + Emily.PT7Hunt // ~People were hunting her. If you knew more, perhaps they would have hunted you.~
++ @456 + Emily.PT7Agree // ~I agree. More harm than good comes from withholding information.~
++ @457 + Emily.PT7Children // ~You want to have children?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Hunt 
SAY @458 // ~I can see your point. But we are safer armed with information, more vulnerable without.~
++ @457 + Emily.PT7Children // ~You want to have children?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Agree 
SAY @459 // ~Exactly. If you know your enemy, you can be prepared for them.~ 
++ @457 + Emily.PT7Children // ~You want to have children?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Children 
SAY @460 // ~Well. One day. It is expected of me, and I would love the opportunity.~
= @461 // ~But that is far away, too far away to think about.~
++ @462 + Emily.PT7Child1 // ~I would like the opportunity someday as well.~ 
++ @481 + Emily.PT7Child2 // ~Children seem more trouble than enjoyment.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Child1
SAY @463 // ~I bet you will. You'd be good at it, parenting. But I've a feeling that's far away for you, too.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PT7Child2
SAY @464 // ~Oh, every thing we set out is a bit of trouble at the start. But hard work cultivates into something beautiful, and that is watching them grow.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END  

IF ~~ Emily.PTethyr
SAY @342 // ~Well, Tethyr just got out of a really bad war. But, it's much better now! A queen stands on the throne and peace looks like it may finally come.~
= @343 // ~Well, relatively, anyway.~
++ @344 + Emily.PTWar // ~What started the war?~
++ @345 + Emily.PTHere // ~Is Tethyr much like here?~
++ @346 + Emily.PTQueen // ~Tell me of the queen, how did she come to power?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PTWar 
SAY @347 // ~Oh, someone decided it'd be a great idea to kill the entire royal family. Great way to cause chaos and burning pants.~
= @348 // ~It was a terrible event. Because of someone's selfish ambition, so many innocents were slaughtered in the chaos.~
= @349 // ~There are probably tomes written about it that say more. I was but a baby when it started.~
++ @345 + Emily.PTHere // ~Is Tethyr much like here?~
++ @346 + Emily.PTQueen // ~Tell me of the queen, how did she come to power?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PTHere 
SAY @350 // ~Oh, not at all. Mountains, large forests. Lots of halflings, too, around the purple Marshes. And wild elves in the forest. But in other ways of your typical personalities in cities, I guess so!~
++ @346 + Emily.PTQueen // ~Tell me of the queen, how did she come to power?~
++ @344 + Emily.PTWar // ~What started the war?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PTQueen
SAY @351 // She did it properly. She gathered the support of the people and restored order with her inspiring example. She was a fine adventurer, herself.~
= @352 // ~I would be happy to be half the woman she is.~
++ @344 + Emily.PTWar // ~What started the war?~
++ @345 + Emily.PTHere // ~Is Tethyr much like here?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletching 
SAY @195 //~Fletching is a really critical part of archery. The shaft is simple. I mean, you don't a heavy shaft that's flimsy, and you probably want a sharp, piercing head on it.~
= @196 //~But if the feather is chosen or attached poorly, it can affect its aerodynamics. Most use chicken feathers. Nothing a farmer would miss!~
++ @197 + Emily.PFletchR1 // ~How did you learn?~ 
++ @199 + Emily.PFletchR2 // ~It sounds complicated.~
++ @200 + Emily.PFletchR3 // ~How is stronger ammunition achieved?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @172 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @172 + Emily.PBow2 // One of the bows is worthy. This fires only once.

++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletchR1 
SAY @204 // ~I watched some of the laborers in the estate. I just might have sneaked some materials in a new dress to practice working with once or twice, too.~
++ @199 + Emily.PFletchR2 // ~It sounds complicated.~
++ @200 + Emily.PFletchR3 // ~How is stronger ammunition achieved?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
//+~GlobalLT("X3milyAtWork","GLOBAL",1)~+ @203 + Emily.PCraft // ~Speaking of, can you make me something?~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletchR2 
SAY @205 // ~At first. Repetition gives you mastery, and soon enough it's as simple as any other task.~
++ @197 + Emily.PFletchR1 // ~How did you learn?~ 
++ @200 + Emily.PFletchR3 // ~How is stronger ammunition achieved?~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletchR3 
SAY @206 // ~Enchanting, mostly. It's not easy, but it's what I do on my own arrows.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @197 + Emily.PFletchR1 // ~How did you learn?~ 
++ @199 + Emily.PFletchR2 // ~It sounds complicated.~
++ @201 EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PArchery1
SAY @693 // ~A tip? Don't miss. Hey, I'm serious now. Sometimes that one shot counts.~
IF ~~ EXIT 
END

IF ~~ Emily.PArchery2
SAY @694 // ~Quality equipment can make an enormous difference. Expensive arrows will aid you when it counts.~
IF ~~ EXIT 
END

IF ~~ Emily.PArchery3
SAY @695 // ~Never stand in front of your front line. That's silly. I saw a goblin do that once. Didn't live long.~
IF ~~ EXIT 
END

IF ~~ Emily.PCarry 
SAY @465 // ~You want to carry my pack? Whatever for?~
+~Gender(Player1,Male)~+ @466 + Emily.PCLady1 // ~I thought it would be proper to do for a beautiful lady.~
+~Gender(Player1,Female)~+ @466 + Emily.PCLady2 // ~I thought it would be proper to do for a beautiful lady.~
++ @467 + Emily.PCTired // ~You seem a bit tired from lugging so much around.~
+~CheckStatGT(Player1,15,STR)~+ @468 + Emily.PCStrong1 // ~I just want to show you how strong I am.~
+~CheckStatLT(Player1,16,STR)~+ @468 + Emily.PCStrong2 // ~I just want to show you how strong I am.~
END 

IF ~~ Emily.PCLady1 
SAY @469 // ~A Chivalrous flirt? Well, if you really want to, knightly one.~
IF ~~ + Emily.PCMany 
END 

IF ~~ Emily.PCLady2 
SAY @474 // ~Well, I'm not sure if ladies of the court did such things for other ladies.~
IF ~~ + Emily.PCMany 
END

IF ~~ Emily.PCTired 
SAY @475 // ~Oh, that's kind of you.~
IF ~~ + Emily.PCMany 
END 

IF ~~ Emily.PCStrong1 
SAY @476 // ~Well, your physique is impressive. Not that I'm staring or anything!~
IF ~~ + Emily.PCMany 
END 

IF ~~ Emily.PCStrong2 
SAY @477 // ~If...you're sure.~
IF ~~ + Emily.PCMany 
END 

IF ~~ Emily.PCMany
SAY @470 // ~I guess there weren't many noble women in Candlekeep to treat like this, for you.~
++ @471 + Emily.PCFlatter  // ~Rarely, but they weren't like you.~
++ @472 + Emily.PCSnobs // ~Very few, and all snobs.~
++ @473 + Emily.PCNice // ~No, but they were always pleasant to meet.~
END 

IF ~~ Emily.PCFlatter 
SAY @478 // ~Such a flatter. You're adorable. Thanks for taking my bag for a bit.~
IF ~~ EXIT 
END 

IF ~~ Emily.PCSnobs 
SAY @479 // ~Well, a lot do get that way. I hope I'm not like that. And, thanks for taking my bag for a bit, I appreciate it.~
IF ~~ EXIT 
END 

IF ~~ Emily.PCNice 
SAY @480 // ~I'm glad you met some pleasant members of nobility. And, thanks for taking my bag for a bit, I appreciate it.~
IF ~~ EXIT 
END 



IF ~~ Emily.PCraft 
SAY @194 // ~I can do that. Should just take me a day or so to prep some ammunition.~ 
++ @378 /*~I'd like some bolts.~*/ + Emily.PBolts 
++ @358 + Emily.PArrows  // ~I'd like some arrows.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @381 + Emily.PBow1  // ~Actually, could you enhance a bow?~ No bow is worthy. Fires only if bow hasn't been enhanced. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @381 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ @363 EXIT // ~Nothing for the moment.~
END  

IF ~~ Emily.PBolts 
SAY @193 // ~Do you want standard bolts, or fire-tipped ones?~
++ @361 + Emily.PSBolts // ~Some standard ammunition.~
+~GlobalLT("X3milyFireMax","GLOBAL",12)~+ @379 + Emily.PFBolts // ~Some fire bolts.~
+~GlobalGT("X3milyFireMax","GLOBAL",11)~+ @379 + Emily.PFArrowsOut // ~Some fire bolts.~
++ @363 EXIT // ~Nothing for the moment.~
END 

IF ~~ Emily.PArrows 
SAY @360 // ~Arrows, hmm? Standard, or some fire-tipped ones?~
++ @361 + Emily.PSArrows // ~Some standard ammunition.~
+~GlobalLT("X3milyFireMax","GLOBAL",12)~+ @362 + Emily.PFArrows // ~Some fire arrows.~
+~GlobalGT("X3milyFireMax","GLOBAL",11)~+ @362 + Emily.PFArrowsOut // ~Some fire arrows.~
++ @363 EXIT // ~Nothing for the moment.~
END 

IF ~~ Emily.PSArrows 
SAY @364 // ~Standard then, are you sure?~
// The very basic crafting system is largely inspired by Aura. You'll see similar lines of code here!
++ @365 + Emily.PSArrowsYes // ~Yes, please proceed with them.~
++ @366 + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PSBolts 
SAY @364 // ~Standard then, are you sure?~
++ @365 + Emily.PSBoltsYes // ~Yes, please proceed with them.~
++ @366 + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PSArrowsYes
SAY @367 // ~No problem. Check back with me in a day.~
IF ~~ DO ~ SetGlobalTimer("X3milyCraftTimer","GLOBAL",ONE_DAY)SetGlobal("X3milyAtWork","GLOBAL",3)~ EXIT 
END 

IF ~~ Emily.PSBoltsYes
SAY @367 // ~No problem. Check back with me in a day.~
IF ~~ DO ~ SetGlobalTimer("X3milyCraftTimer","GLOBAL",ONE_DAY)SetGlobal("X3milyAtWork","GLOBAL",1)~ EXIT 
END 

IF ~~ Emily.PFArrowsOut 
SAY @376 // ~I'm sorry, I'm out of components to make those. I'm still happy to make standard arrows or bolts for you, though.~
++ @366 + Emily.PCraft // ~Let's craft something else instead.~
++ @363 EXIT // ~Nothing for the moment.~
END 


IF ~~ Emily.PFArrows 
SAY @372 // ~Fire Arrows then, are you sure? I've only enough components to make a dozen bundles of that type of ammunition total, not counting any I've already used for you.~  
= @375 // ~If you are, I'm happy to get started.~
++ @374 DO ~IncrementGlobal("X3milyFireMax","GLOBAL",1)~ + Emily.PFArrowsYes // ~Yes, go ahead and make me a bundle of fire arrows.~
++ @366 + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PFBolts 
SAY @380 // ~Fire Bolts then, are you sure? I've only enough components to make a dozen bundles of that type of ammunition total, not counting any I've already used for you.~  
= @375 // ~If you are, I'm happy to get started.~
++ @377 DO ~IncrementGlobal("X3milyFireMax","GLOBAL",1)~ + Emily.PFBoltsYes // ~Yes, go ahead and make me a bundle of fire bolts.~
++ @366 + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PFBoltsYes
SAY @367 // ~No problem. Check back with me in a couple of days.~
IF ~~ DO ~ SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)SetGlobal("X3milyAtWork","GLOBAL",2)~ EXIT 
END 

IF ~~ Emily.PFArrowsYes
SAY @367 // ~No problem. Check back with me in a couple of days.~
IF ~~ DO ~ SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)SetGlobal("X3milyAtWork","GLOBAL",4)~ EXIT 
END 

IF ~~ Emily.PBow1 
SAY @382 // ~I can, but we don't have anything that's worthwhile. I've only enough material to make improvements on a single bow, so we shouldn't waste it.~ 
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @384 EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBow2 
SAY @383 // ~I can, but I've only enough materials to enhance one ranged weapon. You should pick wisely.~
+~PartyHasItemIdentified("BOW08")~+ @385 + Emily.PBowSure1 // ~This Eagle Shortbow (Proper names updated in TRA)
+~PartyHasItemIdentified("XBOW03")~+ @386 + Emily.PBowSure2 // ~This Heavy Crossbow of Accuracy.
+~PartyHasItemIdentified("XBOW06")~+ @387 + Emily.PBowSure3 // ~This Light Crossbow of Speed.
+~PartyHasItemIdentified("BOW07")~+ @388 + Emily.PBowSure4 // ~This Longbow of the Marksman.~
++ @202 + Emily.PTalk // ~Let's talk about something else.~ 
++ @384 EXIT // ~Some other time then.~
END

IF ~~ Emily.PBowSure1 
SAY @389 // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ @390 DO ~TakePartyItem("BOW08")DestroyItem("BOW08")~ + Emily.PBowProceed1  // Yes, I'm sure. 
++ @366 + Emily.PBow2 // ~Let's craft something else instead.~
++ @384 EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure2 
SAY @389 // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ @390 DO ~TakePartyItem("XBOW03")DestroyItem("XBOW03")~ + Emily.PBowProceed2  // Yes, I'm sure. 
++ @366 + Emily.PBow2 // ~Let's craft something else instead.~
++ @384 EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure3 
SAY @389 // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ @390 DO ~TakePartyItem("XBOW06")DestroyItem("XBOW06")~ + Emily.PBowProceed3  // Yes, I'm sure. 
++ @366 + Emily.PBow2 // ~Let's craft something else instead.~
++ @384 EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure4 
SAY @389 // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ @390 DO ~TakePartyItem("BOW07")~ + Emily.PBowProceed4  // Yes, I'm sure. 
++ @366 + Emily.PBow2 // ~Let's craft something else instead.~
++ @384 EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowProceed1
SAY @391 // ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)SetGlobal("X3milyAtWork","GLOBAL",5)SetGlobal("X3milyEnhancedBow","GLOBAL",1)~ EXIT 
END 

IF ~~ Emily.PBowProceed2
SAY @391 // ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)SetGlobal("X3milyAtWork","GLOBAL",6)SetGlobal("X3milyEnhancedBow","GLOBAL",1)~ EXIT 
END 

IF ~~ Emily.PBowProceed3
SAY @391 // ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)SetGlobal("X3milyAtWork","GLOBAL",7)SetGlobal("X3milyEnhancedBow","GLOBAL",1)~ EXIT 
END 

IF ~~ Emily.PBowProceed4
SAY @391 // ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)DestroyItem("BOW07")SetGlobal("X3milyAtWork","GLOBAL",8)SetGlobal("X3milyEnhancedBow","GLOBAL",1)~ EXIT 
END 

IF ~~ Emily.PCraftCheckN
SAY @368 // ~I'm not quite done yet. Check with me later.~
IF ~~ EXIT 
END 

// Checks for Expired Timer. 
IF ~~ Emily.PCraftCheckY
SAY @369 // ~All done, <CHARNAME>.~ 
IF ~Global("X3milyAtWork","GLOBAL",1)~ + Emily.PCraftSBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",2)~ + Emily.PCraftFBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",3)~ + Emily.PCraftSArrowDone
IF ~Global("X3milyAtWork","GLOBAL",4)~ + Emily.PCraftFArrowDone
IF ~Global("X3milyAtWork","GLOBAL",5)~ + Emily.PCraftEagleDone
IF ~Global("X3milyAtWork","GLOBAL",6)~ + Emily.PCraftHeavyXDone
IF ~Global("X3milyAtWork","GLOBAL",7)~ + Emily.PCraftLightXDone
IF ~Global("X3milyAtWork","GLOBAL",8)~ + Emily.PCraftLongXDone
END 

IF ~~ Emily.PCraftSBoltDone 
SAY @371 // ~See, your bolts are all set! Let me know later if you want me to work on something new.~ 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BOLT01",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftFBoltDone 
SAY @371 // ~See, your bolts are all set! Let me know later if you want me to work on something new.~  
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BDBOLT01",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftSArrowDone 
SAY @370 // ~See, your arrows are all set! Let me know later if you want me to work on something new.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW01",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftFArrowDone 
SAY @370 // ~See, your arrows are all set! Let me know later if you want me to work on something new.~ 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW08",Player1,80,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftEagleDone
SAY @392 // ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRLS",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftHeavyXDone
SAY @392 // ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRX",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftLightXDone
SAY @392 // ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRXL",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftLongXDone
SAY @392 // ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRL",Player1,1,0,0)~ EXIT  
END 


END 

