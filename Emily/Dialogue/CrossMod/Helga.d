
// Helga 1
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",0)~ THEN X3HelgaB HemiBanter1
@0 // ~There's not much honor in shooting your opponent from afar.~
DO ~SetGlobal("CrossEmilHelga","GLOBAL",1)~
== X3milyB @1 // ~It's strategically necessary, isn't it? I don't want my enemy to poke me red.~
== X3HelgaB @2 // ~Perhaps if it be some of the time, but that be your modus, lass.~
== X3milyB @3 // ~What's so bad about that?~
== X3HelgaB @4 // ~Ain't no bloody honor in it.~
== X3milyB @5 // ~I'm not fighting for some code of honor. I'm just trying to help.~
== X3HelgaB @6 // ~If ye really want to make a difference, ye'll learn how to fight close up.~
== X3milyB @7 // ~That just seems backwards to me. I'm just going to stick with what works.~
EXIT

// Helga 2
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",1)~ THEN X3milyB HemiBanter2
@8 // ~Are you okay, Helga?~
DO ~SetGlobal("CrossEmilHelga","GLOBAL",2)~
== X3HelgaB @9 // ~Restless for the next battle, but I nay be a whelp either. What ye getting at?~
== X3milyB @10 // ~You just always seem so tense.~
== X3HelgaB @11 // ~Lass, if ye want to survive, ye need to always be battle ready.~
== X3milyB @12 // ~We can come off unfriendly if we're always expecting someone to jump at us.~
== X3HelgaB @13 // ~Better to strike too quickly than too slowly, lass. Just remember that.~
== X3milyB @14 // ~Well then, I think we're at a second disagreement.~
== X3HelgaB @15 // ~Then be a fool then. Bah!~
EXIT

// Helga 3
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",2)~ THEN X3HelgaB HemiBanter3
@16 // ~Maybe ye be right, lass.~
DO ~SetGlobal("CrossEmilHelga","GLOBAL",3)~
== X3milyB @17 // ~Hrm? Who are you speaking to?~
== X3HelgaB @18 // ~Yer little pecking with your arrows has been consistently helpful. I judged it as lesser and maybe I shouldn't have.~
== X3milyB @19 // ~I'm glad you've reconsidered. Maybe you'll want to try the bow yourself?~
== X3HelgaB @20 // ~I said ye might be right, not start using yer bloody stupid weapon. Bah!~
== X3milyB @21 // ~Well, it couldn't hurt to at least try my chances!~
EXIT

// Helga 4 
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",3)~ THEN X3milyB HemiBanter4
@22 // ~Are you healing yourself when we rest, Helga?~
DO ~SetGlobal("CrossEmilHelga","GLOBAL",4)~
== X3HelgaB @23 // ~If needed. Why?~
== X3milyB @24 // ~It's just you seem a bit in pain sometimes before we set off on the day's travel. From what I've seen, anyway.~
== X3HelgaB @25 // ~Healing magic doesn't do everything, sometimes.~
== X3milyB @26 // ~I could ask <CHARNAME> to slow down a little.~
== X3HelgaB @27 // ~That would nay be helping lass, that'd make it worse.~
== X3milyB @28 // ~Well, is there anything I can do to make it easier?~ 
== X3HelgaB @29 // ~One thing, lass.~
== X3milyB @30 // ~Name it.~
== X3HelgaB @31 // ~Don't talk about it. I will fight as tough as I always have, and I nay want anyone worrying over me. Got it?~
== X3milyB @32 // ~That just seems silly to me...but if you're sure, I won't coddle you about it.~
== X3HelgaB @33 // ~Thank ye, lass. It may sound stubborn of me...but I do care about me pride.~
EXIT 

// Isaac Helga 1
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Isaac")
Global("CrossIsaacHelga","GLOBAL",0)~ THEN X3HelgaB HisaacBanter1
@34
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",1)~
== X3IsaacB @35
== X3HelgaB @36
== X3IsaacB @37
== X3HelgaB @38
== X3IsaacB @39
EXIT 

// Isaac Helga 2
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Helga")
Global("CrossIsaacHelga","GLOBAL",1)~ THEN X3IsaacB HisaacBanter2
@40
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",2)~
== X3HelgaB @41
== X3IsaacB @42
== X3HelgaB @43
== X3IsaacB @44
EXIT 

// Isaac Helga 3
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Isaac")
Global("CrossIsaacHelga","GLOBAL",2)~ THEN X3HelgaB HisaacBanter3
@46
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",3)~
== X3IsaacB @47
== X3HelgaB @48
== X3IsaacB @49
== X3HelgaB @50
== X3IsaacB @51
== X3HelgaB @52
== X3IsaacB @53
== X3HelgaB @54
EXIT 

// Isaac Helga 4
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Isaac")
InParty("X3mily")
Global("CrossIsaacHelga","GLOBAL",3)~ THEN X3HelgaB HisaacBanter4
@55
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",4)~
== X3IsaacB @56
== X3HelgaB @57
== X3IsaacB @58
== X3HelgaB @59
== X3IsaacB @60
EXIT 
