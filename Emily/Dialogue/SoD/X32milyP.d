/* x32milyP.dlg, Emily's kickout dialogue for SoD */
BEGIN ~x32milyP~

/* If kicked out in Avernus (so Caelar can join) in bd4700.are
This sets Global("xxBiff_kicked_bd4700","global",1) which is used in xxbdcut59b.baf */
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
  SAY ~Hey there, <CHARNAME>. The expedition seems quite happy to have a fletcher help out. I would prefer to be out there with you, though.~
  ++ ~And I would love to have you once more.~ + kickout_4
  ++ ~Just remain here and await my return, all right?~ + kickout_3
  ++ ~Keep fletching. We'll need every arrow.~ + kickout_30 
END

IF ~~ THEN BEGIN kickout_30
  SAY ~You bet! Good luck out there.~
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END
