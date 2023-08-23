BEGIN X3IsaacB

// Alora #1
CHAIN
IF ~IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("X3Isaac")
See("ALORA")
Global("X3IsaacAlora","GLOBAL",0)~ THEN X3IsaacB X3IsaacAlora1
@0 // You remind me when I first indulged in thievery. I was just a kid then, trying to survive and enjoy life.
DO ~SetGlobal("X3IsaacAlora","GLOBAL",1)~
== %ALORA_BANTER% @1 // Were you a smiler back then? You never smile.
== X3IsaacB @2 // After a good catch. The clean jobs always brought satisfaction. But a getaway after you got caught? There was a joy in that. A rush in your blood. 
== %ALORA_BANTER% @3 // I really enjoy that. I don't always get away, but a little cheer and joy and the guards seem to think nothing of it.
== X3IsaacB @4 // I don't think that would work with me. I'm afraid appearances would make that too difficult.
== %ALORA_BANTER% @5 // You could try! Just smile, even once for me.
== X3IsaacB @6 // ~When I've had my revenge? On that day, you'll see a smile.~
EXIT 

// Alora #2
CHAIN
IF ~IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("X3Isaac")
See("ALORA")
Global("X3IsaacAlora","GLOBAL",1)~ THEN X3IsaacB X3IsaacAlora2
@7 // ~You should be more patient with door locks. Slower is better.~
DO ~SetGlobal("X3IsaacAlora","GLOBAL",2)~
== %ALORA_BANTER% @8 //~I just want to get it open as fast as I can so I can see what's on the other side.~
== X3IsaacB @9 // ~That is why you take your time. Listen to the little clinks. The ear is your more reliable sense. The best lockbreakers don't need their eyes.~ 
== %ALORA_BANTER% @10 // ~I could just pickpocket a key. Then I would need my eyes.~
== X3IsaacB @11 // ~You aren't listening, are you?~
== %ALORA_BANTER% @12 // ~Nope, heehee.~
== X3IsaacB @13 // ~*sigh*. Do as you see fit, halfling.~
EXIT 

// Alora #3
CHAIN
IF ~IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacAlora","GLOBAL",2)~ THEN %ALORA_BANTER% X3IsaacAlora3
@14 // ~You were right, Isaac. I think I'm getting a better understanding of lock breaking. That trick about listening, it makes a lot of sense now.~
DO ~SetGlobal("X3IsaacAlora","GLOBAL",3)~
== X3IsaacB @15 // ~I...didn't mean to come off as better-than-thou before, Alora.~ 
== %ALORA_BANTER% @16 // ~I know, I'm being silly. I think you're the first person to take my skills seriously, even take an interest in them.~
== X3IsaacB @17 // ~Thieves are not enemies of other thieves. Only our targets.~
== %ALORA_BANTER% @18 // ~Thank you, Isaac. But...what if they are aiming for the same target?~
== X3IsaacB @19 // ~Heh. Then hopefully they work together. Good thieves have honor, treat eachother like family. Betraying the family is the worst thing you can do.~
== %ALORA_BANTER% @20 // ~Um, are you okay Isaac? You were actually smiling for a second, but now it's gone.~
== X3IsaacB @21 // ~It's nothing. Let's move on. We've chatted long enough.~
EXIT 

//Alora #4
CHAIN
IF ~IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacAlora","GLOBAL",3)~ THEN %ALORA_BANTER% X3IsaacAlora4
@22 // ~Did I say something wrong before? I never see you cheerful, then I said something and you looked glum.~
DO ~SetGlobal("X3IsaacAlora","GLOBAL",4)~
== X3IsaacB @23 // ~I've been chasing vengeance over a betrayal for a long time, Alora.~ 
== %ALORA_BANTER% @24 // ~Why? What did they do to you?~
== X3IsaacB @25 // ~They turned on their family. We Planar Hunters...we are not a group of thieves, not like my family growing up. But we were close. We were...friends finding a purpose together. I miss the times before that happened.~
== %ALORA_BANTER% @26 // ~I'll never betray you Isaac. You'll always be a friend to me.~
== X3IsaacB @27 // ~You're a weird one, Alora. But I will say, I trust you entirely. I know you'll have my back.~
== %ALORA_BANTER% @28 // ~Hey you're smiling again!~
== X3IsaacB @29 // ~It's something about you. You're persistent. I'm glad to have you along, halfling. You're good for me.~
EXIT 

//Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacViconia","GLOBAL",0)~ THEN %VICONIA_BANTER% X3IsaacViconia1
@30 // ~You are more tolerable than other surfacers, Isaac. Strong, handsome, not as stupid. Tell me, what sort of pleasures do you enjoy?~
DO ~SetGlobal("X3IsaacViconia","GLOBAL",1)~
== X3IsaacB @31 // ~Nothing that you are offering, Viconia.~ 
== %VICONIA_BANTER% @32 // ~There are men who would crawl across spiked pits merely to kiss the palm of my hand.~
== X3IsaacB @33 // ~I imagine for them it is worth all the pain in the world. For me it is worth nothing.~
EXIT 

//Viconia #2
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacViconia","GLOBAL",1)~ THEN %VICONIA_BANTER% X3IsaacViconia2
@34 // ~Your planar hunters, Isaac. It is led by a female, yes?~
DO ~SetGlobal("X3IsaacViconia","GLOBAL",2)~
== X3IsaacB @35 // ~Was. Now the leader is under question.~ 
== %VICONIA_BANTER% @36 // ~It still seems like she has you all under her attention, getting you to follow after her like lost puppies.~
== X3IsaacB @37 // ~If lost puppies want to bleed the blood out of your body, you could say that.~
== %VICONIA_BANTER% @38 // ~Sometimes. So long as you were stronger, they would bend and obey. By all I understand, she is still the stronger. By that right you should follow in line.~
== X3IsaacB @39 // ~She lost that right when she betrayed us.~
== %VICONIA_BANTER% @40 // ~Betrayal happens all the time in my home. You surfacers are so sensitive about the matter.~
== X3IsaacB @41 // ~It is... deeper than that. But I will not discuss this further with you.~
EXIT 

//Quayle #1
CHAIN
IF ~IsValidForPartyDialogue("Quayle")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacQuayle","GLOBAL",0)~ THEN %QUAYLE_BANTER% X3IsaacQuayle1
@42 // ~Stay away from my spell tome, you! It is my tome.~
DO ~SetGlobal("X3IsaacQuayle","GLOBAL",1)~
== X3IsaacB @43 // ~As, so you saw me. You've a good eye and a good brain.~
== %QUAYLE_BANTER% @44 // ~Maybe you're not so dumb after all. What are you tryin to do, understand magic? It's off limits.~
== X3IsaacB @45 // ~~And if I asked for your instruction?~
== %QUAYLE_BANTER% IF ~!Class("X3Isaac",MAGE_ALL)~ THEN @46 // ~You're not a mage. What good would it do for you?~
== X3IsaacB IF ~!Class("X3Isaac",MAGE_ALL)~ THEN @47 // ~Even if I don't use magic, it would help me understand my enemies. Many who associate with outsiders are mages.~
== %QUAYLE_BANTER% IF ~!Class("X3Isaac",MAGE_ALL)~ THEN @48 // ~I could try, but it is a hard road ahead for you!~
== %QUAYLE_BANTER% IF ~Class("X3Isaac",MAGE_ALL)~ THEN @49 // ~A mage in the works, are you? I could try, but it is a hard road ahead!~
== X3IsaacB @50 //~I accept the challenge, Quayle.~
EXIT 

//Quayle #2
CHAIN
IF ~IsValidForPartyDialogue("Quayle")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacQuayle","GLOBAL",1)~ THEN %QUAYLE_BANTER% X3IsaacQuayle2
@51 // ~You're a quicker learner than I thought, Isaac.~
DO ~SetGlobal("X3IsaacQuayle","GLOBAL",2)~
== X3IsaacB @52 // ~Thievery and magic are not as different as you think. A lot of logic is needed to problem solve to survive. In the end, that's all that it is.~
== %QUAYLE_BANTER% @53 // ~Well you got that wrong entirely! We'll now start your theological learning, and teach you about Baravar Cloakshadow.~
== X3IsaacB @54 // ~You disagree with me, don't say why you disagre with me, and now aim to teach me about a gnome god I have no intention of worshipping?~
== %QUAYLE_BANTER% @55 // ~I don't have time for stupidity. This is the smart way!~
== X3IsaacB @56 // ~You're a good teacher, Quayle. But you are annoying. We're done here.~
EXIT


//Branwen #1
CHAIN
IF ~IsValidForPartyDialogue("Branwen")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacBranwen","GLOBAL",0)~ THEN %BRANWEN_BANTER% X3IsaacBranwen1
@57 // ~You're a quicker learner than I thought, Isaac.~
DO ~SetGlobal("X3IsaacBranwen","GLOBAL",1)~
== X3IsaacB @58
== %BRANWEN_BANTER% @59
== X3IsaacB @60
== %BRANWEN_BANTER% @61
== X3IsaacB @62
EXIT 

