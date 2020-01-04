
// Kale 1
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossEmilKale","LOCALS",0)~ THEN X3KaleB KaEmiBanter1
@15 // ~Sooo. Your mom.~ 
DO ~SetGlobal("CrossEmilKale","LOCALS",1)~
== X3milyB @16 // ~Me?~
== X3KaleB @17 // ~Yeah. Your step-mom, as it would be, right? Is she miffed about your da planting a crop outside the farm?~
== X3milyB @18 // ~What?~
== X3KaleB @19 // ~You don't know that phrase? What about going around the block. Sowing the neighbor's field. Plunging into...~
== X3milyB @20 // ~I'm going to cover my ears now.~
== X3KaleB @21 // ~I'm saying, how mad is she? I were in her place, I'm not sure if I could share a burrow with the lady or the tot.~
== X3milyB @22 // ~It's complicated. And none of your business. They love eachother, that's all that matters.~
== X3KaleB @23 // ~Who's to say there aren't others? You think you might have more half-sibs out there? Once around, twice around, they say.~
== X3milyB @24 // ~We are not talking about this. This conversation? It is over.~
EXIT

// Kale 2
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossEmilKale","LOCALS",1)~ THEN X3milyB KaEmiBanter2
@25 // ~She's not mad.~ 
DO ~SetGlobal("CrossEmilKale","LOCALS",2)~
== X3KaleB @26 // ~Look who's finally talkative about it.~
== X3milyB @27 // ~You were making it...weird and gross.~
== X3milyB @28 // ~She was very brave and kind about the whole daughter of a former lover.~
== X3milyB @29 // ~I was raised as one of her own. Literally, just about.~
== X3KaleB @30 // ~Damn. Where are such gloriously sweet women found?~
== X3milyB @31 // ~Definitely not in the places of the city you're looking.~
EXIT 

/* This appears when Kale's quest is done. */
// Kale 3 
CHAIN IF ~InParty("X3Kale")
See("X3Kale")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("KaleBrother","GLOBAL",2) // Replace this with Kale's post brother variable 
Global("CrossEmilKale","LOCALS",2)~ THEN X3milyB KaEmiBanter3
@32 // ~You don't seem to get along with your brother anymore than I do mine.~ 
DO ~SetGlobal("CrossEmilKale","LOCALS",3)~
== X3KaleB @33 // ~Me and Sammy? Samuel's a lazy bone. I love him, but he's also an idiot.~
== X3milyB @34 // ~My younger brother is a spoiled brat. He thinks the world, well the world he knows, should revolve around him.~
== X3KaleB @35 // ~Well, you seem a bit spoiled to me, too.~
== X3milyB @36 // ~I am *not* spoiled.~
== X3KaleB @37 // ~Come on. Loved on like a doll by your father, even your stepmother bending over to raise you right. Not everyone gets that.~
== X3milyB @38 // ~I've worked hard, to.~
== X3KaleB @39 // ~I'm not saying you haven't! Just saying you did get an easy raising.~
== X3milyB @40 // ~I don't know whether to concede and admit you have a point, or be angry at you.~
== X3KaleB @41 // ~I'd love to hear how right I am.~
== X3milyB @42 // ~Angry it is.~
EXIT 

/* This appears when Emily's Quest is done. */
// Kale 4 
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Race("X3mily",Aasimar) 
Global("CrossEmilKale","LOCALS",3)~ THEN X3KaleB KaEmiBanter4
@43 // ~Sooo. Your other mom.~ 
DO ~SetGlobal("CrossEmilKale","LOCALS",4)~
== X3milyB @44 // ~I'd really rather not talk about it, Kale.~ 
== X3KaleB @45 // ~I can't think of anything more interesting to talk about it.~
== X3KaleB @46 // ~What blood don't you got? Might be a whole line of affairs with different bloods.~
== X3milyB @47 // ~That's not how it works. It's very distant. And I don't want to talk about it.~
== X3KaleB @48 // ~Why not? I'd be bragging about it if I had some celestial in my background. Heck, maybe I do, and I just don't know it.~
== X3milyB @49 // ~Because I don't want to talk about it.~
== X3KaleB @50 // ~Sheesh, touchy. Well, go back to constantly thinking about it, then. Keep it all inside, that's working out well for you, lass.~
== X3milyB @51 // ~Just leave me alone.~
EXIT 
