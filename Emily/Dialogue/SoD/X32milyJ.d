BEGIN X32milyJ

// Dorn Conflict

IF ~Global("X32milyDornConflict","LOCALS",1)~ DornConflict 
SAY ~I'm sorry <CHARNAME>. But I can't walk alongside this blackguard.~ 
+~OR(2)Alignment(Player1,MASK_GOOD)ReputationGT(Player1,12)~+ ~Trust me on this one. I've done right by everyone so far.~ + D.B 
+~RandomNum(3,1)!Alignment(Player1,MASK_GOOD)ReputationLT(Player1,13)~+ ~Trust me on this one. I've done right by everyone so far.~ +  D.B 
+~RandomNum(3,2)!Alignment(Player1,MASK_GOOD)ReputationLT(Player1,13)~+ ~Trust me on this one. I've done right by everyone so far.~ +  D.A 
+~RandomNum(3,3)!Alignment(Player1,MASK_GOOD)ReputationLT(Player1,13)~+ ~Trust me on this one. I've done right by everyone so far.~ +  D.A 
++ ~If that is what you wish. Begone, Dorn.~ + D.C
++ ~Then go.~ +  D.B 
+~CheckStatGT(Player1,15,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + D.B
+~RandomNum(3,1)CheckStatLT(Player1,16,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + D.B
+~RandomNum(3,2)CheckStatLT(Player1,16,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + D.A
+~RandomNum(3,3)CheckStatLT(Player1,16,CHR)~+ ~Look, we need everyone we can get if we are going to defeat Caelar.~ + D.A
END 

IF ~~ D.A 
SAY ~I'm sorry, but that's not good enough for me. Make your decision.~
++ ~Then I choose Dorn.~ + D.D
++ ~Then I will choose you.~ + D.C
END 

IF ~~ D.B 
SAY ~I...I trust you, then. But I'll be keeping my eye on him.~
IF ~~ DO ~SetGlobal("X32milyDornConflict","LOCALS",2)~ + D.E
END 

IF ~~ D.D 
SAY ~I...am disappointed. Good luck.~ 
IF ~~ DO ~SetGlobal("X32milyDornConflict","LOCALS",-2)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 
END 

// Talk 1. Six Talks Total. Most are non-romance required.
IF ~Global("X32milyTalk","GLOBAL",2)~ Talk1 
SAY ~I hope Jacob is all right, I really do.~ [X3ESong]
++ ~I nearly forgot you were traveling with another. What happened to him?~ + T1.1
++ ~Are you talking to yourself?~ + T1.2
++ ~Who?~ + T1.3
END 

IF ~~ T1.1
SAY ~Before I joined you and the expedition, Jacob and I were ambushed by Planar Hunters, those extremists who would see any aasimar or tiefling killed.~
= ~We split up to divert them. I saw Jacob approaching the Coast Way Crossing bridge but couldn't circle back, they had chosen to follow me.~
= ~By the time I did get towards the bridge, it was split apart.~
++ ~He may very well be with the crusade, then.~ + T1.4
++ ~If he has joined the crusade, we may face him in battle.~ + T1.4
++ ~Do you think the crusade would have killed him?~ + T1.5
END 

IF ~~ T1.2 
SAY ~No! I mean, well sort of. Just thinking out loud about the companion I was with, before I ran into you.~
++ ~I nearly forgot you were traveling with another. What happened to him?~ + T1.1
++ ~Who?~ + T1.3
++ ~Just don't talk too loudly, then.~ + T1.Exit
END 

IF ~~ T1.3 
SAY ~Jacob, another aasimar. I met him not long before this crusade started getting serious.~
IF ~~ + T1.1 
END 

IF ~~ T1.4 
SAY ~I am worried Caelar would have influenced him to her cause. When I met Jacob, I saw him much like kin, almost a brother. We felt an instant connection.~
= ~I have a feeling it would be the same with Caelar. There are so few of us, there is just this feeling when you meet another for the first time.~
= ~And she is so purposeful. So sure. So true. It's arrogant, but also almost charming and magnetic.~
++ ~Were you lovers, this Jacob and yourself?~ + T1.6
++ ~We will stop Caelar. She rallies many to their deaths, and causes suffering in her wake.~ + T1.7
++ ~You speak of her almost in admiration.~ + T1.8
END 

IF ~~ T1.5
SAY ~I am not worried they would have killed him.~
IF ~~ + T1.4
END 

IF ~~ T1.Exit 
SAY ~Sorry, I won't!~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.6 
SAY ~Uh, no no no. He's a charming man, but we were only friends. He even has someone he cares for deeply back in Amn, a woman named Isolde.~
= ~Besides, the crusade was really the only thing we were both focused on, besides getting away from the Planar Hunters. I still remember seeing dead refugees all over a burned home. It was horrible.~
++ ~We will stop Caelar. She rallies many to their deaths, and causes suffering in her wake.~ + T1.7
++ ~We should return to our work. The sooner we progress, the sooner this all ends.~ + T1.9
END 

IF ~~ T1.7
SAY ~I know. Yet I also hope that we can show her the error of her ways, in some more peaceful ending, naive as it sounds.~
IF ~~ + T1.9
END 

IF ~~ T1.8 
SAY ~Do I? In some ways, I do. Her blood is more promiment than mine. I envy her in some ways, yet am glad for the lack of attention. And she rallies so many for a seemingly noble cause, despite its clear faults.~
= ~Imagine doing that for a truly good cause, not something with such terrible effects as Caelar. How good the world could potentially be, strong and united.~
++ ~It would be something to see, if such could truly come to pass.~ + T1.10
++ ~It is idealistic, to think that way. It can only be a dream.~ + T1.11
++ ~We will stop Caelar. She rallies many to their deaths, and causes suffering in her wake.~ + T1.7
++ ~We should return to our work. The sooner we progress, the sooner this all ends.~ + T1.9
END 

IF ~~ T1.9
SAY ~Right. Onwards then.~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.10 
SAY ~It would, wouldn't it? Something positive to think about at least, with all of this tragedy around us.~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.11 
SAY ~Maybe. Yet I want to really hope that it's possible.~
IF ~~ + T1.9
END 

// Talk 2

IF ~Global("X32milyTalk","GLOBAL",4)~ Talk2 
SAY ~<CHARNAME>. Is it stressful, hiding what you are?~ [X3ESong]
++ ~A child of Bhaal? Inconvenient, but necessary, though some already know.~ + Talk2.A 
++ ~I can not choose who I am. This is just how it is.~ + Talk2.B 
++ ~I hardly hide anything, Emily. I embrace my heritage.~ + Talk2.C 
END 

IF ~~ Talk2.A 
SAY ~I don't think I've ever seen anything quite on the scope you're dealing with. Your strength is a marvel.~
IF ~~ + Talk2.D
END 

IF ~~ Talk2.B 
SAY ~I guess I can understand, though you almost sound defeated saying that.~
IF ~~ + Talk2.D 
END 

IF ~~ Talk2.C 
SAY ~I'm not sure whether to marvel at your confidence, or be a bit disturbed.~
IF ~~ + Talk2.D 
END 

IF ~~ Talk2.D
SAY ~Back home, I tended to wear a circlet to hide the points of my ears. It almost seems silly now after seeing what you're going through.~
++ ~Why? Was there lack of appreciation for half-elves?~ + Talk2.E 
++ ~It is quite silly.~ + Talk2.F 
++ ~Speaking of, we have things to do.~ + Talk2.Exit 
END 

IF ~~ Talk2.E 
SAY ~Well. Not exactly.~
IF ~Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G1  
IF ~!Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G2
END 

IF ~~ Talk2.F 
SAY ~Hee. Maybe!~ 
IF ~Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G1 
IF ~!Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G2
END 

IF ~~ Talk2.Exit 
SAY ~Right. Back to quiet marching, then!~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.G1 
SAY ~As I've told you before, eventually my father is going to choose a successor for the family estate. In my case, I'm not exactly my father's wife's child.~
IF ~~ + Talk2.H 
END 

IF ~~ Talk2.G2 
SAY ~Long story short, my father is eventually going to choose a successor for our family estate in Tethyr. I'm not...my father's wife's child. A bastard, to make it simple.~
IF ~~ + Talk2.H 
END

IF ~~ Talk2.H 
SAY ~He wanted to avoid that drama, so, with a few trusted helpers, he went out of the way to mask the ears a little. It didn't help with the rumor making though.~
++ ~You're still your father's child. Are you worried he won't choose you?~ + Talk2.I 
++ ~How does this work, exactly?~ + Talk2.J
++ ~This sounds like noble drama. I've no time to listen with other tasks at hand.~ + Talk2.Exit 
END 

IF ~~ Talk2.I 
SAY ~I am. By tradition the eldest am selected, and in some eyes, so long as my father accepts me, his silly need to hide details about myself doesn't matter.~
IF ~~ + Talk2.J
END 

IF ~~ Talk2.J 
SAY ~Even if father selects me, or my brother, if either one of us disputes the other being chosen, it gets thrown for the nobility to pick.~
= ~And being so far away, I don't have a hand on their decisions. It's a bit unnerving. But I know this is more important.~
++ ~Thank you for being here, even if it is risking you something.~ + Talk2.K
++ ~Petty squabbles don't hold a torch to what is going on.~ + Talk2.L 
++ ~You could go home, you know. We have plenty of soldiers.~ + Talk2.K
END 

IF ~~ Talk2.K 
SAY ~I know you need every person you can get. It's good to be here, making a difference. I hope this pans out for everyone.~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.L 
SAY ~Right, they don't. I guess we should get back to marching, then.~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~Global("X32milyTalk","GLOBAL",6)~ Talk3
SAY ~I miss my easel. All this fighting really makes me appreciate simple, silly things like painting.~ [X3ESong]
++ ~You're a painter? That's surprising.~ + Talk3.A 
++ ~That couldn't sound more dull.~ + Talk3.B
++ ~What's wrong with fighting?~ + Talk3.C 
END 

IF ~~ Talk3.A 
SAY ~Oh yes. Not a great one, my faces do come out...eerie at times. But I found it so relieving when things got stressful.~
IF ~~ + Talk3.D  
END 

IF ~~ Talk3.B 
SAY ~Well. Not for me. I loved it, even if I'm not very skilled.~
IF ~~ + Talk3.D  
END 

IF ~~ Talk3.C 
SAY ~I don't enjoy shooting people with arrows, <CHARNAME>. I hate taking a life, even if it must be done. So something like painting can really help me get away from that for a while.~
IF ~~ + Talk3.D 
END 

IF ~~ Talk3.D 
SAY ~Poetry too, and prose. Usually romantic, but sometimes it was nice to pretend to be a goddess.~
++ ~A goddess? Why did you want to pretend to be that?~ + Talk3.E 
++ ~Let's hear some poetry, then.~ + Talk3.F 
++ ~Let's stay focused. We have a task to do.~ + Talk3.Exit 
END 

IF ~~ Talk3.E 
SAY ~Err. Well. You know, being able to do anything is quite enticing! You could really make the world around you safer.~
= ~I suppose it's not that easy though. Given every other god and all these enemies...the world is really complicated if you think long and hard on it.~
+~Global("X32milyRomanceActive","GLOBAL",3)~+ ~It is. But your company makes it a bit easier.~ + Talk3.G
++ ~I would disagree. It is a simple world out there.~ + Talk3.H
++ ~it won't get any easier talking about it.~ + Talk3.Exit 
END 

IF ~~ Talk3.F 
SAY ~N-now? Er, well...let me see if I can recall something...Oh!~
= ~"I cave into the earth’s eerie whispers, 
Toppling in resignation, not with a thud, not with a crash, 
But like a plush pillow, a falling feather, 
Into your arms, as your prize of victory"~
+~!Global("X32milyRomanceActive","GLOBAL",3)~+ ~That was romantic. I liked it a lot.~ + Talk3.G
++ ~That was incredibly cheesy.~ + Talk3.I 
++ ~Well. That was...interesting.~ + Talk3.I
END 

IF ~~ Talk3.G 
SAY ~Haha! That's rather sweet of you to say.~
IF ~~ + Talk3.Exit2 
END 

IF ~~ Talk3.H 
SAY ~Maybe. I guess there's a lot of different interpretations to be had.~ 
IF ~~ + Talk3.Exit2 
END 

IF ~~ Talk3.I 
SAY ~Er. I do feel quite a bit embarrassed now. I think I'm not going to share any more poems now.~
IF ~~ + Talk3.Exit2 
END 

IF ~~ Talk3.Exit 
SAY ~Right. Daydream of home after battle, not before. Got it!~ 
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk3.Exit2 
SAY ~Well. That's enough getting away from what we need to be doing. Back to doing what you need done, fearless leader!~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~Global("X32milyTalk","GLOBAL",8)~ Talk4
SAY ~It's almost strange. I thought we'd run into more Planar Hunters, but not a trace.~ [X3ESong]
++ ~The crusade is everywhere. There's no chance of them acting out an attack successfully.~ + Talk4.A
++ ~You're worried about them still?~ + Talk4.B
+~Dead("X32EHK3S")~+ ~After the last group fell, they probably know better.~ + Talk4.C 
++ ~Like they'd stand a chance. I'd cut them down easily.~ + Talk4.A 
END 

IF ~~ Talk4.A 
SAY ~That is true. Your reputation probably keeps them away, too.~ 
IF ~~ + Talk4.D 
END 

IF ~~ Talk4.B 
SAY ~No, actually. Despite us constantly entering peril, you've gotten us out of it every time.~
IF ~~ + Talk4.D 
END 

IF ~~ Talk4.C 
SAY ~You did show them. I'm still thankful for that.~
IF ~~ + Talk4.D 
END 

IF ~~ Talk4.D 
SAY ~You make us feel safe. At least me. No matter what happens, we end up okay.~ 
+~Global("X32milyInBG1","GLOBAL",1)~+ ~I care about you. I can't let something bad happen to you.~ + Talk4.E 
+~!Global("X32milyInBG1","GLOBAL",1)~+ ~I care about you. I can't let something bad happen to you.~ + Talk4.F 
++ ~It's all just another fun day in the hero business.~ + Talk4.G 
++ ~Someone has to keep you all alive.~ + Talk4.H 
END 

IF ~~ Talk4.E
SAY ~And you've done that, for all of the time we've traveled together. It makes me...well...happy.~
IF ~~ + Talk4.J 
END 

IF ~~ Talk4.F
SAY ~I'll be safe. I promise. Your concern is very touching, even if we haven't known each other long.~ 
IF ~~ + Talk4.J 
END 

IF ~~ Talk4.G 
SAY ~I guess it is quite fun, if you look at it a certain way.~
IF ~~ + Talk4.J
END 

IF ~~ Talk4.H 
SAY ~Hey, we're not *that* incompetent, you know.~
IF ~~ + Talk4.J
END 

IF ~~ Talk4.J 
SAY ~Just stay safe yourself. You're important to the group, after all.~
++ ~There is no need to worry. I will do all I can.~ + Talk4.K 
++ ~I ca't promise anything. There is always the risk.~ + Talk4.L 
++ ~Nothing is going to take me out. You should have more faith.~ + Talk4.M 
END 

IF ~~ Talk4.K 
SAY ~I believe you will. But you've shown that you're quite willing to take risks, too.~
IF ~~ + Talk4.X 
END 

IF ~~ Talk4.L 
SAY ~There is. And I understand.~
IF ~~ + Talk4.X 
END

IF ~~ Talk4.M  
SAY ~You've proven yourself. I guess I'm worrying for no reason!~ 
IF ~~ + Talk4.X 
END 

IF ~~ Talk4.X 
SAY ~Let's take care of this crusade problem, and then everyone's safety will be assured.~
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END


IF ~Global("X32milyTalk","GLOBAL",10)~ Talk5 
SAY ~I am curious, <CHARNAME>. Any plans after this is over?~ [X3ESong]
++ ~Why do you ask?~ + Talk5.A 
++ ~I've not thought that far ahead.~ + Talk5.A  
++ ~Traveling, probably.~ + Talk5.A 
++ ~Oh, I definitely have plans.~ + Talk5.P
++ ~This isn't the time for a chat, Emily.~ + Talk5.O 
END 

IF ~~ Talk5.P 
SAY ~Oh? What do they entail?~
++ ~Traveling, definitely. Maybe finding another adventure. There's so much to see out there.~ + Talk5.A 
++ ~Settling in the biggest home that money can buy. Stunning view, and personal guards. The life of luxury.~ + Talk5.A 
++ ~I was thinking of...following along with you.~ + Talk5.B 
++ ~Maybe being a mercenary. I enjoy this work.~ + Talk5.A  
END 

IF ~~ Talk5.A 
SAY ~Well, as you might remember, when this is over I plan to head home, to Tethyr. It could be a mere matter of months before Father makes his decision, and I need to gather support.~
= ~I thought...maybe you would want to go with me. Unless you really want to stick with your plans and make your own way?~
++ ~I would love to~ + Talk5.C 
++ ~I don't know. Let's talk about it afterwards.~ + Talk5.D 
++ ~I'm not interested.~ + Talk5.O
END 

IF ~~ Talk5.B 
SAY ~Oh, I'm smiling like an idiot. You actually want to go with me? I planned on going home to Tethyr. There is father's heir decision, and gathering support for it  to do.~
= ~Are you sure that's what you want?~
++ ~I would love to.~ + Talk5.C 
++ ~I don't know. Let's talk about it afterwards.~ + Talk5.D 
++ ~I'm not interested.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O
END 

IF ~~ Talk5.C 
SAY ~Oh, thank you! Oh, let me hug you! I never thought I'd forge such bonds so far away from home...and I like our relationship!~
++ ~Relationship. I like the sound of that.~ + Talk5.E  
++ ~I enjoy our friendship too.~ + Talk5.I 
++ ~Okay, no need for the hugging! I'm not comfortable with that.~  + Talk5.XH 
++ ~All right, enough of that. We've got work to do.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O  
END

IF ~~ Talk5.XH 
SAY ~Sorry. I might have gotten a bit emotional.~
++ ~It's okay. I care about you. I think more than just as a friend.~ + Talk5.E
++ ~That's okay. You're a good friend.~ + Talk5.I 
++ ~All right, enough of that. We've got work to do.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O  
END

IF ~~ Talk5.D 
SAY ~Oh, of course. It is a bit of decision. It's just I never thought I'd forge such bonds so far away from home...and I like our relationship!~
++ ~Relationship. I like the sound of that.~ + Talk5.E 
++ ~I enjoy our friendship too.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I 
++ ~All right, enough talk. We've got work to do.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O 
END

IF ~~ Talk5.E 
SAY ~I w- wait? You mean...Oh, how do I say this without making it awkward?~
IF ~!Race(Player1,HUMAN)Global("X32milyRomanceActive","GLOBAL",1)~ + Talk5.F 
IF ~Race(Player1,HUMAN)Global("X32milyRomanceActive","GLOBAL",1)~ + Talk5.G 
IF ~!Global("X32milyRomanceActive","GLOBAL",1)~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.R 
END 

IF ~~ Talk5.F 
SAY ~I...think you are wonderful. Really. But I come from a family with expectations of me. It's bad enough I'm not human and I have to hide the ears around them.~
= ~...I'd love to be more, but my family, and the other nobles would judge you for your race and class, and the entire point for going home would probably be ruined by that judgment.~
++ ~Does their opinion really outweigh how we feel? I didn't think such things mattered to you.~ + Talk5.H
++ ~I...I see. So this isn't possible?~ + Talk5.H 
++ ~I understand. Perhaps friendship is best.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I 
++ ~I was joking. I didn't mean it seriously.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.M 
END 

IF ~~ Talk5.G 
SAY ~I...think you are wonderful. Really. But I come from a family with expectations of me. It's bad enough I'm not human and I have to hide the points of my ears around them.~
= ~...I'd love to be more, but my family, and the other nobles would judge you for your class, and the entire point for going home would probably be ruined by that judgment.~
++ ~Does their opinion really outweigh how we feel? I didn't think such things mattered to you.~ + Talk5.H
++ ~I...I see. So this isn't possible?~ + Talk5.H 
++ ~I understand. Perhaps friendship is best.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I
++ ~I was joking. I didn't mean it seriously.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.M 
END 

IF ~~ Talk5.H 
SAY ~I don't know. Should affection outweigh our duty? If there wasn't the aura of my brother doing terrible things with the power of being the chosen of my father, or if it was hopeless to contest, I wouldn't care.~
= ~I would hold you now, and just enjoy the moment. But I know there's goodness I can do if I don't throw it away. It's not fair but...~
++ ~At least consider it. Think it over.~ + Talk5.J
++ ~I'm a bit saddened. But if it must be this way, there's nothing I can do, even if I want you.~ + Talk5.K 
++ ~I understand. Perhaps friendship is best.~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I
END 

IF ~~ Talk5.I 
SAY ~Yes. Friendship. And you have been a good friend...so, thank you, for that.~
IF ~~ + Talk5.X 
END 


IF ~~ Talk5.J 
SAY ~I'm sorry. I'm real sorry. I just don't know if that's a wise thing to do at all for me.~
IF ~~ + Talk5.K 
END 

IF ~~ Talk5.K 
SAY ~I'll give you some quiet and privacy. I'll just...stand over here.~
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)SetGlobal("X32milyRomanceActive","GLOBAL",2)~ EXIT 
END

IF ~~ Talk5.R 
SAY ~I don't like you that way, <CHARNAME>. I'm sorry.~
++ ~Even after everything I've done for you?~ + Talk5.L
++ ~I understand. Perhaps friendship is best.~ + Talk5.I 
++ ~I was joking. I didn't mean it seriously.~ + Talk5.M
END 

IF ~~ Talk5.L 
SAY ~It's not what you've done for me that moves me, <CHARNAME>. Sometimes...attraction just isn't there. I'm sorry if that hurts you, I don't want to do that.~
= ~You'll find someone wonderful for you out there. It's just not me.~
IF ~~ + Talk5.X 
END 

IF ~~ Talk5.M 
SAY ~Oh right. Funny! Ha. I totally got that. Right, this is even more awkward.~
IF ~~ + Talk5.X 
END 

IF ~~ Talk5.X 
SAY ~I think we should...continue doing what we were doing before our chat.~
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.O
SAY ~Right, no time for the talking, there's only for the marching! Ooh, that rhymed. Maybe I should be a bard...~
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~Global("X32milyTalk","GLOBAL",12)~ Talk6
SAY ~You have led us this far...but this portal even makes me unnerved. An Aasimar does not belong where it leads...not even Caelar. The very thought curls my blood.~
++ ~You'll be okay. I will always protect you.~ + Talk6.A 
++ ~There's no time to be afraid. Caelar lies ahead and we must follow.~ + Talk6.B 
++ ~If this is too much for you, you can stay here.~ + Talk6.C 
END 

IF ~~ Talk6.A 
SAY ~You always say that with such sincerity...It makes me feel warm. Thank you. I think I can do this.~
IF ~Global("X32milyRomanceActive","GLOBAL",2)~ + Talk6.D  
IF ~!Global("X32milyRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT
END 

IF ~~ Talk6.B 
SAY ~Right! No time to be afraid, Emily, no time to be afraid...~
IF ~Global("X32milyRomanceActive","GLOBAL",2)~ + Talk6.D  
IF ~!Global("X32milyRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk6.C 
SAY ~Oh, I am definitely coming. I want to help Caelar from herself...if it's not too late. I hope it isn't.~ 
IF ~Global("X32milyRomanceActive","GLOBAL",2)~ + Talk6.D  
IF ~!Global("X32milyRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk6.D 
SAY ~And yet I am still very afraid... I am afraid of losing you. Everything I said before was so stupid! My problems are a world away!~
= ~And here you are, a wonderful man, handsome and courageous, a real hero that you can only read about in a romance.~
= ~If it's not too late...if there is one brief moment to have before we enter...I would...I would like to...~
++ ~It is okay. Take my hand.~ + Talk6.E 
++ ~I want to kiss you too. Come here.~ + Talk6.F
++ ~That's nice, but now is *definitely* not the time for this.~ + Talk6.G
++ ~Save it. You said your words. Let's stay as friends.~ ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk6.H 
END 

IF ~~ Talk6.E 
SAY ~Hand in hand, then? I can't help but blush, but your hand feels so warm and safe.~
IF ~~ + Talk6.I  
END 

IF ~~ Talk6.F 
SAY ~Mmm. I've never done that before, but it's as mesmerizing as described.~
IF ~~ + Talk6.I
END 

IF ~~ Talk6.G 
SAY ~Right! Got to go into a portal first and settle things afterwards! That's quite sensible.~
IF ~~ + Talk6.I 
END 

IF ~~ Talk6.H 
SAY ~I...I understand. Well. Let's get this done, then.~
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk6.I 
SAY ~Let's stop Caelar, and see what tomorrow holds for us.~
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

// THRIX

IF ~Global("X32milySacrifice","bd4500",1)~ ThrixTalk0
SAY ~What in the literal hells was that, <CHARNAME>? You were going to deal me away like that?~
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + ~I was lying to him. I've no plans to hand you over. Besides, I got the riddle right.~ DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Emily","global",1)~ + ~I was lying to him. I've no plans to hand you over.~ DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + ~I'm sorry, Emily. I made a mistake.~ DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Emily","global",1)~ + ~I'm sorry, Emily. I made a mistake..~ DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + ~We're here to get a job done, at any cost.~ DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Emily","global",1)~ + ~We're here to get a job done, at any cost.~ DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY ~I'm not going to let him have what he wants. But you, <CHARNAME>...you're not much better than Caelar when you stoop so low as to risk your own friends.~
IF ~OR(2)
Global("X32milyRomanceActive","GLOBAL",1)
Global("X32milyRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32milyRomanceActive","GLOBAL",1)
!Global("X32milyRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY ~Well... you did manage to solve the riddle. Maybe you just believed in yourself that much, but... I never thought you'd take such a risk.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY ~Yes, you did. You really, really did. Never deal with one of these devils again.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY ~That's vile. You're not much better than Caelar if you see us all as pawns.~
IF ~OR(2)
Global("X32milyRomanceActive","GLOBAL",1)
Global("X32milyRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32milyRomanceActive","GLOBAL",1)
!Global("X32milyRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY ~And for that...our relationship is done.~
IF ~~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY ~Let's just go, please.~
IF ~~ EXIT
END

// Checks for Expired Timer. 
IF ~GlobalTimerExpired("X3milyCraftTimer","GLOBAL")GlobalGT("X3milyAtWork","GLOBAL",0)~ Emily.PCraftAlert
SAY ~Hey <CHARNAME>, good news! I just finished with that work you gave me to do.~
IF ~Global("X3milyAtWork","GLOBAL",1)~ + Emily.PCraftSBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",2)~ + Emily.PCraftFBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",3)~ + Emily.PCraftSArrowDone
IF ~Global("X3milyAtWork","GLOBAL",4)~ + Emily.PCraftFArrowDone
IF ~Global("X3milyAtWork","GLOBAL",5)~ + Emily.PCraftEagleDone
IF ~Global("X3milyAtWork","GLOBAL",6)~ + Emily.PCraftHeavyXDone
IF ~Global("X3milyAtWork","GLOBAL",7)~ + Emily.PCraftLightXDone
IF ~Global("X3milyAtWork","GLOBAL",8)~ + Emily.PCraftLongXDone
END

// Dorn Conflict 

CHAIN X32milyJ D.C 
~Thank you. This is for the best.~
DO ~SetGlobal("X32milyDornConflict","LOCALS",-1)~
== BDDORNJ ~You are a fool to cast me side for the sniveling of a girl. I have no use for fools.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 

CHAIN X32milyJ D.E 
~That was meant for you to hear, Dorn.~
== BDDORNJ ~I care not for your whining, girl. <CHARNAME>, let us continue on!~
EXIT 

// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3mily")
Global("X32milySchael","GLOBAL",0)~ + ~What about Emily, the archer? ~ DO ~SetGlobal("X32milySchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelmilyRecall
END

CHAIN BDSCHAEL bdschaelmilyRecall
~I've not heard of her whereabouts. But if the rumors are true about the "half-elf", she may have cause to look into Caelar herself. There could be a chance we meet her out there.~
COPY_TRANS BDSCHAEL 40

// Menhirs

EXTEND_TOP BDMENHI1 0 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir1 
END 

EXTEND_TOP BDMENHI1 1 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir1 
END 

CHAIN X32milyJ X32milyMenhir1 
~I will be happy to sing.~
EXTERN BDMENHI1 2

EXTEND_TOP BDMENHI2 0 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir2 
END 

EXTEND_TOP BDMENHI2 1 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir2 
END 

CHAIN X32milyJ X32milyMenhir2
~Is that a joke over my heritage? Oh very well.~
EXTERN BDMENHI2 2

EXTEND_TOP BDMENHI3 0 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir3 
END 

EXTEND_TOP BDMENHI3 1 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir3 
END 

CHAIN X32milyJ X32milyMenhir3 
~Certainly. Something soft and sweet should do.~
EXTERN BDMENHI3 2

EXTEND_TOP BDMENHI4 0 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir4 
END 

EXTEND_TOP BDMENHI4 1 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir4 
END 

CHAIN X32milyJ X32milyMenhir4
~"The lark sang sweeter then than ever, love lulling voice from beyond the nether..."~
EXTERN BDMENHI4 2

EXTEND_TOP BDMENHI5 0 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir5 
END 

EXTEND_TOP BDMENHI5 1 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir5 
END 

CHAIN X32milyJ X32milyMenhir5
~That's sweet of  you to say. I'll do my best.~
EXTERN BDMENHI5 2

EXTEND_TOP BDMENHI6 0 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir6 
END 

EXTEND_TOP BDMENHI6 1 #7
+~IsValidForPartyDialog("X3mily")~+ ~Emily, you have an angelic allure. Can you try singing?~ EXTERN X32milyJ X32milyMenhir6 
END 

CHAIN X32milyJ X32milyMenhir6
~I think you praise me too highly, but here goes.~
EXTERN BDMENHI6 2

I_C_T BDVESSAN 5 X32milyBDVESSAN5 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~Sending him out to that elf like that is just wrong. You really disappoint me.~
END  

I_C_T BDTSOLAK 2 X32milyBDTSOLAK2
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~If you had asked me? I would say most definitely, vampire.~
END  

I_C_T BDCOLDH 24 X32milyBDCOLDH24 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~We're stooping so low as to aid liches now? How dreadful.~
END  

I_C_T BDCROMMU 12 X32milyBDCROMMU
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~True love truly prevails. With a small bit of help.~
END  

I_C_T BDBAELOT 19 X32milyBDBAELOT 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~I'm not sure whether to be surprised the drow is tolerated, or angry that the crowd is allowing this to go on.~
END 

// Madele 

I_C_T BDMADELE 10 X32milyBDMADELE 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~I am really, really disturbed. I hope I'm not the only one.~
END 

// Bridgefort 

I_C_T BDKHALID 56  X32milyBDKHALID56
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~We can do this!~
END

I_C_T BDDORN 29 X32milyBDDORN29 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~I know this man. Blackguard! A prison is almost fitting for him.~
== BDDORN ~Be silent, strumpet! I speak with your leader.~
END

I_C_T BDELANDR 17 X32milyBDELANDR 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~By all the gods...~
END 

I_C_T BDKHALIJ 33 X32milyBDKHALIJ 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~This is tragic. How could you do this, <CHARNAME>?~
DO ~SetGlobal("X3_betrayal_discussion","bd2000",1)~
END

// Training 

EXTEND_TOP BDTAIELD 1 #4 
+ ~IsValidForPartyDialogue("X3mily")~ + ~Any thoughts, Emily?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_taield_skill","global",2)~ EXTERN X32milyJ bdTAIELD1
END 

CHAIN X32milyJ bdTAIELD1
~I'm not much of a soldier, really. I was stuck in the estate for so long, a wall hiding my differences from the world.~ 
== BDTAIELD ~I confess I feel alienated here. It's hard to feel part of the team.~ 
== X32milyJ ~I understand. But your path led you here, to this moment. Find the strength and will inside of you. I know you can do it.~
EXTERN BDTAIELD 6

EXTEND_TOP BDHESTER 6 #4 
+ ~IsValidForPartyDialogue("X3mily")~ + ~Something to suggest, Emily?~ EXTERN X32milyJ bdHester
END 

CHAIN X32milyJ bdHester 
~Accept that you are afraid. It is okay. We *want* to live. And so do those around you. But they can't unless we all contribute.~ 
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~
== BDHESTER ~I think I understand. If I focus on why we're here, the injustices Caelar's wrought upon the Sword Coast, maybe I can ignore my nerves.~
== X32milyJ ~Yes! Focus on the cause at hand. Not the fears that try to hold you back.~
EXTERN BDHester 13

// Uncommon Cold 

EXTEND_TOP BDYESTIM 1
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)~+  ~What do you think, Emily?~ DO ~SetGlobal("bd_patient_yestimell","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32milyJ BDYESTIM1 // X3Helga
END 

CHAIN X32milyJ BDYESTIM1
~He reminds me of ill castle rats. They get agitated at th- watch out!~ 
DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)  // Yestimell
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))~ 
EXIT 

I_C_T BDDOSIA 25 X32milyBDDOSIA25 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~They need this, please. I beg you, <CHARNAME>, just look at them!~
END 

EXTEND_TOP BDFRAT 1 
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)!IsValidForPartyDialog("Corwin")!IsValidForPartyDialog("Minsc")!IsValidForPartyDialog("Jaheira")~+ ~Uh, hi, rat. This might seem weird, but I wonder if you would talk to my friend Emily here?~
EXTERN BDFRAT 2 
END 

EXTEND_TOP BDFRAT 3 
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)!IsValidForPartyDialog("Corwin")!IsValidForPartyDialog("Minsc")!IsValidForPartyDialog("Jaheira")~+ ~Uh, hi, rat. This might seem weird, but I wonder if you would talk to my friend Emily here?~
EXTERN BDFRAT 2 
END 

EXTEND_TOP BDFRAT 8
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)~+ ~Emily, can you talk to the rat?~
EXTERN X32milyJ BDFRAT8 
END 

CHAIN X32milyJ BDFRAT8 
~<CHARNAME>, I don't speak rodent, but...hrm, look at this.~
== X32milyJ ~There's some bark on its fur. I recognize it from Tethyr. Blackthorn Bark, with an ew, moldy smell. But if we can find a Blackthorn tree, it might have what we need.~
DO ~AddJournalEntry(61440,QUEST)  
SetGlobal("bd_sdd302_rat_hunt","global",4)
SetGlobal("bd_sdd302_blackthorn","global",1)~
EXIT

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~You have one amongst you who is no mere ordinary mortal. Wonderful, pure aasimar. Perhaps for me. What say you, Bhaalspawn?~
END
++ ~I accept your terms, devil. Say your riddle, and should I lose, I will forfeit Emily to you.~ DO ~SetGlobal("X32EmilySacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32EmilyRomanceActive","GLOBAL",1) Global("X32EmilyRomanceActive","GLOBAL",2)~ + ~She's far too important to me! I'll never agree!~ DO ~SetGlobal("X32_Saved_Emily","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32milyJ ThrixWager2
+ ~!Global("X32EmilyRomanceActive","GLOBAL",1) !Global("X32EmilyRomanceActive","GLOBAL",2)~ + ~You ask for too much, fiend. Emily's soul is worth too much for me to risk it. Choose another.~ DO ~SetGlobal("X32_Saved_Emily","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32milyJ ThrixWager2
++ ~It's a poor <PRO_MANWOMAN> indeed who'd sacrifice a friend in such a way. If I can't answer your riddle, you will take me, and let them go on their way. Agreed?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN X32milyJ ThrixWager2
~Thank you for not letting me be this devil's...thing, but why are we even talking to it?~
== BDTHRIX ~Denied the rare, valuable aasimar? Such a pity.~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Yes. Yes. How excellent. You are mine now, Aasimar.~
END
++ ~Sorry, Emily. I guess I couldn't get it right.~ DO ~SetGlobal("X32_thrix_mark_Emily","global",1)~ EXTERN X32milyJ ThrixWager5
++ ~That's not happening, fiend!~ EXTERN BDTHRIX 10

CHAIN X32milyJ ThrixWager5
~Gods, no!~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Caelar 

I_C_T BDCAELAR 40 X32milyBDCaelar40 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~I can't believe this. She really thinks she is right.~
== BDCAELAR ~I can see you and I are similar. How can you not see the light of my cause, in my call for liberation of innocent souls?~
== X32milyJ ~I am with <CHARNAME>. As tempting as it is to liberate lost souls...you have shown nothing of  merit to any of us.~
== BDCAELAR ~If there were time I would take the time to convince you. But time runs out, and we must march.~
END 

I_C_T BDCAELAR 53 X32milyBDCaelar53 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~This is terrible. She can't even see reason anymore.~
END 

I_C_T BDCAELAR 62 X32milyBDCaelar62 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~<PRO_HESHE> would, and so would I.~
END 

I_C_T BDCAELAR 64 X32milyBDCaelar64 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~Please, please, don't do this, Caelar. Listen to your uncle. You cannot go so far as to become a blackguard for this monstrosity.~
== BDCAELAR ~After all I have done, it is a fitting place for me. You cannot sway me.~
END 

I_C_T BDCAELAR 86 X32milyBDCaelar86 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN ~It doesn't feel right to leave another aasimar here. But I know nothing will change your mind.~
END 

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("X3mily_SoDparty_epilogue","GLOBAL",1)~ + ~Where is Emily?~ EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("X3mily_SoDparty_epilogue","GLOBAL",1)~ + ~Where is Emily?~ EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
~She's gone home. I tried but she was pretty adamant.~
EXTERN BDIMOEN 119

APPEND X32milyJ 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN Emily.BattleOver 
SAY ~She couldn't be saved. I...I wish she could have seen reason.~
IF ~~ EXIT 
END 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])OR(2)AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Emily.PIDCrypt
SAY ~I'm okay, <CHARNAME>, really. I just really want out of here. Let's complete this last adventure together.~
IF ~~ EXIT 
END 

