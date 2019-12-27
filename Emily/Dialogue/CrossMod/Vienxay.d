
// Vienxay 1
CHAIN IF ~InParty("X3Vien")
See("X3Vien")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
Global("CrossEmilVien","LOCALS",0)~ THEN X3milyB ViEmiBanter1
@7 /*Why do you keep looking at me like that, Vienxay? */
DO ~SetGlobal("CrossEmilVien","LOCALS",1)~
== X3VienB @8 /* I am baffled a mutt like yourself has any cling to nobility. */
== X3milyB @9 /* I'm more of a bastard child, really. When that comes out I won't have much worth as one. */
== X3VienB @10 /* So your father seduced an elf. Typical. */
== X3milyB @11 /* We could add a condition here for Emily's quest later, for now: ~They were in love. But my mother understood that love could ruin my father's life.~ */
== X3VienB @12 /* No elf would willingly produce a mutt. */ 
== X3milyB @13 /* ~Isn't that the beauty of it? A surprise gift of true love. Me.~ */
== X3VienB @14 /* Gods, you're oblivious to my meaning and ungoadable. */ 
EXIT

// Vienxay 2
CHAIN IF ~InParty("X3Vien")
See("X3Vien")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
Global("CrossEmilVien","LOCALS",1)~ THEN X3milyB ViEmiBanter2
@15 // ~Why are you so mean to everyone, Vienxay?~
DO ~SetGlobal("CrossEmilVien","LOCALS",2)~
== X3VienB @16 // ~Because I am better than everyone, and have the right to be.~
== X3milyB @17 // ~That doesn't make any sense. You're just like the rest of us, with a messed up life trying to aid <CHARNAME>'s cause. 
== X3VienB @18 // ~I am an elf, mutt. A mage. A wielder of shadow magic. That makes me superior to anyone else, three times over.~
== X3milyB @19 // ~Power and parentage don't give you greatness, Vienxay. It's what you do.~
== X3milyB @20 // ~And you've fallen so low. From Evermeet, to the lowest rings of respect.~
== X3milyB @21 // ~But it's not too late. You can change, Vienxay.~
== X3VienB @22 // ~Don't preach to me, mutt. Be silent.~
== X3milyB @23 // ~I worry you'll never learn.~
EXIT 

// Vienxay 3
CHAIN IF ~InParty("X3Vien")
See("X3Vien")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
Global("X3VienQuestEnd","GLOBAL",2) // Replace this with the right variable to mark Vienxay's quest. 
Global("CrossEmilVien","LOCALS",2)~ THEN X3milyB ViEmiBanter3
@24 // ~So, what are you going to do, now that this business with your master is resolved.~
DO ~SetGlobal("CrossEmilVien","LOCALS",3)~
== X3VienB @25 // ~I'll continue to follow <CHARNAME>. It gives me time to think.~
== X3milyB @26 // ~There's no plans to try to return to Evermeet?~
== X3VienB @27 // ~Exiles are not short term affairs, mutt. They want me to learn. I could be kept away for life.~
== X3milyB @28 // ~I pity you. I'm not sure you deserve to never see home again. Not for an entire lifetime.~
== X3VienB @29 // ~I didn't ask for your pity, mutt. But, thank you, and whatever.~
EXIT 

// Vienxay 4 
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
Race("X3mily",Aasimar)  // Replace this with the right variable for Emily's revelation. 
Global("CrossEmilVien","LOCALS",3)~ THEN X3VienB ViEmiBanter4
@30 // ~So. It seems you really are a mix of everything. Mutt becomes ever more fitting.~
DO ~SetGlobal("CrossEmilVien","LOCALS",4)~
== X3milyB @31 // ~Why is everyone talking to me about this?~
== X3VienB @32 // ~Please. Aasimar is a by and large improvement to human. Still inferior to elf, of course.~
== X3milyB @33 // ~How do you even come up with that? Nevermind.~
== X3milyB @34 // ~I need to process this in peace. Can you just...treat me as the Emily you knew before?~
== X3VienB @35 // ~If you so badly want to be demoted on my tier of respect, by all means.~
EXIT 