//Branwen #2
CHAIN
IF ~IsValidForPartyDialogue("Branwen")
IsValidForPartyDialogue("X3Isaac")
See("Branwen")
Global("X3IsaacBranwen","GLOBAL",1)~ THEN X3IsaacB X3IsaacBranwen2
@63 // ~You're a quicker learner than I thought, Isaac.~
DO ~SetGlobal("X3IsaacBranwen","GLOBAL",2)~
== %BRANWEN_BANTER% @64
== X3IsaacB @65
== %BRANWEN_BANTER% @66
== X3IsaacB @67
== %BRANWEN_BANTER% @68
== X3IsaacB @69
EXIT 

//Coran #1
CHAIN
IF ~IsValidForPartyDialogue("Coran")
IsValidForPartyDialogue("X3Isaac")
See("Coran")
Global("X3IsaacCoran","GLOBAL",0)~ THEN X3IsaacB X3IsaacCoran1
@70
DO ~SetGlobal("X3IsaacCoran","GLOBAL",1)~
== %CORAN_BANTER% @71
== X3IsaacB @72
== %CORAN_BANTER% @73
== X3IsaacB @74
== %CORAN_BANTER% @75
== X3IsaacB @76
EXIT 

//Coran #2
CHAIN
IF ~IsValidForPartyDialogue("Coran")
IsValidForPartyDialogue("X3Isaac")
See("Coran")
Global("X3IsaacCoran","GLOBAL",1)~ THEN %CORAN_BANTER% X3IsaacCoran2
@77 // ~You sure seem passionate about this Mavis you are chasing.~
DO ~SetGlobal("X3IsaacCoran","GLOBAL",2)~
== X3IsaacB @78
== %CORAN_BANTER% @79
== X3IsaacB @80
== %CORAN_BANTER% @81
== X3IsaacB @82
== %CORAN_BANTER% @83
EXIT 

//DORN #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Isaac")
See("DORN")
Global("X3IsaacDorn","GLOBAL",0)~ THEN %DORN_BANTER% X3IsaacDorn1
@84
DO ~SetGlobal("X3IsaacDorn","GLOBAL",1)~
== X3IsaacB @85
== %DORN_BANTER% @86
== X3IsaacB @87
EXIT 

//DORN #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Isaac")
See("DORN")
Global("X3IsaacDorn","GLOBAL",1)~ THEN X3IsaacB X3IsaacDorn2
@88 // ~You sure seem passionate about this Mavis you are chasing.~
DO ~SetGlobal("X3IsaacDorn","GLOBAL",2)~
== %DORN_BANTER% @89
== X3IsaacB @90
== %DORN_BANTER% @91
== X3IsaacB @92
EXIT

//XAN #1
CHAIN
IF ~IsValidForPartyDialogue("Xan")
IsValidForPartyDialogue("X3Isaac")
See("XAN")
Global("X3IsaacXAN","GLOBAL",0)~ THEN X3IsaacB X3IsaacXan1
@93 // ~Moonblade. They got any moondaggers?~
DO ~SetGlobal("X3IsaacXAN","GLOBAL",1)~
== %XAN_BANTER% @94
== X3IsaacB @95
== %XAN_BANTER% @96
== X3IsaacB @97
EXIT 

//XAN #2
CHAIN
IF ~IsValidForPartyDialogue("Xan")
IsValidForPartyDialogue("X3Isaac")
See("XAN")
Global("X3IsaacXAN","GLOBAL",1)~ THEN X3IsaacB X3IsaacXan2
@98 // ~You sure seem passionate about this Mavis you are chasing.~
DO ~SetGlobal("X3IsaacXAN","GLOBAL",2)~
== %XAN_BANTER% @99
== X3IsaacB @100
== %XAN_BANTER% @101
== X3IsaacB @102
EXIT


//GARRICK #1
CHAIN
IF ~IsValidForPartyDialogue("Garrick")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacGARRICK","GLOBAL",0)~ THEN %GARRICK_BANTER% X3IsaacGarrick1
@103
DO ~SetGlobal("X3IsaacGARRICK","GLOBAL",1)~
== X3IsaacB @104
== %GARRICK_BANTER% @105
== X3IsaacB @106
EXIT 

//GARRICK #2
CHAIN
IF ~IsValidForPartyDialogue("Garrick")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacGARRICK","GLOBAL",1)~ THEN %GARRICK_BANTER% X3IsaacGarrick2
@107 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacGARRICK","GLOBAL",2)~
== X3IsaacB @108
== %GARRICK_BANTER% @109
== X3IsaacB @110
== %GARRICK_BANTER% @111
== X3IsaacB @112
EXIT