//New P.I.D. will exclude Chapter Advice. 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Emily.PID
 SAY ~Something you need?~ [Emilcs4] // ~Something you need?~ 
 + ~HPPercentGT(Myself,74)RandomNum(6,1)~ + ~How are you doing?~ + Emily.PHowAreYou1 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(6,2)~ + ~How are you doing?~ + Emily.PHowAreYou2 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(6,3)~ + ~How are you doing?~ + Emily.PHowAreYou3 // ~How are you doing?~
  + ~HPPercentGT(Myself,74)RandomNum(6,4)~ + ~How are you doing?~ + Emily.PHowAreYou4 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(6,5)~ + ~How are you doing?~ + Emily.PHowAreYou5 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(6,6)~ + ~How are you doing?~ + Emily.PHowAreYou6 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ ~How are you doing?~ + Emily.PHowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ ~How are you doing?~ + Emily.PHowAreYouHurt // ~How are you doing?~ //(Under 50%)
 ++ ~Let's stop and chat for a bit.~  + Emily.PTalk // ~Let's stop and chat for a bit.~ 
// +~!Global("X3milyCraftTalk","GLOBAL",2)~+ ~Are you able to fletch arrows?~ DO ~SetGlobal("X3milyCraftTalk","GLOBAL",2)~ + Emily.PCraftTalk2 // 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
 +~GlobalGT("X3milyAtWork","GLOBAL",0)!GlobalTimerExpired("X3milyCraftTimer","GLOBAL")~+ ~Can I check on your progress of your craft?~  + Emily.PCraftCheckN // ~Can I check on your progress of your craft?~ // Not Ready. 
 +~GlobalGT("X3milyAtWork","GLOBAL",0)GlobalTimerExpired("X3milyCraftTimer","GLOBAL")~+ ~Can I check on your progress of your craft?~  + Emily.PCraftCheckY // ~Can I check on your progress of your craft?~ // Ready. 
 ++ ~Your voice sounds funny.~ + FixString
 ++ ~Nothing at the moment.~  EXIT
 END 
 
