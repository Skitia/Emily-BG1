/* Emily's SoD greetings dialogue */
BEGIN x32mily

IF ~AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)!Dead("X32EHK3S")~ THEN BEGIN Talk1 
SAY ~Phew, I'm glad they are gone. Though damn it. How am I going to get across and  catch up to Jacob now that the bridge is destroyed?~
++ ~Emily? Is that you?~ DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.1 
+~OR(2)!Global("X32milyInBG1","GLOBAL",1)!BeenInParty("X3mily")~+ ~Why are you trying to get across?~ DO ~SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.2
END 

IF ~AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)Dead("X32EHK3S")~ THEN BEGIN Talk1 
SAY ~Phew, I'm glad they are gone. Sorry for arriving so late to help. Though damn it. How am I going to get across and  catch up to Jacob now that the bridge is destroyed?~
++ ~Emily? Is that you?~ DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.1 
+~OR(2)!Global("X32milyInBG1","GLOBAL",1)!BeenInParty("X3mily")~+ ~Why are you trying to get across?~ DO ~SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.2
END

IF ~~ Talk1.1 
SAY ~<CHARNAME>? Sorry, I've been so tired from running I didn't recognize you.~
IF ~Race("X3mily",Aasimar)~ + Talk1.3A
IF ~!Race("X3mily",Aasimar)~ DO ~ChangeRace("X3mily",AASIMAR)~ + Talk1.3B // It's possible for Emily to not be an Aasimar if they were in the party before. We'll fix this now and acknowledge it.
END 

IF ~~ Talk1.2 
SAY ~My companion and I were trying to get to Caelar. We are...like her, to put it simply. But I do not think she sees what her actions are fully doing.~
++ ~I just spoke to Caelar. She is not easily persuaded.~ + Talk1.5
++ ~I hope you were not planning on joining her.~ + Talk1.6
++ ~These planar hunters, then. You are Aasimar?~ + Talk1.3C
END 

IF ~~ Talk1.3A
SAY ~I was trying to return home. I even met one of father's friends, one of the three voting nobles for right of succession, and I was supposed to meet them in Amn. But these planar hunters and this Crusade...it's delayed me.~
IF ~~ + Talk1.4 
END 

IF ~~ Talk1.3B 
SAY ~Well, after our little adventure, I learned I share similar blood to Caelar. It's not been the most pleasant of discoveries, only a distraction.~
IF ~~ + Talk1.4 
END 

IF ~~ Talk1.4 
SAY ~I found another aasimar, a man named Jacob who was fleeing these Planar Hunters as well. We were going to look into the crusade. We hoped together we might be able to show her what she was doing was wrong, or at least try to understand her.~
++ ~I just spoke to Caelar. She is not easily persuaded.~ + Talk1.5 
++ ~I hope you were not planning on joining her.~ + Talk1.6
END 

IF ~~ Talk1.3C 
SAY ~Yes. I didn't know until long ago, really. It's not something I want to detail, but to sum it shortly these Planar Hunters have been after me ever since the discovery.~
IF ~~ + Talk1.4 
END 

IF ~~ Talk1.5 
SAY ~It can't hurt to try, can it? She is powerful though, and she draws you into herself with her persona. If I hadn't seen the suffering first hand, I'd almost find her goal enticing.~
++ ~Why not join us?~ + Talk1.7
++ ~What will you do now?~ + Talk1.8
END 

IF ~~ Talk1.6 
SAY ~Erm. Well...we thought about doing that to be able to speak to her. But with the bridge gone, I suppose the only way to try to stop her is to join the expedition.~
++ ~The camp is just to the south, if you wish to assist.~ + Talk1.9
++ ~Why not join me?~ + Talk1.7
END 

IF ~~ Talk1.7
SAY ~Really? I'd love to. My bow is yours.~
IF ~~ DO ~AddJournalEntry(@1002,INFO)ActionOverride("cutspy",DestroySelf())
JoinParty()~ EXIT
END

IF ~~ Talk1.8 
SAY ~Well, I will probably join the expedition camp. I'm not catching Jacob, and I'm safer with the expedition, and there's a chance I might come across Caelar.~
++ ~The camp is just to the south, if you wish to assist.~ + Talk1.9
++ ~Why not join me?~ + Talk1.7
END 

IF ~~ Talk1.9
SAY ~Right. I'll go right over there. I'm sure they could use some help.~
IF ~~ DO ~ChangeAIScript("bdparty",RACE)SetGlobal("bd_joined","locals",0)SetGlobal("bd_npc_camp","locals",1)ActionOverride("cutspy",DestroySelf())~
EXIT
END

