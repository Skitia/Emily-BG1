BEGIN X32EHK3S 

// Crossmod Sirene version. As usual they just attack on sight.
CHAIN IF ~AreaCheck("BD1000")IsValidForPartyDialogue("c0sirene")~ THEN X32EHK3S Talk10 
@0
== X32EHK3S @1
DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 


CHAIN IF ~AreaCheck("BD1000")!IsValidForPartyDialogue("c0sirene")~ THEN X32EHK3S Talk1
@2 
END 
++ @3 + Talk1.1
++ @4 + Talk1.11
++ @5 + Talk1.11

CHAIN X32EHK3S Talk1.11
@6
EXTERN X32EHK3S Talk1.1 
 
CHAIN X32EHK3S Talk1.1
@7
END 
++ @8 + Talk1.2 // Assumes normal playthrough. PC can still manually set they know Emily when they talk to her later.
++ @9 DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32PlanarHunterEnemy","GLOBAL",1)~ + Talk1.3  // ~Sets Emily being in BG1 automatically, and planar hunter hostility.~
+~!GlobalGT("X32milyCryptComment1","GLOBAL",0)~+ @10 DO ~SetGlobal("X32milyInBG1","GLOBAL",-1)GiveItem("X3ESWRD",Player1)AddJournalEntry(@101,INFO)AddexperienceParty(1000)~ + Talk1.4 // ~Prevents Emily from spawning. It'd be awkward to show this if she was in the crypt, so using this old global to check.~

CHAIN X32EHK3S Talk1.2
@11
END
++ @12 + Talk1.5
+~!Global("X3AttackEmily","GLOBAL",1)~+ @13 + Talk1.8
++ @14 + Talk1.6


CHAIN X32EHK3S Talk1.3
@15
END
++ @16 EXTERN X32EHK3S Talk1.7
++ @17 EXTERN X32EHK3S Talk1.7
++ @18 + Talk1.9 

CHAIN X32EHK3S Talk1.9 
@19
DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 


CHAIN X32EHK3S Talk1.7
@20
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN X32EHK3S Talk1.4 
@21
== X32EHK3S @22
== X32EHK3S @23
EXTERN X32EHK3S Talk.Leave 

CHAIN X32EHK3S Talk.Leave
@24
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN X32EHK3S Talk1.5
@25 
== X32EHK3S @26
END
+~!Global("X3AttackEmily","GLOBAL",1)~+ @27 + Talk1.8
++ @28 + Talk1.6


CHAIN X32EHK3S Talk1.6 
@29
EXTERN X32EHK3S Talk.Leave 

CHAIN X32EHK3S Talk1.8 
@30
EXTERN X32EHK3S Talk.Leave 