IF ~~ Emily.PHowAreYou1
SAY ~Just fine, <CHARNAME>, thanks for checking up on me.~ 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou2
SAY ~I've Got a bit of blood on me, but, it's not mine.~ 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYou3
SAY ~How kind of you. All okay here, fearless leader.~ 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou4
SAY ~A bit cold. I miss the climate of home.~ 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou5
SAY ~Don't laugh at me, but I'm starving. I could eat an entire cow.~ 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou6
SAY ~I'm fine. I just hope we can help all these poor people out there.~ 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYouInjured
SAY ~I'm in slight pain, to be honest. But I guess that's risk of our work, isn't it?~ 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYouHurt
SAY ~I'm in pain. Whenever we have a chance, my wounds could use some tending and pain relief.~ 
IF ~~ EXIT  
END

IF ~~ Emily.PCraftTalk2
SAY ~I am. Just ask when you want me to fletch something. It's not difficult work, but it can take a while, depending on if its a few arrows or an improvement to a launcher.~
IF ~~ + Emily.PCraftTalk3 
END 

IF ~~ Emily.PCraftTalk3 
SAY ~Would you like me to see if we have any launchers we can improve now?~
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Yes, anything you upgrade?~ + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Yes, anything you upgrade?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ ~Maybe later.~ EXIT 
END 