//Rasaad #1
CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacRASAAD","GLOBAL",0)~ THEN %RASAAD_BANTER% X3IsaacRasaad1
@113 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacRASAAD","GLOBAL",1)~
== X3IsaacB @114
== %RASAAD_BANTER% @115
== X3IsaacB @116
== %RASAAD_BANTER% @117
== X3IsaacB @118
== %RASAAD_BANTER% @119
== X3IsaacB @120
EXIT


//Rasaad #2
CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacRASAAD","GLOBAL",1)~ THEN X3IsaacB X3IsaacRasaad2
@121 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacRASAAD","GLOBAL",2)~
== %RASAAD_BANTER% @122
== X3IsaacB @123
== %RASAAD_BANTER% @124
== X3IsaacB @125
== %RASAAD_BANTER% @126
== X3IsaacB @127
EXIT



//Rasaad #3
CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Dead("RSGAMAZ")
Global("X3IsaacRASAAD","GLOBAL",2)~ THEN X3IsaacB X3IsaacRasaad3
@128 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacRASAAD","GLOBAL",3)~
== %RASAAD_BANTER% @129
== X3IsaacB @130
== %RASAAD_BANTER% @131
== X3IsaacB @132
== %RASAAD_BANTER% @133
EXIT


//Yeslick #1
CHAIN
IF ~IsValidForPartyDialogue("Yeslick")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacYeslick","GLOBAL",0)~ THEN %YESLICK_BANTER% X3IsaacYeslick1
@134 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacYeslick","GLOBAL",1)~
== X3IsaacB @135
== %YESLICK_BANTER% @136
== X3IsaacB @137
== %YESLICK_BANTER% @138
== X3IsaacB @139
== %YESLICK_BANTER% @140
EXIT

//Yeslick #2
CHAIN
IF ~IsValidForPartyDialogue("Yeslick")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacYeslick","GLOBAL",1)~ THEN %YESLICK_BANTER% X3IsaacYeslick2
@141 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacYeslick","GLOBAL",2)~
== X3IsaacB @142
== %YESLICK_BANTER% @143
== X3IsaacB @144
== %YESLICK_BANTER% @145
== X3IsaacB @146
== %YESLICK_BANTER% @147
EXIT


//Tiax #1
CHAIN
IF ~IsValidForPartyDialogue("Tiax")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacTiax","GLOBAL",0)~ THEN %TIAX_BANTER% X3IsaacTiax1
@148 // ~Do not look down on your future ruler, Isaac! Tiax commands respect! Demands respect!~
DO ~SetGlobal("X3IsaacTiax","GLOBAL",1)~
== X3IsaacB @149
== %TIAX_BANTER% @150
== X3IsaacB @151
EXIT

//Tiax #2
CHAIN
IF ~IsValidForPartyDialogue("Tiax")
IsValidForPartyDialogue("X3Isaac")
See("Tiax")
Global("X3IsaacTiax","GLOBAL",1)~ THEN X3IsaacB X3IsaacTiax2
@152 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacTiax","GLOBAL",2)~
== %TIAX_BANTER% @153
== X3IsaacB @154
EXIT

//Skie #1
CHAIN
IF ~IsValidForPartyDialogue("Skie")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacSkie","GLOBAL",0)~ THEN %SKIE_BANTER% X3IsaacSkie1
@155 // ~Oh, my feet hurt. Can you carry me for a while, Isaac?~
DO ~SetGlobal("X3IsaacSkie","GLOBAL",1)~
== X3IsaacB @156
== %SKIE_BANTER% @157
== X3IsaacB @158
== %SKIE_BANTER% @159
EXIT

//Skie #2
CHAIN
IF ~IsValidForPartyDialogue("Skie")
IsValidForPartyDialogue("X3Isaac")
See("Skie")
Global("X3IsaacSkie","GLOBAL",1)~ THEN X3IsaacB X3IsaacSkie2
@160 // ~I'm sorry for my outburst, Skie. You are...difficult to deal with, but you try your best.~
DO ~SetGlobal("X3IsaacSkie","GLOBAL",2)~
== %SKIE_BANTER% @161
== X3IsaacB @162
== %SKIE_BANTER% @163
== X3IsaacB @164
EXIT

//AJANTIS #1
CHAIN
IF ~IsValidForPartyDialogue("AJANTIS")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacAJANTIS","GLOBAL",0)~ THEN %AJANTIS_BANTER% X3IsaacAjantis1
@165 // ~Do not look down on your future ruler, Isaac! Tiax commands respect! Demands respect!~
DO ~SetGlobal("X3IsaacAJANTIS","GLOBAL",1)~
== X3IsaacB @166
== %AJANTIS_BANTER% @167
== X3IsaacB @168
EXIT