// Alternate Start. This is difficult to see occur unless a save starts post Coast way Crossing. It's similiar to the original, some lines are exactly the same.
IF ~!AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)~ THEN BEGIN Talk2.0
SAY ~It's good to stand up for a good cause, don't you think?~
++ ~Emily, is that you?~ + Talk2.1
+~!BeenInParty("X3mily")~+ ~Who are you?~ + Talk2.2
END 

IF ~~ Talk2.1 
SAY ~I recognize you now. <CHARNAME>, a pleasure.~
+~Race("X3mily",Aasimar)~+ ~What are you doing here?~ + Talk2.3A
+~!Race("X3mily",Aasimar)~+ ~What are you doing here?~ DO ~ChangeRace("X3mily",Aasimar)~ + Talk2.3B
++ ~It is good to see you. Why not join us?~ + Talk2.join
END 

IF ~~ Talk2.2 
SAY ~I am Emily Castel, an archer.~
IF ~~ + Talk2.3B 
END 

IF ~~ Talk2.3A
SAY ~I was trying to return home. I even met one of father's friends, one of the three voting nobles for right of succession, and I was supposed to meet them in Amn. But between planar hunters trying to hurt me and this Crusade...it's delayed me.~
IF ~~ + Talk2.4 
END 

IF ~~ Talk2.3B
SAY ~I was traveling with a companion before I lost them back at Coast Way Crossing. We were trying to get to Caelar. We are...like her, to put it simply. But I do not think she sees what her actions are fully doing.~
++ ~I have spoken to Caelar. She is not easily persuaded.~ + Talk2.5
++ ~I hope you were not planning on joining her.~ + Talk2.6
++ ~You are Aasimar?~ + Talk1.3C
END 

IF ~~ Talk2.4 
SAY ~I found another aasimar, a man named Jacob who was fleeing these Planar Hunters as well. We were going to look into the crusade. We hoped together we might be able to show her what she was doing was wrong, or at least try to understand her.~
++ ~I just spoke to Caelar. She is not easily persuaded.~ + Talk2.5 
++ ~I hope you were not planning on joining her.~ + Talk2.6
END 

IF ~~ Talk2.5 
SAY ~It can't hurt to try, can it? She is powerful though, and she draws you into herself with her persona. If I hadn't seen the suffering first hand, I'd almost find her goal enticing.~
++ ~Why not join my party?~ + Talk2.join
++ ~I must get going.~ + Talk2.8
END 

IF ~~ Talk2.8
SAY ~Of course. It was nice speaking to you.~
IF ~~ DO ~ChangeAIScript("bdparty",RACE)SetGlobal("bd_joined","locals",0)SetGlobal("bd_npc_camp","locals",1)~
EXIT
END

IF ~~ Talk2.6 
SAY ~Erm. Well...we thought about doing that to be able to speak to her. But that didn't work out, so joining the expedition seemed the best thing to have the opportunity.~
++ ~Why not join my party?~ + Talk2.join
++ ~I must get going.~ + Talk2.8
END 

IF ~~ Talk2.join
SAY ~Really? I'd love to. My bow is yours.~
IF ~~ DO ~AddJournalEntry(@1002,INFO)
JoinParty()~ EXIT
END


/* x32milyP.dlg, Emily's kickout dialogue for SoD */