IF ~~ Emily.PCraft 
SAY ~I can do that. Should just take me a day or so to prep some ammunition.~ 
++ ~I'd like some bolts.~ + Emily.PBolts 
++ ~I'd like some arrows.~  + Emily.PArrows  // ~I'd like some arrows.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Actually, could you enhance a bow?~ + Emily.PBow1  // ~Actually, could you enhance a bow?~ No bow is worthy. Fires only if bow hasn't been enhanced. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Actually, could you enhance a bow?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
++  ~Nothing for the moment.~ EXIT // ~Nothing for the moment.~
END  

IF ~~ Emily.PBolts 
SAY ~Bolts, hmm? What sort of bolts?~ 
++ ~Some standard ammunition.~ + Emily.PSBolts // ~Some standard ammunition.~
+~GlobalLT("X3milyFireMax","GLOBAL",12)~+ ~Some fire bolts.~ + Emily.PFBolts // ~Some fire bolts.~
+~GlobalGT("X3milyFireMax","GLOBAL",11)~+ ~Some fire bolts.~ + Emily.PFArrowsOut // ~Some fire bolts.~
+~GlobalLT("X3milyIceMax","GLOBAL",12)~+ ~Some ice bolts.~ + Emily.PIBolts // ~Some ice bolts.~
+~GlobalGT("X3milyIceMax","GLOBAL",11)~+ ~Some ice bolts.~ + Emily.PFArrowsOut // ~Some ice bolts.~
++  ~Nothing for the moment.~ EXIT // ~Nothing for the moment.~
END 