//AJANTIS #2
CHAIN
IF ~IsValidForPartyDialogue("AJANTIS")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacAJANTIS","GLOBAL",1)~ THEN %AJANTIS_BANTER% X3IsaacAjantis2
@169 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacAJANTIS","GLOBAL",2)~
== X3IsaacB @170
== %AJANTIS_BANTER% @171
== X3IsaacB @172
== %AJANTIS_BANTER% @173
EXIT

//Kagain #1
CHAIN
IF ~IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacKAGAIN","GLOBAL",0)~ THEN %KAGAIN_BANTER% X3IsaacKAGAIN1
@174 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacKAGAIN","GLOBAL",1)~
== X3IsaacB @175
== %KAGAIN_BANTER% @176
== X3IsaacB @177
== %KAGAIN_BANTER% @178
EXIT



//Kagain #2
CHAIN
IF ~IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacKAGAIN","GLOBAL",1)~ THEN %KAGAIN_BANTER% X3IsaacKAGAIN2
@179 // ~Your skills in thievery are useful for the group, but I can't stomach much of it.~
DO ~SetGlobal("X3IsaacKAGAIN","GLOBAL",2)~
== X3IsaacB @180
== %KAGAIN_BANTER% @181
== X3IsaacB @182
== %KAGAIN_BANTER% @183
EXIT


//DYNAHEIR #1
CHAIN
IF ~IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacDYNAHEIR","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% X3IsaacDYNAHEIR1
@184 // ~I see thou'rt glancing at my valuables, thief.~
DO ~SetGlobal("X3IsaacDYNAHEIR","GLOBAL",1)~
== X3IsaacB @185
== %DYNAHEIR_BANTER% @186
== X3IsaacB @187
EXIT



//DYNAHEIR #2
CHAIN
IF ~IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacDYNAHEIR","GLOBAL",1)~ THEN %DYNAHEIR_BANTER% X3IsaacDYNAHEIR2
@188 // ~Thou still glances my way. What is it this time, thief?~
DO ~SetGlobal("X3IsaacDYNAHEIR","GLOBAL",2)~
== X3IsaacB @189
== %DYNAHEIR_BANTER% @190
== X3IsaacB @191
== %DYNAHEIR_BANTER% @192
== %MINSC_BANTER% IF ~IsValidForPartyDialogue("MINSC")~ THEN @193
== X3IsaacB @194
EXIT

//DYNAHEIR #3
CHAIN
IF ~IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("X3Isaac")
See("DYNAHEIR")
Global("X3IsaacDYNAHEIR","GLOBAL",2)~ THEN X3IsaacB X3IsaacDYNAHEIR3
@195 //~I do not mean to have you on your guard before, Dynaheir, it was poor jest. In truth, you merely remind me of a remark when I was younger.~
DO ~SetGlobal("X3IsaacDYNAHEIR","GLOBAL",3)~
== %DYNAHEIR_BANTER% @196
== X3IsaacB @197
== %DYNAHEIR_BANTER% @198
== X3IsaacB @199
EXIT

//Edwin #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacEDWIN","GLOBAL",0)~ THEN %EDWIN_BANTER% X3IsaacEDWIN1
@200 // ~I understand you possess great knowledge of planar powers, Isaac.~
DO ~SetGlobal("X3IsaacEDWIN","GLOBAL",1)~
== X3IsaacB @201
== %EDWIN_BANTER% @202
== X3IsaacB @203
EXIT



//Edwin #2
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacEDWIN","GLOBAL",1)~ THEN %EDWIN_BANTER% X3IsaacEDWIN2
@204 // ~Isaac, I understand you are the only one of us who was foolish enough to attack our leader and still live.~
DO ~SetGlobal("X3IsaacEDWIN","GLOBAL",2)~
== X3IsaacB @205
== %EDWIN_BANTER% @206
== X3IsaacB @207
== %EDWIN_BANTER% @208
== X3IsaacB @209
EXIT

//KHALID #1
CHAIN
IF ~IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("X3Isaac")
See("KHALID")
Global("X3IsaacKHALID","GLOBAL",0)~ THEN X3IsaacB X3IsaacKHALID1
@210 // ~You have a code of honor, Khalid?~
DO ~SetGlobal("X3IsaacKHALID","GLOBAL",1)~
== %KHALID_BANTER% @211
== X3IsaacB @212
== %KHALID_BANTER% @213
== X3IsaacB @214
EXIT



