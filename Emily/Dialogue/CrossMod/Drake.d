CHAIN IF
~IsValidForPartyDialogue("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilDrake","LOCALS",0)~ THEN X3milyB emily-Drake1
@0 //~You are the oldest, aren't you? In your family?~
DO ~SetGlobal("CrossEmilDrake","LOCALS",1)~
== BC0Drake @1 // ~I wasn't. But I am now.~
== X3milyB @2 // ~Oh I... I’m sorry. This got awkward.~
== BC0Drake @3 // ~You needn't worry. Gabriel inspired me. He was brilliant. I think you would have liked him.~
== X3milyB @4 // ~I'm not sure what it is like to have a likable brother. The status quo of myself and Thomas is bicker in front of each other and nothing else.~
== BC0Drake @5 // ~Gabriel wasn't like that. That sort of conflict was reserved to my father.~
== X3milyB @6 // ~Well that I don't know. I'm quite lucky to have a father like I did. I could be in an abbey humming some hymn right now being a bastard and all.~
== BC0Drake @7 // ~Heh. As long as they let you drink wine.~
EXIT 

CHAIN IF
~IsValidForPartyDialogue("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilDrake","LOCALS",1)~ THEN X3milyB emily-Drake2
@8 //~So, you're the heir of your family, since you're the oldest.~
DO ~SetGlobal("CrossEmilDrake","LOCALS",2)~
== BC0Drake @9 // ~Not something I am all pleased with, but it is my duty.~
== X3milyB @10 // ~It is a little stressful, don't you agree? Being a half-elf makes it a little harder for others to accept than I would like.~
== BC0Drake @11 // ~If I had a choice? I don't know if I would take it. Even now, it still feels like Gabriel's mantle.~
== X3milyB @12 // ~But that responsibility is important, for your family name and your legacy. You can't wait around for a squirrel to pick it up.~
== BC0Drake @13 // ~A squirrel huh? Where do you come up with sayings like that?~
== X3milyB @14 // ~You are changing the subject, aren't you? Oh very well then.~
EXIT 

CHAIN IF
~IsValidForPartyDialogue("C0Drake")
See("C0Drake")
Race("X3Emi",AASIMAR)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilDrake","LOCALS",2)~ THEN X3milyB emily-Drake3
@15 //~Can I ask your opinion on...what I am? An Aasimar, I mean, what do you think of it?~
DO ~SetGlobal("CrossEmilDrake","LOCALS",3)~
== BC0Drake @16 // ~What of it?~
== X3milyB @17 // ~Really? No shock, joy, or frustration?~
== BC0Drake @18 // ~Why would I feel any of those things?~
== X3milyB @19 // ~Well, I felt all those things, plus a slight amount of daze and. Probably in that order, even.~
== BC0Drake @20 // ~Do you want to act all holy and celestial?~
== X3milyB @21 // ~I-er...I don't really know what I am supposed to do.~
== BC0Drake @22 // ~You are Emily. Just do what Emily does.~
== X3milyB @23 // ~That's such great advice, Drake, thanks. I'm not more confused than when I started this conversation.~
EXIT 