/* By all checks this will never fire. */
IF ~AreaCheck("bd4700")
    GlobalLT("bd_plot","global",570)~ THEN BEGIN kickout_1
  SAY ~I'll stay and fight alongside you. May we triumph!~
  IF ~~ THEN DO ~SetGlobal("x3mily_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT
END

/* If kicked out in Korlasz's tomb */
IF ~OR(2)
      AreaCheck("bd0120")
      AreaCheck("bd0130")
    GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_2
  SAY ~Are you sure you want me to drop back?~
  ++ ~Yes, wait here.~ + kickout_3
  ++ ~No, stay with the group.~ + kickout_4
END

IF ~~ THEN BEGIN kickout_3
  SAY ~Oookay.~
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~~ THEN BEGIN kickout_4
  SAY ~That sounds more like it.~
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

/* kicked out somewhere else (not bd4700.are in Avernus, not Korlasz's tomb) */
IF ~GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_5
  SAY ~Are you sure you want me to leave?~
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
     GlobalLT("bd_npc_camp_chapter","global",5)
     OR(2)
       !Range("ff_camp",999)
       NextTriggerObject("ff_camp")
     !IsOverMe("xxBiff")~ + ~Yes, please go back to the camp.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_6
  ++ ~Just wait here for a while.~ + kickout_3
  ++ ~No, stay with the group.~ + kickout_4
END

IF ~~ THEN BEGIN kickout_6
  SAY ~Okay. Please, be safe.~
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN Emily.BattleOver 
SAY ~She couldn't be saved. I...I wish she could have seen reason.~
IF ~~ EXIT 
END 

/* join-up after leaving the group */
IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","locals",0)~ THEN join_again
  SAY ~Why is every dungeon so blasted cold? I'm freezing. Please tell me you want me to walk with you again.~ [Emildun]
  ++ ~Yes, please come along once more.~ + kickout_4
  ++ ~Just remain here and await my return, all right?~ + kickout_3
END

IF ~Global("bd_joined","locals",0)~ THEN join_again
  SAY ~Hey there, <CHARNAME>. It's nice to chat with these other expeditioners, I'm glad to fight alongside them. I would prefer to be out there with you, though.~
  ++ ~And I would love to have you once more.~ + kickout_4
  ++ ~Just remain here and await my return, all right?~ + kickout_3
  ++ ~Keep fletching. We'll need every arrow.~ + kickout_30 
END

IF ~~ THEN BEGIN kickout_30
  SAY ~You bet! Good luck out there.~
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END



IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("X32milyRomanceActive","global",2)~ postgame
SAY ~<CHARNAME>...~
+ ~Global("bd_player_exiled","global",0)~ + ~Emily...~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Emily...~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~Help me get out of this place, Emily.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Help me get out of this place, Emily.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + ~Go, Emily. I don't want to talk to you.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~Go, Emily. I don't want to talk to you.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad1
SAY ~If that's what you want. I just came to say I'm going home after this...by myself. I'm sorry.~
= ~I...goodbye.~
IF ~~ EXIT
END

IF ~~ postgamebad
SAY ~I didn't see the trial. I want to hear it from yourself though. What happened?~
++ ~I didn't do it. I was set up. Don't believe their lies.~ + postgamebad.1
++ ~You don't want to hear me tell the truth. You want to hear me say I did it.~ + postgamebad.1
++ ~Just go away, Emily.~ + postgamebad1
END

IF ~~ postgamebad.1
SAY ~Sometimes I wonder if I ignored the bad because of how I felt towards you. Was I really that naive?~
= ~I think I'll always care about you. But I can't stay. I'm going to go home...by myself. I'm sorry.~
= ~I...Goodbye <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ postgamegood.x
SAY ~I can't, <CHARNAME>...I'll be going home to Tethyr now. But know I'll never forget you.~
IF ~~ EXIT
END

IF ~~ postgamegood1
SAY ~You can't send me away that easily, <CHARNAME>.~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~I couldn't. Even if I could, we'd be fugitives. How far would we even get?~
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY ~Take my hand. I'm here for you. I can't break you out...I really wish I could, but I'm here.~
= ~I hate this. I hate this so much.~
++ ~I'm okay, Emily. Be strong for me.~ + postgamegood.1
++ ~We'll find a way. This won't be forever.~ + postgamegood.2
++ ~I'm glad someone cares at least.~ + postgamegood.3
++ ~If you're not planning on breaking me out of here, then go away.~ + postgamegood.x
END

IF ~~ postgamegood.1
SAY ~I can't, <CHARNAME>. After everything that's happened...I feel like I need you, and I'm not even the one caged.~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.2
SAY ~I really want to believe you. I'm usually optimistic...but this doesn't look good.~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.3
SAY ~Absolutely. I can't believe the people here were chanting murder...it's...it's terrible.~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.4
SAY ~*Sigh*. Whoever did this really wished to see you fall. If only the people could see the obvious!~
= ~I wish I could wait for you, to see how this plays out...to fight somehow for  you...but I don't think there's anything I can do, and I've delayed my troubles at home for so long.~
= ~I hope you can forgive me.~
++ ~Forget some dispute of who gets some estate! I need *you*, Emily. Don't go.~ + postgamegood.5
++ ~Help me get out of here. We can go together.~ + postgamegood.6
++ ~I understand Emily. Maybe one day we will meet again.~ + postgamegood.6
++ ~Just go, Emily~ + postgamegood.x
END

IF ~~ postgamegood.5
SAY ~I...I really wish, <CHARNAME>. I really wish but...~
IF ~~ + postgamegood.x
END

IF ~~ postgamegood.6
SAY ~I would like that. I would like that so much, to be out there with you.~
= ~And maybe if I close my eyes on the nights to come, I can dream about that.~
= ~I can dream and pretend it is a reality. But...it won't be.~
= ~I'll be going home now, <CHARNAME>. But I'll never forget you.~
IF ~~ EXIT
END
