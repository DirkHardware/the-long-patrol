#define TEXT(STATE,WORDS) setVariable [format ["dialogText%1", STATE], WORDS];
#define RESP(STATE,NUM,WORDS) setvariable [format ["dialogResp%1%2", STATE, NUM], WORDS];
#define ACT(STATE,NUM,DEST) setvariable [format ["dialogAct%1%2", STATE, NUM], [DEST, ""]];

// AirportGuard setVariable ["dialogState", "AA"];
// AirportGuard setVariable ["dialogStart", "AA"];
// AirportGuard setVariable ["dialogName", "Guard"];
// _ra = ["You got questions; talk to the Sergeant.","Get out of my face, pussy.","Get lost.","Fuck off, douchebag.","Hey man, you got any smokes?"];
// AirportGuard setVariable ["dialogTextAA", _ra];
// AirportGuard ACT("AA",1,"AA")
// AirportGuard ACT("AA",2,"AA")
// AirportGuard ACT("AA",3,"AA")

// g1 setVariable ["dialogName", "Guard"];
// g1 TEXT("Z","Watch yourself while you're here.  Don't even think of trying anything.")

// AirportGuard_1 setVariable ["dialogState", "AA"];
// AirportGuard_1 setVariable ["dialogStart", "AA"];
// AirportGuard_1 setVariable ["dialogName", "Guard"];
// _ra = ["Hey man!", "God, it's hot out here.", """Join the Guard,"" they said. ""Be all you can be,"" they said.","You got questions; talk to the Sergeant.","Hey man, you got any smokes?"];
// AirportGuard_1 setVariable ["dialogTextAA", _ra];
// AirportGuard_1 ACT("AA",1,"AA")
// AirportGuard_1 ACT("AA",2,"AA")
// AirportGuard_1 ACT("AA",3,"AA")

// Here is what I think is happening:
// AA, AB, AC, etc., are all potential dialogue states. 
sarge setVariable ["dialogState", "AA"];
sarge setVariable ["dialogStart", "AA"];
sarge setVariable ["dialogName", "Lt. Turk"];
sarge setVariable ["dialogTextAA", ["Good of you to finally show up.", "More meat for the grinder.", "Ah, to be fresh off the elevator again."]];
// The dialogue starts on the dialog state of AA. When the conversation starts, the script chooses one of the "dialougeTextAA" variables to begin the conversation, as AA is an array of strings.
// Each _rsp listed below is one of my potential responses
_rsp = "So what exactly happened here?";
// The _rsp variable defined above is being passed into the RESP method(?) of sarge below. The first argument is state it moves *from* (in this case state "AA"), the number response string from the player is bound to, and finally, what state it will take the conversation to. The first argument MUST match the dialogue state it is responding to. Don't ask me why. 
sarge RESP("AA",1,_rsp)
sarge ACT("AA",1,"AB")

// _rsp = "Your people should go back where you came from, pig!";
// sarge RESP("AA",2,_rsp)
// sarge ACT("AA",2,"AC")
// sarge ACT("AA",3,"AA")


_rsp = "Same thing that's been happening since the dawn of argiculture. Bunch of working class schmucks decided they were getting pushed too hard, withheld their labor, in this case farming sugarcane. Then a bunch of middle class people took having to pay an extra buck for a luxury item personally and sent the Planetary Militia in to quash the strike.  <1,2,3: Continue...>";
sarge TEXT("AB",_rsp)
sarge ACT("AB",1,"AB_1")
sarge ACT("AB",2,"AB_1")
sarge ACT("AB",3,"AB_1")

sarge TEXT("AB_1","They didn't realize militias are also mostly comprised of working class schmucks, so most of the Planatary Militia flipped. Now the strike is a full blown insurrection.")
_rsp = "So our job is to put down the strike and end the conflict?";
sarge RESP("AB_1",1,_rsp)
sarge ACT("AB_1", 1, "AC")//<-------make sure to check if this works.
//Holy Bologna! The way this janky script works is by passing the current dialog state and the response number into one string with no spaces as the 1st argument of setVariable (hence dialogActAB_11 for the 1st response to TEXT AB_1), then adding an array as the 2nd argument, with something in index 0 (I'm not sure what this is, maybe a state for future reference?) and a string with a bunch of sqf commands in it. WTF! Thats how you get commands to execute on RESP
// sarge setVariable["dialogActAB_11", ["AF", 
//    "removeAllWeapons player;
//     hint 'something has has happened';
	//closeDialog 0;
// ]];

sarge TEXT("AC","Fuck no! I'm not dying over the shit they put in upscale candy bars. <1,2,3: Continue...>")
sarge ACT("AC",1,"AC_1")
sarge ACT("AC",2,"AC_1")
sarge ACT("AC",3,"AC_1")

sarge TEXT("AC_1", "Our contract is to show the flag in disputed neighborhoods to convince the donor class that something is being done, and train enough right wing teenagers to help these idiots help themselves.")
sarge ACT("AC_1",1,"AA")
sarge ACT("AC_1",2,"AA")
sarge ACT("AC_1",3,"AA")


// J.B.'s Dialog 

jb setVariable ["dialogState", "JB_Start"];
jb setVariable ["dialogStart", "JB_Start"];
jb setVariable ["dialogName", "J.B."];
jb setVariable ["dialogTextJB_Start", ["Yessir?", "What can I do for ya?", "Man, my dogs are barking."]];

_rsp = "So what's your take on this shitshow?";

jb RESP("JB_Start", 1, _rsp)
jb ACT("JB_Start", 1, "JB_AA")

jb TEXT("JB_AA", "The way I see it, it's our moral obligation to kick the shit out of these yokels.")
jb ACT("JB_AA", 1, "JB_START")
jb ACT("JB_AA", 2, "JB_START")
jb ACT("JB_AA", 3, "JB_START")

_rsp = "How do you figure?";

jb RESP("JB_AA", 1, _rsp)
jb ACT("JB_AA", 1, "JB_AA_1")

jb TEXT("JB_AA_1", "Who was that smart guy from olden times? The one that said the needs of the many outweigh the needs of the few?")

_rsp = "You mean 18th century philsopher Jeremy Bentham?";
jb RESP("JB_AA_1", 1, _rsp)
jb ACT("JB_AA_1", 1, "JB_AA_2")

jb TEXT("JB_AA_2", "Nah nah nah. I saw this about him where he died, but then he came back to life on the Genesis Planet in the next one.")

_rsp = "Wait, are you talking about Spock from Star Trek?";
jb RESP("JB_AA_2", 1, _rsp)
jb ACT("JB_AA_2", 1, "JB_AA_3A")

jb TEXT("JB_AA_3A", "Ah nevermind. It doesn't matter who it was specifically.")

_rsp = "You still haven't made your case.";
jb RESP("JB_AA_3A", 1, _rsp)
jb ACT("JB_AA_3A", 1, "JB_AA_4")

_rsp = "You are definitely talking about 18th century philosopher Jeremy Bentham.";
jb RESP("JB_AA_2", 2, _rsp)
jb ACT("JB_AA_2", 2, "JB_AA_3B")

jb TEXT("JB_AA_3B", "Man, old timey philosophy was fuckin' wild bro.")

_rsp = "You don't know the half of it. I still don't get your argument though. ";
jb RESP("JB_AA_3B", 1, _rsp)
jb ACT("JB_AA_3B", 1, "JB_AA_4")

jb TEXT("JB_AA_4","Think of it this way, all non self-sufficiant colonies nearby who get their food from here add up to what, a couple million people? And intelligence says how many strikers? ")

// _rsp = "I think it's something like 70 million in the tri-system area alone."
// jb RSP