IF ~~ Emily.PArrows 
SAY ~Arrows, hmm? What sort of arrows?~
++ ~Some standard ammunition.~ + Emily.PSArrows // ~Some standard ammunition.~
+~GlobalLT("X3milyFireMax","GLOBAL",12)~+ ~Some fire arrows.~ + Emily.PFArrows // ~Some fire arrows.~
+~GlobalGT("X3milyFireMax","GLOBAL",11)~+ ~Some fire arrows.~ + Emily.PFArrowsOut // ~Some fire arrows.~
+~GlobalLT("X3milyIceMax","GLOBAL",12)~+ ~Some ice arrows.~ + Emily.PIArrows // ~Some ice arrows.~
+~GlobalGT("X3milyIceMax","GLOBAL",11)~+ ~Some ice arrows.~ + Emily.PFArrowsOut // ~Some ice arrows.~
++  ~Nothing for the moment.~ EXIT // ~Nothing for the moment.~
END 

IF ~~ Emily.PSArrows 
SAY ~Standard then, are you sure? They're better than the ordinary ammunition you'll find on the market, but far from the finest.~
++  ~Yes, please proceed with them.~ + Emily.PSArrowsYes // ~Yes, please proceed with them.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PSBolts 
SAY ~Standard then, are you sure? They're better than the ordinary ammunition you'll find on the market, but far from the finest.~
++ ~Yes, please proceed with them.~ + Emily.PSBoltsYes // ~Yes, please proceed with them.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PSArrowsYes
SAY ~No problem. Check back with me in a day.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",3) SetGlobalTimer("X3milyCraftTimer","GLOBAL",ONE_DAY)~ EXIT 
END 

IF ~~ Emily.PSBoltsYes
SAY ~No problem. Check back with me in a day.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",ONE_DAY)~ EXIT 
END 

IF ~~ Emily.PFArrowsOut 
SAY ~I'm sorry, I'm out of components to make those. I'm still happy to make standard arrows or bolts for you, though.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
++  ~Nothing for the moment.~ EXIT // ~Nothing for the moment.~
END 


IF ~~ Emily.PFArrows 
SAY ~Fire Arrows then, are you sure? I've only enough components to make a dozen bundles of that type of ammunition total, not counting any I've already used for you.~  
= ~If you are, I'm happy to get started.~
++ ~Yes, go ahead and make me a bundle of fire arrows.~ DO ~IncrementGlobal("X3milyFireMax","GLOBAL",1)~ + Emily.PFArrowsYes // ~Yes, go ahead and make me a bundle of fire arrows.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PFBolts 
SAY ~Fire Bolts then, are you sure? I've only enough components to make a dozen bundles of that type of ammunition total, not counting any I've already used for you.~  
= ~If you are, I'm happy to get started.~
++ ~Yes, go ahead and make me a bundle of fire bolts.~ DO ~IncrementGlobal("X3milyFireMax","GLOBAL",1)~ + Emily.PFBoltsYes // ~Yes, go ahead and make me a bundle of fire bolts.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PFBoltsYes
SAY ~No problem. Check back with me in a couple of days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",2) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END 

IF ~~ Emily.PFArrowsYes
SAY ~No problem. Check back with me in a couple of days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",4) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END 

