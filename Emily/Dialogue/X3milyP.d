BEGIN X3milyP

// Player kicking out Emily.

IF ~Global("X3milyKickedOut","GLOBAL",0)~ kicked1
SAY @1 /*~I understand you wish to part for now, but can I ask you change your mind? I want to continue with you.~*/
++ @2 /*~I'm sorry, my mistake. Stay with me.~ */ DO ~JoinParty()~ EXIT
++ @3 /*Leave for now. If you're in Beregost, I may come find you there if I need you in the future.*/ DO ~SetGlobal("X3milyKickedOut","GLOBAL",1)~ + p1.1
++ @9 /*~Stay here for now.~*/ DO ~SetGlobal("X3milyKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END

IF ~~ p1.1 
SAY @10 // ~I'm disappointed, but as you wish. I'll be in the Feldepost Inn, at least for a time until personal business calls. I do hope you find me and change your mind.~
IF ~~ DO ~EscapeAreaMove("%bg1_eet_symbol%3351",625,621,E)~ EXIT 
END 


// Emily previously kicked out, and not in party. 

IF ~Global("X3milyKickedOut","GLOBAL",1)~ kicked2
SAY @4 //~You're back! I'm ready to go if you'll have me.~
++ @5 /*~I will. Join me.~*/ + b3.1
++ @6 /* ~Not at the moment.~*/ + b3.2
END 

IF ~~ b3.1
SAY @7 /* ~Well and good! I'm ready to set off. Lead on!~ */
IF ~~ DO ~SetGlobal("X3milyKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @8 /* ~Well, if you do, I'm still here for a while.~ */
IF ~~ EXIT
END