//KHALID #2
CHAIN
IF ~IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("X3Isaac")
See("KHALID")
Global("X3IsaacKHALID","GLOBAL",1)~ THEN X3IsaacB X3IsaacKHALID2
@215 // ~Do you enjoy killing Khalid?~
DO ~SetGlobal("X3IsaacKHALID","GLOBAL",2)~
== %KHALID_BANTER% @216
== X3IsaacB @217
== %KHALID_BANTER% @218
== X3IsaacB @219
== %KHALID_BANTER% @220
EXIT

//SAFANA #1
CHAIN
IF ~IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacSAFANA","GLOBAL",0)~ THEN %SAFANA_BANTER% X3IsaacSAFANA1
@221 // ~Stand aside, Isaac. There's only room for one thief in this party.~
DO ~SetGlobal("X3IsaacSAFANA","GLOBAL",1)~
== X3IsaacB @222
== %SAFANA_BANTER% @223
== X3IsaacB @224
EXIT



//SAFANA #2
CHAIN
IF ~IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacSAFANA","GLOBAL",1)~ THEN %SAFANA_BANTER% X3IsaacSAFANA2
@225 // ~What is with your silly sense of honor, Isaac?~
DO ~SetGlobal("X3IsaacSAFANA","GLOBAL",2)~
== X3IsaacB @226
== %SAFANA_BANTER% @227
== X3IsaacB @228
== %SAFANA_BANTER% @229
== X3IsaacB @230
== %SAFANA_BANTER% @231
== X3IsaacB @232
EXIT

//Emily 1
CHAIN 
IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3mily")
See("X3Isaac")
Global("X3IsaacEmily","GLOBAL",0)~ THEN X3milyB X3IsaacEmily1 
@233 // ~So you are on our side now. Right? No quibbles?~
DO ~SetGlobal("X3IsaacEmily","GLOBAL",1)~ 
== X3IsaacB @234
== X3milyB @235
== X3IsaacB @236
== X3milyB @237 
== X3IsaacB @238
== X3milyB @239
EXIT 

//Emily 2
CHAIN 
IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3mily")
See("X3mily")
Global("X3IsaacEmily","GLOBAL",1)~ THEN X3IsaacB X3IsaacEmily2 
@240 // ~I understand there is a dispute of power between your brother and yourself.~
DO ~SetGlobal("X3IsaacEmily","GLOBAL",2)~ 
== X3milyB @241
== X3IsaacB @242
== X3milyB @243
== X3IsaacB @244
== X3milyB @245
== X3IsaacB @246
EXIT 

//Emily 3
CHAIN 
IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3mily")
See("X3mily")
Global("X3IsaacEmily","GLOBAL",2)
Race("X3mily",AASIMAR)~ THEN X3IsaacB X3IsaacEmily3 
@247 // ~Liar.~
DO ~SetGlobal("X3IsaacEmily","GLOBAL",3)~ 
== X3milyB @248
== X3IsaacB @249
== X3milyB @250
== X3IsaacB @251
== X3milyB @252
== X3IsaacB @253
== X3milyB @254
== X3IsaacB @255
== X3milyB @256
EXIT 


//Emily 4
CHAIN 
IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3mily")
See("X3Isaac")
Global("X3IsaacEmily","GLOBAL",3)
Race("X3mily",AASIMAR)Global("X3IFinalBattle","GLOBAL",4)~ THEN X3milyB X3IsaacEmily4 
@257 // ~Are you...are you all right, Isaac? You've been quiet.~
DO ~SetGlobal("X3IsaacEmily","GLOBAL",4)~ 
== X3IsaacB @258
== X3milyB @259
== X3IsaacB @260
== X3IsaacB @261
== X3milyB @262
== X3IsaacB @263
EXIT 


//XZAR #1
CHAIN
IF ~IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacXZAR","GLOBAL",0)~ THEN %XZAR_BANTER% X3IsaacXZAR1
@264 // ~Mahahahahahaa!~
DO ~SetGlobal("X3IsaacXZAR","GLOBAL",1)~
== X3IsaacB @265
== %XZAR_BANTER% @266
== X3IsaacB @267
== %XZAR_BANTER% @268
== X3IsaacB @269
EXIT



//XZAR #2
CHAIN
IF ~IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacXZAR","GLOBAL",1)~ THEN X3IsaacB X3IsaacXZAR2
@270 // ~How is someone like you, Montaron, a necromancer, let alone a mage?~
DO ~SetGlobal("X3IsaacXZAR","GLOBAL",2)~
== %XZAR_BANTER% @271
== X3IsaacB @272
== %XZAR_BANTER% @273
== X3IsaacB @274
== %XZAR_BANTER% @275
== X3IsaacB @276
EXIT