IF ~~ Emily.PBow1 
SAY ~I can, but we don't have anything that's worthwhile. I've only enough material to make improvements on a single bow, so we shouldn't waste it.~ 
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 

IF ~~ Emily.PIArrows 
SAY ~Ice Arrows then, are you sure? I've only enough components to make a dozen bundles of that type of ammunition total, not counting any I've already used for you.~  
= ~If you are, I'm happy to get started.~
++ ~Yes, go ahead and make me a bundle of ice arrows.~ DO ~IncrementGlobal("X3milyIceMax","GLOBAL",1)~ + Emily.PIArrowsYes // ~Yes, go ahead and make me a bundle of Ice arrows.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
END 

IF ~~ Emily.PIBolts 
SAY ~Ice Bolts then, are you sure? I've only enough components to make a dozen bundles of that type of ammunition total, not counting any I've already used for you.~  
= ~If you are, I'm happy to get started.~
++ ~Yes, go ahead and make me a bundle of ice bolts.~ DO ~IncrementGlobal("X3milyIceMax","GLOBAL",1)~ + Emily.PIBoltsYes // ~Yes, go ahead and make me a bundle of Ice bolts.~
++ ~Let's craft something else instead.~ + Emily.PCraft // ~Let's craft something else instead.~
END

IF ~~ Emily.PIBoltsYes
SAY ~No problem. Check back with me in a couple of days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",9) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END 

IF ~~ Emily.PIArrowsYes
SAY ~No problem. Check back with me in a couple of days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",10) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END  

IF ~~ Emily.PBow2 
SAY ~I can, but I've only enough materials to enhance one ranged weapon. You should pick wisely.~
+~PartyHasItemIdentified("BOW08")~+ ~Protector of  the Dryad Shortbow.~ + Emily.PBowSure1 // ~This Eagle Shortbow (Proper names updated in TRA)
+~PartyHasItemIdentified("XBOW03")~+ ~Heavy Crossbow of Accuracy~ + Emily.PBowSure2 // ~This Heavy Crossbow of Accuracy.
+~PartyHasItemIdentified("XBOW06")~+ ~Light Crossbow of Speed~ + Emily.PBowSure3 // ~This Light Crossbow of Speed.
+~PartyHasItemIdentified("BOW07")~+ ~Deadshot Longbow~ + Emily.PBowSure4 // ~This Longbow of the Marksman.~
+~PartyHasItemIdentified("BDBOW03")~+ ~The Fleshripper~ + Emily.PBowSure5 // ~The Fleshripper.~ 
+~PartyHasItemIdentified("BDBOW04")~+ ~The Bow of the Banshee~ + Emily.PBowSure6
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END

IF ~~ Emily.PBowSure1 
SAY ~A fine ranged weapon. But are you sure? I can only do this once.~ // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ ~Yes, I'm sure.~ DO ~TakePartyItem("BOW08")DestroyItem("BOW08")~ + Emily.PBowProceed1  // Yes, I'm sure. 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure2 
SAY ~A fine ranged weapon. But are you sure? I can only do this once.~ // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ ~Yes, I'm sure.~ DO ~TakePartyItem("XBOW03")DestroyItem("XBOW03")~ + Emily.PBowProceed2  // Yes, I'm sure. 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure3 
SAY ~A fine ranged weapon. But are you sure? I can only do this once.~ // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ ~Yes, I'm sure.~ DO ~TakePartyItem("XBOW06")DestroyItem("XBOW06")~ + Emily.PBowProceed3  // Yes, I'm sure. 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure4 
SAY ~A fine ranged weapon. But are you sure? I can only do this once.~ // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ ~Yes, I'm sure.~ DO ~TakePartyItem("BOW07")~ + Emily.PBowProceed4  // Yes, I'm sure. 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure5 
SAY ~A fine shortbow. But are you sure? I can only do this once.~ // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ ~Yes, I'm sure.~ DO ~TakePartyItem("BDBOW03")~ + Emily.PBowProceed5  // Yes, I'm sure. 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 

IF ~~ Emily.PBowSure6 
SAY ~A fine longbow. But are you sure? I can only do this once.~ // ~A fine ranged weapon. But are you sure? I can only do this once.~
++ ~Yes, I'm sure.~ DO ~TakePartyItem("BDBOW04")~ + Emily.PBowProceed6  // Yes, I'm sure. 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Some other time then.~ EXIT // ~Some other time then.~
END 


IF ~~ Emily.PBowProceed1
SAY ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",5)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed2
SAY ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",6)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed3
SAY ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",7)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed4
SAY ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~DestroyItem("BOW07")SetGlobal("X3milyAtWork","GLOBAL",8)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed5
SAY ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~DestroyItem("BDBOW07")SetGlobal("X3milyAtWork","GLOBAL",11)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed6
SAY ~Okay, I'll get started. I should be done in three days.~
IF ~~ DO ~DestroyItem("BDBOW04")SetGlobal("X3milyAtWork","GLOBAL",12)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PCraftCheckN
SAY ~I'm not quite done yet. Check with me later.~
IF ~~ EXIT 
END 

// Checks for Expired Timer. 
IF ~~ Emily.PCraftCheckY
SAY ~All done, <CHARNAME>.~ 
IF ~Global("X3milyAtWork","GLOBAL",1)~ + Emily.PCraftSBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",2)~ + Emily.PCraftFBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",3)~ + Emily.PCraftSArrowDone
IF ~Global("X3milyAtWork","GLOBAL",4)~ + Emily.PCraftFArrowDone
IF ~Global("X3milyAtWork","GLOBAL",5)~ + Emily.PCraftEagleDone
IF ~Global("X3milyAtWork","GLOBAL",6)~ + Emily.PCraftHeavyXDone
IF ~Global("X3milyAtWork","GLOBAL",7)~ + Emily.PCraftLightXDone
IF ~Global("X3milyAtWork","GLOBAL",8)~ + Emily.PCraftLongXDone
IF ~Global("X3milyAtWork","GLOBAL",9)~ + Emily.PCraftIBoltDone
IF ~Global("X3milyAtWork","GLOBAL",10)~ + Emily.PCraftIArrowDone
IF ~Global("X3milyAtWork","GLOBAL",11)~ + Emily.PCraftBDFleshBowDone
IF ~Global("X3milyAtWork","GLOBAL",12)~ + Emily.PCraftBDBansheeBowDone
END 

IF ~~ Emily.PCraftSBoltDone 
SAY  ~See, your bolts are all set! Let me know later if you want me to work on something new.~ 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BOLT02",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftFBoltDone 
SAY  ~See, your bolts are all set! Let me know later if you want me to work on something new.~ 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BDBOLT01",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftSArrowDone 
SAY ~See, your arrows are all set! Let me know later if you want me to work on something new.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW02",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftFArrowDone 
SAY ~See, your arrows are all set! Let me know later if you want me to work on something new.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW08",Player1,80,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftEagleDone
SAY ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRLS",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftHeavyXDone
SAY ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRX",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftLightXDone
SAY ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRXL",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftLongXDone
SAY ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRL",Player1,1,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftIBoltDone 
SAY  ~See, your bolts are all set! Let me know later if you want me to work on something new.~ 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BDBOLT02",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftIArrowDone 
SAY  ~See, your arrows are all set! Let me know later if you want me to work on something new.~ 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW09",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftBDFleshBowDone 
SAY ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3ESB1",Player1,1,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftBDBansheeBowDone 
SAY ~See, your weapon is all set. I hope you enjoy it's slight modifications. Should help anyone's accuracy and skill with it.~
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3Bow04",Player1,1,0,0)~ EXIT  
END 

 
IF ~~ Emily.PTalk 
SAY  ~What would you like to talk about?~ 
/*Options will  vary as the game goes on.*/ 
// Companion Thoughts 
+ ~NumInPartyAliveGT(2)~ + ~What do you think of our companions?~  + Emily.PCompanionThoughts // ~What do you think of our companions?~ 
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,12)~ + ~What do you think of me?~ + Em.Me1 // ~What do you think of me?~
+ ~NumInPartyAliveLT(3)ReputationLT(Player1,13)~ + ~What do you think of me?~ + Em.Me2 // ~What do you think of me?~
// Dialogue From Talk Expansions. These fire once. 
+~Global("X3milyTalkJacob","GLOBAL",0)GlobalGT("X3milyTalk","GLOBAL",2)~+ ~You've talked a little about your former companion, do you have more details to share?~ DO ~SetGlobal("X3milyTalkJacob","GLOBAL",1)~ + Emily.PIDTalk1
+~Global("X3milyTalkJacob2","GLOBAL",0)GlobalGT("X32milyQuestSpawn","GLOBAL",3)~+ ~So, about Jacob.~ + Emily.PIDTalk2
+~Global("X3milyFlirtTalk","GLOBAL",0)Global("X32milyRomanceActive","GLOBAL",1)~+ ~Did I ever tell you how pretty you look?~ DO ~SetGlobal("X3milyFlirtTalk","GLOBAL",1)~ + Emily.PIDTalk3
//Old P.I.D. Talks
+~Global("X3milyPTethyrTopic","GLOBAL",0)~+ ~What can you tell me about Tethyr, your homeland?~ DO ~SetGlobal("X3milyPTethyrTopic","GLOBAL",1)~ + Emily.PTethyr // ~What can you tell me about Tethyr, your homeland?~ For Kale, Gullykin. For Vienxay, Evermeet. 
+~RandomNum(3,1)~+ ~Can you give me any tips about archery?~  + Emily.PArchery1 // ~Can you give me any tips about archery?~ 
+~RandomNum(3,2)~+ ~Can you give me any tips about archery?~  + Emily.PArchery2
+~RandomNum(3,3)~+ ~Can you give me any tips about archery?~  + Emily.PArchery3
+~Global("X3milyCraft","GLOBAL",1)Global("X3milyFletchTopic","GLOBAL",0)~+ ~Can you tell me more about Fletching?~ DO ~SetGlobal("X3milyFletchTopic","GLOBAL",1)~ + Emily.PFletching // ~Can you tell me more about Fletching?~ For Kale, replace with Sewing. For Vienxay, replace with wand crafting. 
END 

