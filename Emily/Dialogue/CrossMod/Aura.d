// Aura 2 

CHAIN IF ~InParty("X3mily")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossEmilAura","LOCALS",1)~ THEN X3milyB AuraBanter2
@7 // ~Aura, your Sunshooter is the most amazing piece of fletchery I have ever seen. And your arrows...healing arrows and...the other ones, what was the word?.~
DO ~SetGlobal("CrossEmilAura","LOCALS",2)~
== BC0Aura @8 // ~Eheh. They're lightning arrows. They have a energetic pulse that lures future metal objects towards their hit location.~
== X3milyB @9 // ~Who would even think of those great ideas? The closest I ever got was...well I never really got close to anything original without using a bit of magic. I'm a bit jealous.~
== BC0Aura @10 // ~It's really all in the materials and components. Without them it wouldn't be possible for my designs to work.~
== X3milyB @11 // ~Really? Maybe you could teach me, then. And I could show you a few tips regarding archery.~
== BC0Aura @12 // ~It might be quite difficult to do that, Emily. I don't know if I will be the best teacher. I've never really taught anyone else.~
== X3milyB @13 // ~Oh give it a chance. I'm usually a great student, as long as <CHARNAME> doesn't make us march until we're dead tired before we get to have a lesson.~
== BC0Aura @14 // ~We can give it a try, then. I'd like the chance to improve my accuracy as well, especially at a distance.~
== X3milyB @15 // ~It's a deal, then. I can't wait!~

EXIT

// Aura 3
CHAIN IF ~InParty("X3mily")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossEmilAura","LOCALS",2)~ THEN X3milyB AuraBanter3
@16 // ~I think after accidentally shocking myself, and the fifth bruise on my fingers, I think I'm not going to get the hang of your designs at all, Aura.~ 
DO ~SetGlobal("CrossEmilAura","LOCALS",3)~
== C0AuraB @17 // ~I was worried it was going to be a bit difficult. I have never really taught anyone before, maybe I am not the best teacher.~
== X3milyB @18 // ~Oh I don't think its like that. You've done this for years, and have a brilliant mind at that. It's silly for me to think I can pick it up so quickly.~
== C0AuraB @19 // ~I feel a bit bad. You've managed to really help improve my aim and haven't really gotten anything in return.~
== X3milyB @20 // ~Oh that's okay! This has made us better friends, and I.~
== C0AuraB @21 // ~O- hey! Why are you patting my head like that?~
== X3milyB @22 // ~Hee, your concern was just so cute!~
EXIT