//Imoen #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacIMOEN","GLOBAL",0)~ THEN X3IsaacB X3IsaacIMOEN1
@275 // ~You've been by <CHARNAME>'s side since the beginning.~
DO ~SetGlobal("X3IsaacIMOEN","GLOBAL",1)~
== %IMOEN_BANTER% @276
== X3IsaacB @277
== %IMOEN_BANTER% @278
== X3IsaacB @279
EXIT




// Imoen #2

CHAIN
IF ~IsValidForPartyDialogue("IMOEN")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacIMOEN","GLOBAL",1)~ THEN X3IsaacB X3IsaacIMOEN2
@280 // ~For being stuck in a keep of books, your skills aren't so bad, Imoen.~
DO ~SetGlobal("X3IsaacIMOEN","GLOBAL",2)~
== %IMOEN_BANTER% @281
== X3IsaacB @282
== %IMOEN_BANTER% @283
== X3IsaacB @284
== %IMOEN_BANTER% @285
EXIT

// MONTARON 1

CHAIN
IF ~IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacMONTARON","GLOBAL",0)~ THEN %MONTARON_BANTER% X3IsaacMONTARON1
@286 // ~We share a taste with small blades, Isaac. Quick and deadly.~
DO ~SetGlobal("X3IsaacMONTARON","GLOBAL",1)~
== X3IsaacB @287
== %MONTARON_BANTER% @288
== X3IsaacB @289
== %MONTARON_BANTER% @290
EXIT


// MONTARON 2

CHAIN
IF ~IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("X3Isaac")
See("X3Isaac")
Global("X3IsaacMONTARON","GLOBAL",1)~ THEN X3IsaacB X3IsaacMONTARON2
@291 // ~So where are you from, Montaron? North, south?~
DO ~SetGlobal("X3IsaacMONTARON","GLOBAL",2)~
== %MONTARON_BANTER% @292
== X3IsaacB @293
== %MONTARON_BANTER% @294
== X3IsaacB @295
EXIT

// Shar-Teel 1
CHAIN IF ~InParty("X3Isaac")
See("X3Isaac")
IsValidForPartyDialogue("Sharteel")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacSharTeel1","GLOBAL",0)~ THEN %SHARTEEL_BANTER% X3IsaacSharteel1
@296 // ~Be a real man, Isaac. Can't you use weapons that aren't as small as your codpiece.~
DO ~SetGlobal("X3IsaacSharTeel1","GLOBAL",1)~
== X3IsaacB @297 // ~Size doesn't matter, Sharteel. Rile someone else up.~
== %SHARTEEL_BANTER% @298 // ~If I wanted to rile you up, I'd fatten you up first.~
== X3IsaacB @299 // ~Then do neither of the sort.~
EXIT

// Shar-Teel 2
CHAIN IF ~InParty("X3Isaac")
See("Sharteel")
IsValidForPartyDialogue("Sharteel")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacSharTeel1","GLOBAL",1)~ THEN X3IsaacB X3IsaacSharteel2
@300 // ~Be a real man, Isaac. Can't you use weapons that aren't as small as your codpiece.~
DO ~SetGlobal("X3IsaacSharTeel1","GLOBAL",2)~
== %SHARTEEL_BANTER% @301 // ~If I wanted to rile you up, I'd fatten you up first.~
== X3IsaacB @302 // ~Size doesn't matter, Sharteel. Rile someone else up.~
EXIT

// Neera 1
CHAIN IF ~InParty("X3Isaac")
See("Neera")
IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacNeera","GLOBAL",0)~ THEN X3ISaacB X3ISaacNeera1
@303
DO ~SetGlobal("X3IsaacNeera","GLOBAL",1)~
== %NEERA_BANTER% @304
== X3ISaacB @305
== %NEERA_BANTER% @306
== X3IsaacB @307
EXIT 

// Neera 2
CHAIN IF ~InParty("X3Isaac")
See("Neera")
IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacNeera","GLOBAL",1)~ THEN X3ISaacB X3ISaacNeera2
@308
DO ~SetGlobal("X3IsaacNeera","GLOBAL",2)~
== %NEERA_BANTER% @309
== X3ISaacB @310
== %NEERA_BANTER% @311
== X3IsaacB @312
== %NEERA_BANTER% @313
== X3ISaacB @314
EXIT 