IF ~~ Emily.PCompanionThoughts 
SAY ~Which one exactly?~ 
// BG1
+~InParty("Dynaheir")~+ ~Dynaheir~ + Em.Dynaheir
+~InParty("Edwin")~+ ~Edwin~ + Em.Edwin
+~InParty("Jaheira")~+ ~Jaheira~ + Em.Jaheira 
+~InParty("Khalid")~+ ~Khalid~ + Em.Khalid 
+~InParty("Minsc")~+ ~Minsc~ + Em.Minsc 
+~InParty("Safana")~+ ~Safana~ + Em.Safana 
+~InParty("Viconia")~+ ~Viconia~ + Em.Viconia     
// EE 
+~InParty("Neera")~+ ~Neera~ + Em.Neera 
+~InParty("Rasaad")~+ ~Rasaad~ + Em.Rasaad 
+~InParty("Dorn")~+ ~Dorn~ + Em.Dorn 
+~InParty("Baeloth")~+ ~Baeloth~ + Em.Baeloth 
// SoD Only 
+~InParty("Glint")~+ ~Glint~ + Em.Glint 
+~InParty("Corwin")~+ ~Corwin~ + Em.Corwin 
+~InParty("mkhiin")~+ ~M'Khiin~ + Em.MKhiin 
+~InParty("Voghlin")~+ ~Voghlin~ + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Helga")~+ ~Vienxay~ + Em.Helga
+~InParty("X3Rec")~+ ~Recorder~ + Em.Recorder
+~InParty("X3Vien")~+ ~Vienxay~ + Em.Vienxay 
+~InParty("X3Kale")~+ ~Kale~ + Em.Kale 
+~InParty("c0aura")~+ ~Aura~ + Em.Aura 
+~InParty("c0Drake")~+ ~Drake~ + Em.Drake 
+~InParty("C0Sirene")~+ ~Sirene~ + Em.Sirene
+~InParty("L#1DVER")~ + ~Verrsza~ + Em.Verrsza
+~InParty("#Ishy")~ + ~Ishy~ + Em.Ishy 
// Myself 
+~ReputationGT(Player1,12)~+ ~Myself~ + Em.Me1 
+~ReputationLT(Player1,13)~+ ~Myself~ + Em.Me2
++ ~Nevermind~ EXIT  
END 

IF ~~ Em.Dynaheir 
SAY ~She's an inspiring woman. Her way of speech always gets me though.~
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY ~Do you think all red wizards are like him? He's a bit quirky, though I guess many wizards are a bit eccentric sometimes.~
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY ~Isn't his hamster adorable? Is it really a space hamster, though?  Or should we start to worry for Minsc's head? What is a space hamster anyway?~
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY ~For a nervous man, he possesses admirable courage.~  
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY ~She reminds me of my step-mother sometimes. And I say that as nicely as I can, for I do love my step-mother, even if some unpleasant times surface in my mind.~
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY ~Her wild magic makes me nervous sometimes. But she seems so okay about it, it's easy to forget how dangerous it can be.~
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY ~I'd much rather travel without him. But we're in this cause together.~
IF ~~ EXIT 
END 


IF ~~ Em.Safana 
SAY ~She's a bit much, isn't she? But I guess she's helpful, despite my reservations.~
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY ~A drow on the surface. It almost seems foolhardy to have her around to me, but I trust your judgement.~
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY ~He's handsome for a monk. But there's a troubled aspect to him, something that pains him. I wish I could tell what it was.~
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY ~I'm really not fond of the drow. He's arrogant as he is, and well, a drow. But as long as he is on our side, I guess.~
IF ~~ EXIT 
END 

IF ~~ Em.Glint 
SAY ~He's a friedly little gnome, isn't he? I quite like him.~
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY ~I've never seen someone so devoted to the cause. I don't think I could do that, I'd want some individuality.~
IF ~~ EXIT 
END 

IF ~~ Em.MKhiin 
SAY ~I would really rather not travel with a goblin. I'm still surprised our own allies haven't killed it.~
IF ~~ EXIT 
END 

IF ~~ Em.Helga 
SAY ~She's obsessed with battle. Such bloodlust. It's a bit concerning to me.~
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY ~He's not fully commited to the cause, to me. But who can blame someone for wanting a bit of legend and glory, I guess.~
IF ~~ EXIT 
END 

IF ~~ Em.Recorder 
SAY ~She's so diligent in keeping records of everything. Such fascination with the preservation of history. It makes me smile a little.~
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay 
SAY ~She's that snobbish elf you hear about and never want to met. She wouldn't be so bad if she wasn't constantly throwing insults with that tongue.~
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY ~How does he constantly keep drinking? It is quite strange behavior.~
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY ~She's so adorable. I didn't think I'd say that of a gnome. And her projects are quite interesting.~
IF ~~ EXIT 
END 

IF ~~ Em.Drake
SAY ~I don't think he's lying about who he is, but he's *really* not what I'd imagine for a noble or member of the Radiant Heart.~
IF ~~ EXIT 
END 

IF ~~ Em.Sirene
SAY ~It frustrates me that she's a better example of a person than Caelar. And yet I still can't bring myself to like her, not with horns like hers to remind me what she is.~
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza 
SAY ~Normally I'd love to be with a cat, but a Rakasha? This is a bad idea literally walking.~
IF ~~ EXIT 
END 

IF ~~ Em.Ishy 
SAY ~It's quite inspiring to see a half-orc amongst the rank of the Flaming Fist. It shows just how much we can really aspire to.~
IF ~~ EXIT 
END 

IF ~~ Em.Me1 
SAY ~Your heroism is charming, <CHARNAME>. I'm glad I walk beside you against the crusade.~
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY ~I'd like to see you do more for the people. There's a lot of potential here to change things for the better as we face this crusade.~ 
IF ~~ EXIT 
END 

IF ~~ Emily.PIDTalk1
SAY ~He's a sorcerer. I think his magic comes from his bloodline. His blood is more well, noticeable than mine, but neither of us are anything like Caelar.~
= ~I was around the border when to Amn when I saw him fleeing the Planar Hunters. I helped him find safety in Baldur's Gate, and that's when we saw all those refugees.~
= ~He's a bit brooding in his personality. Thinks before he speaks, and his gaze almost goes through you. It was unnerving at first.~
++ ~How many other Aasimar are out there? Do you think more flock to Caelar?~ + Emily.PIDTalk1Flock 
++ ~I am surprised we haven't seen more Planar Hunters in our own ranks.~ + Emily.PIDTalk1Hunters
++ ~So, I'm the more enticing, then?~ + Emily.PIDTalk1Entice  
END 

IF ~~ Emily.PIDTalk1Entice
SAY ~Oh, you are being silly. Or jealous? I can't tell what your angle is. As I said before, he has someone, a paladin in the Radiant Heart, even.~
= ~And he wasn't for me. Older, wiser. I want someone more...well, I've not thought of it. Learning about aasimar, and other aasimar, this crusade and the planar hunters. It's consumed all of my thinking.~
++ ~How many other Aasimar are out there? Do you think more flock to Caelar?~ + Emily.PIDTalk1Flock 
++ ~I am surprised we haven't seen more Planar Hunters in our own ranks.~ + Emily.PIDTalk1Hunters
END 

IF ~~ Emily.PIDTalk1Flock 
SAY ~Our bloodlines are really rare. I imagine many do not even know of Caelar's existence. But I think if they do, they might certainly entertain the thought.~
++ ~Do you want to meet others?~ + Emily.PIDTalk1Others
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PIDTalk1Hunters 
SAY ~I am too, to be honest, but I am glad they are not.~
= ~I think they are solitary, and they understand that if they reveal the true nature of their objective, their welcome in society may not be as warm.~
= ~The war effort might ignore it for a while, but it would be damaging to watch them afterwards. They are almost like necromancers, in how they prey after my innocent kin and the other plane touched for their blood and corpses.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PIDTalk1Others
SAY ~I do. I want to understand myself more. To know is so much better than to not know. When I was a girl, I had feathers on my shoulders. I thought it was something of my mother, perhaps she was an avariel.~
= ~But my father dismissed it as a magical accident, a reason to stay indoors.~
= ~Now I know he was lying, but not because my mother wasn't an avariel. But did not knowing keep me safe?~
++ ~Gorion kept my true father a secret for me. I am not sure I would have acted well had I known sooner.~ + Emily.PIDTalk1Secret
++ ~Fathers do it to protect, but I agree they were being over-protective.~ + Emily.PIDTalk1Protective
++ ~He was probably afraid of your power.~ + Emily.PIDTalk1Power
END 

