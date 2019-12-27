BEGIN X3mily

CHAIN IF ~Global("X3milyMet","GLOBAL",0)~ THEN X3mily b1 
@0 //~Hey, I've been trying to get to Baldur's Gate. You wouldn't happen to be heading that way, would you?~ 
DO ~SetGlobal("X3milyMet","GLOBAL",1)~ 
== X3mily @2 // ~I heard my mother is there and I want to find her. I just need a company to go with, the roads aren't safe with the iron crisis. I'm capable, but not foolish.~
END
++ @3 EXTERN X3mily b1.1 // ~And who are you? You look like you are rather well off in life, couldn't you hire guards of your own?~ 
++ @4 EXTERN X3mily b1.2 // ~I'm not headed to Baldur's gate right now.~ 

CHAIN X3mily b1.1
@5 //~My name is Emily. I'm not with my family right now and don't have access to our family's vault to pay for standard guards. So I thought someone already looking like they were traveling might just want another skilled member.~
END
++ @6 EXTERN X3mily b1.3 // ~And what skills are those?~
++ @7 EXTERN X3mily b1.4 // ~I'm not in need of any more company.~
++ @8 EXTERN X3mily b1.4 // ~Not at this time.~
++ @9 EXTERN X3mily b1.5 // ~Say no more. If this is mutual beneficial as you suggest, you are welcome aboard.~

CHAIN X3mily b1.2
@10 // ~Maybe you would later perhaps? I don't mind sticking around for a while as long as we eventually go there. Ooh, it can be a trade of sorts, my skills for your company!~
END
++ @11 EXTERN X3mily b1.1 // ~You look rather well off to be an adventurer. Couldn't you just hire guards of your own?~
++ @12 EXTERN X3mily b1.4 // ~I'm not in need of your company.~
++ @13 EXTERN X3mily b1.4 // ~Don't beg me, girl. I said no.~

CHAIN X3mily b1.3
@14 // ~I'm specialized with crossbows and bows. If diplomacy doesn't work, I can take out bandits with a well placed bolt or arrow.~ 
END
++ @15 EXTERN X3mily b1.5 // ~I could use an archer. Join us.~
++ @16 EXTERN X3mily b1.6 // ~You've convinced me, as long as you understand there are other tasks that have priority for me.~
++ @17 EXTERN X3mily b1.4 // ~Ranged? Sounds cowardly, I'm not interested.~
++ @18 EXTERN X3mily b1.4 // ~I'm not in need of those skills or your company at the moment. Perhaps later.~

CHAIN X3mily b1.4
@19 // ~I...I understand. If you change your mind, I'll be in Beregost for a while longer, renting this room.~
EXIT

CHAIN X3mily b1.5
@20 // ~Amazing! Wonderful. Thank you! Oh,uh. Right. Let's get going.~
DO ~AddJournalEntry(@10001,USER)
JoinParty()~
EXIT

CHAIN X3mily b1.6
@21 // ~I understand like a lamb. Ooh, good rhyme. Right. Uh, your priorities first. Well, lead the way, boss.~
DO ~AddJournalEntry(@10001,USER)
JoinParty()~
EXIT 

APPEND X3mily

IF ~Global("X3milyMet","GLOBAL",1)~ b2 
SAY @22 /* ~Have you come back to take me along? Have you? I'm so ready.~ */
++ @23 /* ~I have. Join us.~ */ + b1.5
++ @24 /* ~Not at the moment.~ */ + b1.4
END 

// Remember that APPEND needs its own END //
END



