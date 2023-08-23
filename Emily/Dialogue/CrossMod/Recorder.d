// Emily - Recorder 1
CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",0)~ THEN X3milyB RemiBanter1
@0 // ~Your bow is so cute, Recorder.~ 
DO ~SetGlobal("CrossEmilRec","LOCALS",1)~
== X3RecB @1 // ~Thank you! I love to wear hair bows.~
== X3milyB @2 // ~Oooh. Maybe we could tie one onto your weapon too?~
== X3RecB @3 // ~Um, well...~
== X3milyB @4 // ~Hrm, maybe I could tie ribbons on my arrows. It's just so fashionable.~
== X3RecB @5 // ~Wouldn't it be wasted though, letting it fly into someone?~
== X3milyB @6 // ~I guess you're right. Can't waste an artsy arrow on the bandit it's going to pierce into.~
EXIT

// Emily - Recorder 2 

CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",1)~ THEN X3milyB RemiBanter2
@7 // ~You know Recorder, my father tried to have me get taught the harp.~ 
DO ~SetGlobal("CrossEmilRec","LOCALS",2)~
== X3RecB @8 // ~You're musically trained, Emily?~
== X3milyB @9 // ~Well, this is why I said try. I think I broke the harp, and the instructor never came back again. Just shook his head at me.~
== X3RecB @10 // ~Oh dear. How did you do that?~
== X3milyB @11 // ~I was practicing shooting an arrow in-between the strings, actually. Silly, I know. But I did manage it the second time.~
== X3RecB @12 // ~That's um...a little silly, yes.~
== X3milyB @13 // ~Father definitely settled with singing for me after that.~
== X3RecB @14 // ~I'd love to hear you sing sometime.~
== X3milyB @15 // ~Maybe after a lot of wine. I'd not want to remember!~
EXIT

// Emily - Recorder 3
CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",2)~ THEN X3milyB RemiBanter3
@16 // ~Recorder, don't most bards tend to exaggerate in their tales? Yet you seem focused on collecting the story as true to the core as possible.~ 
DO ~SetGlobal("CrossEmilRec","LOCALS",3)~
== X3RecB @17 // ~Exaggerating has its place to entertain, but the church wants accurate truths, even of the more swaggering paladins that assist us.~
== X3milyB @18 // ~It has set me up for disappointment. I almost thought I could do this while wearing some of my cute outfits back at home. But archery in a dress seems too difficult.~
== X3RecB @19 // ~I'm sorry. Heroines usually aren't as beautiful and flawless as they sound in songs.~
== X3milyB @20 // ~Oh you don't have to apologize. I'm just going to chastise that old performer that came around the keep.~
== X3RecB @21 // ~Maybe someday someone will invent a battle dress.~
== X3milyB @22 // ~If they do, I'm going to pick up outfits for us both. I want to fight cute. Always want to look your best, even if you're dead. Yikes, too grim Emily, too grim.~
EXIT

// Emily - Recorder 4
CHAIN IF ~InParty("X3mily")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossEmilRec","LOCALS",3)~ THEN X3milyB RemiBanter4
@23 // ~You've been doing so much scrawling in that book of yours, Recorder.~
DO ~SetGlobal("CrossEmilRec","LOCALS",4)~
== X3RecB @24 // ~I'm trying to capture everything. I'll have to clip out a bit, but I'm eager to read over it when everything is over.~
== X3milyB @25 // ~Out of everything you've got down in it, what is your favorite moment so far?~
== X3RecB @26 // ~It might seem a bit odd, but...talks like this. Chatting with friends like you when we're passing time before or after rest.~
== X3milyB @27 // ~Aww, that's such a nice answer. I've enjoyed your company too.~
== X3RecB @28 // ~I hope to enjoy it for the rest of our time together.~
EXIT

// Isaac - Recorder 1
CHAIN IF ~InParty("X3Isaac")
InParty("X3Rec")
See("X3Isaac")
!StateCheck("X3Isaac",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossIsaacRec","GLOBAL",0)~ THEN X3RecB RisaacBanter1
@29 // ~I understand you are from Neverwinter, Isaac? I have heard nothing but beautiful compliments of the place.~
DO ~SetGlobal("CrossIsaacRec","GLOBAL",1)~
== X3IsaacB @30
== X3RecB @31
== X3IsaacB @32
== X3RecB @33
== X3IsaacB @34
EXIT 

//Recorder 2
CHAIN IF ~InParty("X3Isaac")
InParty("X3Rec")
See("X3Isaac")
!StateCheck("X3Isaac",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossIsaacRec","GLOBAL",1)~ THEN X3IsaacB RisaacBanter2
@35 // ~Most bards are swindlers, but I've never seen you take a thing.~
DO ~SetGlobal("CrossIsaacRec","GLOBAL",2)~
== X3RecB @36
== X3IsaacB @37
== X3RecB @38
== X3IsaacB @39
== X3RecB @40
== X3IsaacB @41
== X3RecB @42
EXIT 

//Recorder 3

CHAIN IF ~InParty("X3Isaac")
InParty("X3Rec")
See("X3Isaac")
!StateCheck("X3Isaac",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossIsaacRec","GLOBAL",1)~ THEN X3IsaacB RisaacBanter2
@43 // ~What secret are you hiding, Recorder?~
DO ~SetGlobal("CrossIsaacRec","GLOBAL",2)~
== X3RecB @44
== X3IsaacB @45
== X3RecB @46
== X3IsaacB @47
== X3RecB @48
== X3IsaacB @49
EXIT 

//Recorder 4

CHAIN IF ~InParty("X3Isaac")
InParty("X3Rec")
InParty("X3mily")
Race("X3mily",Aasimar)
See("X3Isaac")
!StateCheck("X3Isaac",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
Global("CrossIsaacRec","GLOBAL",3)~ THEN X3RecB RisaacBanter4
@50 // ~What secret are you hiding, Recorder?~
DO ~SetGlobal("CrossIsaacRec","GLOBAL",4)~
== X3IsaacB @51
== X3RecB @52
== X3IsaacB @53
== X3RecB @54
== X3IsaacB @55
== X3RecB @56
== X3IsaacB @57
== X3RecB @58
== X3IsaacB @59
EXIT 