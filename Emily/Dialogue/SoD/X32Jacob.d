BEGIN X32Jacob 

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",1)~ THEN X32Jacob NoEmily
~Be careful, <PRO_GIRLBOY>. What is right is not always so easy to see. Good luck in the battles to come.~
EXIT

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",2)~ THEN X32Jacob Quest
~Emily? Could it be? You've made it! I've great news for you. The planar hunters...they made a move and were all cut down.~ 
== X32milyJ ~That's great! I was worried we would run into them ourselves.~
== X32Jacob ~And who is this, then, that you are with? A new friend? A lover?~
== X32milyJ IF ~Gender(Player1,MALE)~ THEN ~What? No! Nothing like that! This is...uh...~
== X32milyJ IF ~!Gender(Player1,MALE)~ THEN ~A friend, and nothing more. This is...uh...~
END 
++ ~<CHARNAME>. Nice to meet you.~ EXTERN X32Jacob QuestA
+~Gender(Player1,MALE)~+ ~Her lover.~ EXTERN X32milyJ QuestB
+~!Gender(Player1,MALE)~+ ~Her lover.~ EXTERN X32milyJ QuestC 
++ ~Just another mercenary.~ EXTERN X32Jacob QuestA

CHAIN X32Jacob QuestA 
~Preparing for the coming battle, lass? The nine hells themselves...Even I get a bit of dread.~
== X32milyJ ~Jacob...about that, is there somewhere we can talk that is private?~
== X32Jacob ~Mmm. Over here. Let's head east.~
DO ~AddJournalEntry(@1004, QUEST)SetGlobal("X32milyQuestSpawn","GLOBAL",3)MoveToPoint([4595.2421])~ 
EXIT 

CHAIN X32milyJ QuestB 
~Oh, now you're going along with it, are you? You're as bad as he is.~
END 
IF ~GlobalLT("X32milyRomanceActive","GLOBAL",2)~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",1)~ EXTERN X32Jacob QuestA
IF ~GlobalGT("X32milyRomanceActive","GLOBAL",1)~ EXTERN X32Jacob QuestA

CHAIN X32milyJ QuestC 
~Very funny, ha, ha.~
EXTERN X32Jacob QuestA

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",3)~ THEN X32Jacob Quest2
~So what is it, lass?~
== X32milyJ ~<CHARNAME>? Maybe you should start.~
END 
++ ~Are you sure we can trust him, Emily?~ EXTERN X32milyJ Quest2A 
++ ~Caelar's cause is not as goodly as it seems. I can tell you all that I've seen myself.~ EXTERN X32Jacob Quest2B 
++ ~What can you tell us about the fort's defenses?~ EXTERN X32Jacob Quest2C 
++ ~You should leave before you get killed. You're fighting for the wrong team.~ EXTERN X32Jacob Quest2D

CHAIN X32milyJ Quest2A 
~We can. I know it.~
== X32Jacob ~What are you talking about, lass?~
END 
++ ~Caelar's cause is not as goodly as it seems. I can tell you all that I've seen myself.~ EXTERN X32Jacob Quest2B 
++ ~What can you tell us about the fort's defenses?~ EXTERN X32Jacob Quest2C 
++ ~You should leave before you get killed. You're fighting for the wrong team.~ EXTERN X32Jacob Quest2C

CHAIN X32Jacob Quest2B 
~Mmm. You and Emily cannot back out of this commitment. You were telling anyone else, they'd kill you or turn you in.~
== X32milyJ ~That is why we are telling you. That was our original intention, Jacob. To try to dissuade her.~
EXTERN X32Jacob Quest2B2 

CHAIN X32Jacob Quest2B2 
~It's not possible, lass. She's...convincing, and stubborn at that.~
END 
++ ~Not as stubborn as myself. But if I cannot reason with her then we will battle.~ EXTERN X32Jacob Quest2D 
++ ~That is why she will fall. But there is no reason you have to join her in her bad choice.~ EXTERN X32Jacob Quest2D 
++ ~And you are fool. I'll cut you down if you remain standing with her.~ EXTERN X32Jacob Quest2F 

CHAIN X32Jacob Quest2C 
~Damnation. You are talking about betrayal here? Who are you fighting for?~
== X32milyJ ~We're with the coalition. Look Jacob, our original intention was to talk Caelar out of this, to dissuade her.~
EXTERN X32Jacob Quest2B2 

CHAIN X32Jacob Quest2D 
~What is right is not always easy to see, and many are blinded by her light.~
== X32Jacob ~There are good people here, mixed with some of the Crusade. Bad, too, greedy, blood-loving. Same for all armies, I suppose.~
== X32Jacob ~Minimize casualties. I ask this much of you. Agree to this, and I will not stand in your way.~
END 
+~Gender(Player1,MALE)~+ ~This is war, and I can make no promises. But I will do what I can, if you can help persuade any other doubters here.~ EXTERN X32Jacob Quest2EM 
+~Gender(Player1,FEMALE)~+ ~This is war, and I can make no promises. But I will do what I can, if you can help persuade any other doubters here.~ EXTERN X32Jacob Quest2EF
++ ~That is impossible! They have come at me of their own accord. You ask too much!~ EXTERN X32Jacob Quest2F 
++ ~Anyone in my way will be cut down, no mercy.~ EXTERN X32Jacob Quest2F 


CHAIN X32Jacob Quest2EM 
~I will try, lad.~
EXTERN X32Jacob Quest2E 

CHAIN X32Jacob Quest2EF 
~I will try, lass.~
EXTERN X32Jacob Quest2E 

CHAIN X32Jacob Quest2E 
~Protect Emily for me. She's a good friend. I'd hate to see her hurt.~
== X32milyJ ~Take care of yourself, Jacob. Please.~
== X32Jacob ~You worry too much, lass. I'm a more capable man than you realize.~
== X32milyJ ~Maybe. Well...be safe, my friend.~
== X32Jacob ~Aye, take care of yourself. And protect Emily for me, <PRO_GIRLBOY>. She's a good friend. I'd hate to see her hurt.~
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",5)EscapeArea()~ EXIT

CHAIN X32Jacob Quest2F 
~I do not see any reason then to help you. I will remain with the crusade.~
== X32milyJ ~Jacob...does this mean...?~
== X32Jacob ~I will avoid harming you at all costs, Emily. But I cannot not speak to you further, out of loyalty.~
== X32milyJ ~It does not have to be like that, Jacob!~
== X32Jacob ~There is nothing wrong with fighting for what you believe in, lass. There is a potential good in what Caelar does, even if you cannot see.~
== X32Jacob ~I will believe in that, as you should.~
END 
++ ~Goodbye then, Jacob.~ EXTERN X32Jacob Quest2G
++ ~You are a fool. Be hopeful it is not my blade that cuts you down in the end.~ EXTERN X32Jacob Quest2H 
++ ~I cannot let you live. You know too much and I cannot risk it.~ EXTERN X32Jacob Quest2I

CHAIN X32Jacob Quest2G 
~Aye. Goodbye.~
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)EscapeArea()~ EXIT

CHAIN X32Jacob Quest2H 
~For Emily's sake, I will avoid it at all costs.~ 
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)EscapeArea()~ EXIT

CHAIN X32Jacob Quest2I 
~Using an opportunity away and myself unwarded to attack? Ruthless. You've fallen in with a bad crowd, lass.~
== X32milyJ ~What are you doing, <CHARNAME>?! Please, stop!~
== X32Jacob ~Your friend has made their intentions. I am sorry lass, only one of us can leave this confrontation alive.~
DO ~Enemy()~ EXIT