IF ~~ Emily.PIDTalk1Secret 
SAY ~You are right, I think. I feel had I known earlier, I would have acted recklessly, maybe. Perhaps even like Caelar, with this arrogance rather than humility.~
= ~All things for a reason, hmm?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PIDTalk1Protective 
SAY ~Fathers and their children. Well, I suppose you can only blame them so much for going with their instincts.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PIDTalk1Power 
SAY ~I don't think there's any note-worthy power with me. I think he was just being an over-protective father out of love. But well, only he knows.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PIDTalk2 
SAY ~Jacob?~
IF ~!Dead("X32Jacob")Global("X32milyQuestSpawn","GLOBAL",4)~ + PID2.A 
IF ~Global("X32milyQuestSpawn","GLOBAL",5)~ + PID2.B 
IF ~Dead("X32Jacob")~ + PID2.C 
END 

IF ~~ PID2.A 
SAY ~I hate it, but we tried. It could have happened to me too, without friends to help me listen to reason.~
= ~Caelar's not...not evil. Not in the way you normally think. She's not a greedy merchant, or a lich, or some menacing brigand.~
= ~She's just a mislead person. And that makes Jacob's loss to her hard for me.~
++ ~There's a chance he may still live through this.~ + PID2.D 
++ ~Everyone must choose their side. We can't save everyone from bad choices.~ + PID2.E 
++ ~She is. But we will stop her.~ + PID2.D 
END 

IF ~~ PID2.B 
SAY ~Yeah, I'm glad you were able to persuade him. Without you, I'm not sure if I could have convinced him myself. Caelar is...very charismatic.~
++ ~Do you think you'll see him again?~ + PID2.G 
++ ~I'm glad he was able to listen to reason, too.~ + PID2.H
++ ~She is. But we will stop her.~ + PID2.G 
END 

IF ~~ PID2.C 
SAY ~He's dead. It's hard for me, and I'm still processing it, but thank you for checking on me.~
++ ~I'm here if you need to talk.~ + PID2.I 
++ ~He made his choice. He became the enemy.~ + PID2.J 
++ ~We'll stop Caelar. It won't be in vain.~ + PID2.F 
END 

IF ~~ PID2.D 
SAY ~I hope so. Maybe after this is over, and he somehow survives, we can talk about things, and he'll have seen the truth.~
IF ~~ + PID2.F 
END 

IF ~~ PID2.E 
SAY ~I guess not. But I still hope, after this is over, and he somehow survives, we can talk about things, and he'll have seen the truth.~ 
IF ~~ + PID2.F 
END 

IF ~~ PID2.F 
SAY ~That is the best I can hope for.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ PID2.G
SAY ~I hope so. Maybe after this is over, Jacob and I can talk about things, and things would be nice and peaceful for a while.~
IF ~~ + PID2.F 
END 

IF ~~ PID2.H 
SAY ~Maybe after this is over, we can even talk. I enjoyed his friendship. Maybe things would have settled down, and I can help some refugees on the way back to Tethyr.~
IF ~~ + PID2.F 
END 

IF ~~ PID2.I 
SAY ~Thank you. I just need some time, that is all.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ PID2.J 
SAY ~He...yes. But we could have maybe...maybe. *sigh*. I'd rather not dwell on it, really. I'm sorry.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PIDTalk3
SAY ~Really? I'm not really dressed up out here. None of the usual make up or dresses. They're not exactly appropriate for the occasion.~
++ ~You don't believe me?~ + PIDTalk3.A 
++ ~It's more than just your appearance. You have a beautiful heart.~ + PIDTalk3.B 
++ ~I'd have liked to see you in that.~ + PIDTalk3.O 
END 

IF ~~ PIDTalk3.A 
SAY ~Oh, I sound ungrateful. I do. I did get compliments at home too. It's just not something I thought someone would say out here. But it makes me smile.~
++ ~It's more than just your appearance. You have a beautiful heart.~ + PIDTalk3.B 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ PIDTalk3.B 
SAY ~Are you trying to get me to blush? I think it's working!~ 
IF ~CheckStatGT(Player1,11,CHR)~ + PIDTalk3.MH // The horror of using CHA for looks, but oh well. 
IF ~CheckStatLT(Player1,12,CHR)~ + PIDTalk3.C 
END 

IF ~~ PIDTalk3.MH 
SAY ~You're not so bad yourself, <PRO_LADYLORD> of Compliments. But we don't have time to exchange flatteries all day, you know. But you've definitely made my day. Thank you.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ PIDTalk3.C
SAY ~You've definitely made my day, heehee. thank you.~ 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ PIDTalk3.O
SAY ~Maybe one day, if we ever have some dressy occasion and not shooting arrows and clanging swords one.~
++ ~It's more than just your appearance. You have a beautiful heart.~ + PIDTalk3.B 
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 



IF ~~ Emily.PTethyr
SAY ~Well, Tethyr just got out of a really bad war. But, it's much better now! A queen stands on the throne and peace looks like it may finally come.~
= ~Well, relatively, anyway.~
++ ~What started the war?~ + Emily.PTWar // ~What started the war?~
++ ~Is Tethyr much like here?~ + Emily.PTHere // ~Is Tethyr much like here?~
++ ~Is Tethyr much like here?~ + Emily.PTQueen // ~Tell me of the queen, how did she come to power?~
++ ~Let's talk about something else.~ + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PTWar 
SAY ~Oh, someone decided it'd be a great idea to kill the entire royal family. Great way to cause chaos and burning pants.~
= ~It was a terrible event. Because of someone's selfish ambition, so many innocents were slaughtered in the chaos.~
= ~There are probably tomes written about it that say more. I was but a baby when it started.~
++ ~Is Tethyr much like here?~ + Emily.PTHere // ~Is Tethyr much like here?~
++ ~Tell me of the queen, how did she come to power?~ + Emily.PTQueen // ~Tell me of the queen, how did she come to power?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PTHere 
SAY ~Oh, not at all. Mountains, large forests. Lots of halflings, too, around the purple Marshes. And wild elves in the forest. But in other ways of your typical personalities in cities, I guess so!~
++ ~Tell me of the queen, how did she come to power?~ + Emily.PTQueen // ~Tell me of the queen, how did she come to power?~
++ ~What started the war?~ + Emily.PTWar // ~What started the war?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PTQueen
SAY ~She did it properly. She gathered the support of the people and restored order with her inspiring example. She was a fine adventurer, herself.~
= ~I would be happy to be half the woman she is.~
++ ~What started the war?~ + Emily.PTWar // ~What started the war?~
++ ~Is Tethyr much like here?~ + Emily.PTHere // ~Is Tethyr much like here?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletching 
SAY ~Fletching is a really critical part of archery. The shaft is simple. I mean, you don't a heavy shaft that's flimsy, and you probably want a sharp, piercing head on it.~
= ~But if the feather is chosen or attached poorly, it can affect its aerodynamics. Most use chicken feathers. Nothing a farmer would miss!~
++ ~How did you learn?~ + Emily.PFletchR1 // ~How did you learn?~ 
++ ~It sounds complicated.~ + Emily.PFletchR2 // ~It sounds complicated.~
++ ~How is stronger ammunition achieved?~ + Emily.PFletchR3 // ~How is stronger ammunition achieved?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletchR1 
SAY ~I watched some of the laborers in the estate. I just might have sneaked some materials in a new dress to practice working with once or twice, too.~
++ ~It sounds complicated.~ + Emily.PFletchR2 // ~It sounds complicated.~
++ ~How is stronger ammunition achieved?~ + Emily.PFletchR3 // ~How is stronger ammunition achieved?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletchR2 
SAY ~At first. Repetition gives you mastery, and soon enough it's as simple as any other task.~
++ ~How did you learn?~ + Emily.PFletchR1 // ~How did you learn?~ 
++ ~How is stronger ammunition achieved?~ + Emily.PFletchR3 // ~How is stronger ammunition achieved?~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PFletchR3 
SAY ~Enchanting, mostly. It's not something I'm versed in, I'm afraid, so its basic or element tipped shafts.~
++ ~How did you learn?~ + Emily.PFletchR1 // ~How did you learn?~ 
++ ~It sounds complicated.~ + Emily.PFletchR2 // ~It sounds complicated.~
++ ~Let's talk about something else.~  + Emily.PTalk // ~Let's talk about something else.~ 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ ~Can you upgrade a launcher for me?~ + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ ~Let's keep moving.~ EXIT // ~Let's keep moving.~
END 

IF ~~ Emily.PArchery1
SAY ~A tip? Don't miss. Hey, I'm serious now. Sometimes that one shot counts.~
IF ~~ EXIT 
END

IF ~~ Emily.PArchery2
SAY ~Quality equipment can make an enormous difference. Expensive arrows will aid you when it counts.~
IF ~~ EXIT 
END

IF ~~ Emily.PArchery3
SAY ~Never stand in front of your front line. That's silly. I saw a hobgoblin do that once. Didn't live long.~
IF ~~ EXIT 
END

IF ~~ FixString
SAY ~Haha. It's just a normal voice. Really! Really r-*cough*. *Hem*. Nevermind, let me just clear my throat. One second!~
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3EReset")~ EXIT 
END 
 
END
