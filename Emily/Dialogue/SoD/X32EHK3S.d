BEGIN X32EHK3S 

// Crossmod Sirene version. As usual they just attack on sight.
CHAIN IF ~AreaCheck("BD1000")IsValidForPartyDialogue("c0sirene")~ THEN X32EHK3S Talk10 
~We are Planar Hunters, and while we hunt aasimar it seems you travel with another enemy of ours entirely, a tiefling.~
== X32EHK3S ~You will not live to learn your lesson of association with these creatures. Kill them, quickly, before the rest of their army notices.~
DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 


CHAIN IF ~AreaCheck("BD1000")!IsValidForPartyDialogue("c0sirene")~ THEN X32EHK3S Talk1
~I demand that you speak to me, now.~ [X32HK3S] 
END 
++ ~Who are you?~ + Talk1.1
++ ~I have no time to speak to you.~ + Talk1.11
++ ~You are no position to demand.~ + Talk1.11

CHAIN X32EHK3S Talk1.11
~You will listen, for you have disrupted our work.~
EXTERN X32EHK3S Talk1.1 
 
CHAIN X32EHK3S Talk1.1
~We are planar hunters, and you have impeded our hunt of aasimar.~
END 
++ ~You speak of Caelar? It was her forces who destroyed the bridge.~ + Talk1.2 // Assumes normal playthrough. PC can still manually set they know Emily when they talk to her later.
++ ~Planar hunters. I've fought against your group before~ DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32PlanarHunterEnemy","GLOBAL",1)~ + Talk1.3  // ~Sets Emily being in BG1 automatically, and planar hunter hostility.~
+~!GlobalGT("X32milyCryptComment1","GLOBAL",0)~+ ~I recall your group. I gave you the aasimar Emily to kill.~ DO ~SetGlobal("X32milyInBG1","GLOBAL",-1)GiveItem("X3ESWRD",Player1)AddJournalEntry(@101,INFO)AddexperienceParty(1000)~ + Talk1.4 // ~Prevents Emily from spawning. It'd be awkward to show this if she was in the crypt, so using this old global to check.~

CHAIN X32EHK3S Talk1.2
~She is aasimar, yes, one of three that we pursue, and by far the most deadly. Damn. We will have to find another way to see her assassinated.~
END
++ ~Why not join our expedition? We share an enemy in Caelar.~ + Talk1.5
+~!Global("X3AttackEmily","GLOBAL",1)~+ ~Tell me of these other aasimar.~ + Talk1.8
++ ~If you can beat me to her first.~ + Talk1.6


CHAIN X32EHK3S Talk1.3
~And you freely admit this? Do you expect any other outcome now when we next meet besides death?~
END
++ ~I am not afraid of your challenge.~ EXTERN X32EHK3S Talk1.7
++ ~Save your words. It is best you walk away.~ EXTERN X32EHK3S Talk1.7
++ ~Next? Our fight is now.~ + Talk1.9 

CHAIN X32EHK3S Talk1.9 
~Kill <PRO_HIMHER>, quickly!~
DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 


CHAIN X32EHK3S Talk1.7
~Your troops are too near for you to meet the justice you are due now, but cross us again and you *will* die.~
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN X32EHK3S Talk1.4 
~Good to see more people of Faerun willing to see the danger these plane-touched beings cast. This Caelar is the worst of them. She disguises her actions as noble, and fools the common revel in unprecedented mass.~
== X32EHK3S ~I doubt you were properly rewarded for your assistance with the other Planar Hunters, but I will see that corrected. You will need power in your cause, and I have a feeling you will be more fruitful than our order. We specialize in the slaying of outsiders, not peasants.~
== X32EHK3S ~Take this blade. It is but a simple magic sword in most cases, but when it touches the blood of demons or Caelar, you will not be disappointed.~
EXTERN X32EHK3S Talk.Leave 

CHAIN X32EHK3S Talk.Leave
~We return to our hunt. May you see this Caelar dead.~
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN X32EHK3S Talk1.5
~We are trained to kill outsiders, not peasants wanting glory or mercenaries. Our work will have to be more covert to see Caelar dead.~ 
== X32EHK3S ~People may be fools, but her crusaders do not deserve to die in mass as Caelar would wish them to be just so we can see Caelar dead, though some hunters would disagree.~
END
+~!Global("X3AttackEmily","GLOBAL",1)~+ ~Tell me of these other Aasimar.~ + Talk1.8
++ ~I will leave you to your hunt, though we may get to Caelar first.~ + Talk1.6


CHAIN X32EHK3S Talk1.6 
~It is no competition to get rid of these dangerous outsiders. So long as she is killed before more lives are doomed  by her honeyed words.~
EXTERN X32EHK3S Talk.Leave 

CHAIN X32EHK3S Talk1.8 
~A male sorcerer and female archer. They seemed to be heading to join Caelar. We don't need them grouping together and making it worse, so we will find another way across.~
EXTERN X32EHK3S Talk.Leave 