// FALDORN 1
CHAIN IF ~InParty("X3Isaac")
See("FALDORN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacFALDORN","GLOBAL",0)~ THEN X3IsaacB X3ISaacFALDORN1
@303
DO ~SetGlobal("X3IsaacFALDORN","GLOBAL",1)~
== %FALDORN_BANTER% @304
== X3ISaacB @305
== %FALDORN_BANTER% @306
EXIT 

// FALDORN 2
CHAIN IF ~InParty("X3Isaac")
See("FALDORN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacFALDORN","GLOBAL",1)~ THEN X3ISaacB X3ISaacFALDORN2
@308
DO ~SetGlobal("X3IsaacFALDORN","GLOBAL",2)~
== %FALDORN_BANTER% @309
== X3ISaacB @310
== %FALDORN_BANTER% @311
EXIT 

// Minsc 1
CHAIN IF ~InParty("X3Isaac")
See("X3Isa")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacMinsc","GLOBAL",0)~ THEN %MINSC_BANTER% X3ISaacMinsc1
@323
DO ~SetGlobal("X3IsaacMinsc","GLOBAL",1)~
== X3IsaacB @324
== %MINSC_BANTER% @325
== X3IsaacB @326
== %MINSC_BANTER% @327
== X3IsaacB @328
EXIT 

// Minsc 2
CHAIN IF ~InParty("X3Isaac")
See("MINSC")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacMinsc","GLOBAL",0)~ THEN X3IsaacB X3ISaacMinsc1
@329
DO ~SetGlobal("X3IsaacMinsc","GLOBAL",1)~
== %MINSC_BANTER% @330
== X3IsaacB @331
== %MINSC_BANTER% @332
== X3IsaacB @333
== %MINSC_BANTER% @334
EXIT 

//Baeloth 1

CHAIN IF ~InParty("X3Isaac")
See("Baeloth")
IsValidForPartyDialogue("Baeloth")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacBaeloth","GLOBAL",0)~ THEN X3IsaacB X3ISaacBaeloth1
@335
DO ~SetGlobal("X3IsaacBaeloth","GLOBAL",1)~
== BBAELOTH @336
== X3IsaacB @337
== BBAELOTH @338
== X3IsaacB @339
EXIT 



//Baeloth 2

CHAIN IF ~InParty("X3Isaac")
See("Baeloth")
IsValidForPartyDialogue("Baeloth")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
Dead("X3Caim")
!See([ENEMY])
Global("X3IsaacBaeloth","GLOBAL",1)~ THEN BBAELOTH X3ISaacBaeloth2
@340
DO ~SetGlobal("X3IsaacBaeloth","GLOBAL",2)~
== X3IsaacB @341
== BBAELOTH @342
EXIT 

//Eldoth 1
CHAIN IF ~InParty("X3Isaac")
See("X3Isaac")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacELDOTH","GLOBAL",0)~ THEN %ELDOTH_BANTER% X3ISaacELDOTH1
@343
DO ~SetGlobal("X3IsaacELDOTH","GLOBAL",1)~
== X3IsaacB @344
== %ELDOTH_BANTER% @345
== X3IsaacB @346
== %ELDOTH_BANTER% @347
EXIT 

//Eldoth 2
CHAIN IF ~InParty("X3Isaac")
See("X3Isaac")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacELDOTH","GLOBAL",1)~ THEN %ELDOTH_BANTER% X3ISaacELDOTH2
@348
DO ~SetGlobal("X3IsaacELDOTH","GLOBAL",2)~
== X3IsaacB @349
== %ELDOTH_BANTER% @350
== X3IsaacB @351
== %ELDOTH_BANTER% @352
== X3IsaacB @351
== %ELDOTH_BANTER% @352
== X3IsaacB @353
EXIT 

//JAHEIRA 1
CHAIN IF ~InParty("X3Isaac")
See("JAHEIRA")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacJAHEIRA","GLOBAL",0)~ THEN X3IsaacB X3ISaacJAHEIRA1
@354
DO ~SetGlobal("X3IsaacJAHEIRA","GLOBAL",1)~
== %JAHEIRA_BANTER% @355
== X3IsaacB @356
== %JAHEIRA_BANTER% @357
== X3IsaacB @358
== %JAHEIRA_BANTER% @359
EXIT 

//JAHEIRA 2
CHAIN IF ~InParty("X3Isaac")
See("JAHEIRA")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Isaac")
CombatCounter(0)
!See([ENEMY])
Global("X3IsaacJAHEIRA","GLOBAL",1)~ THEN X3IsaacB X3ISaacJAHEIRA2
@360
DO ~SetGlobal("X3IsaacJAHEIRA","GLOBAL",2)~
== X3IsaacB @361
== %JAHEIRA_BANTER% @362
== X3IsaacB @363
EXIT 