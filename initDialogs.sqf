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
sarge setVariable ["dialogState", "sarge_START"];
sarge setVariable ["dialogStart", "sarge_START"];
sarge setVariable ["dialogName", "Lt. Turk"];
sarge setVariable ["dialogTextsarge_START", ["Good of you to finally show up.", "More meat for the grinder.", "Ah, to be fresh off the elevator again."]];
// The dialogue starts on the dialog state of AA. When the conversation starts, the script chooses one of the "dialougeTextAA" variables to begin the conversation, as AA is an array of strings.
// Each _rsp listed below is one of my potential responses
_rsp = "So what exactly happened here?";
// The _rsp variable defined above is being passed into the RESP method(?) of sarge below. The first argument is state it moves *from* (in this case state "AA"), the number response string from the player is bound to, and finally, what state it will take the conversation to. The first argument MUST match the dialogue state it is responding to. Don't ask me why. 
sarge RESP("sarge_START",1,_rsp)
sarge ACT("sarge_START",1,"A000")

// _rsp = "Your people should go back where you came from, pig!";
// sarge RESP("AA",2,_rsp)
// sarge ACT("AA",2,"AC")
// sarge ACT("AA",3,"AA")


_rsp = "Same thing that's been happening since the dawn of argiculture. Bunch of working class schmucks decided they were getting pushed too hard, withheld their labor, in this case farming sugarcane. Then a bunch of middle class people took having to pay an extra buck for a luxury item personally and sent the Planetary Militia in to quash the strike.  <1,2,3: Continue...>";
sarge TEXT("A000",_rsp)
sarge ACT("A000",1,"A000_1")
sarge ACT("A000",2,"A000_1")
sarge ACT("A000",3,"A000_1")

sarge TEXT("A000_1","They didn't realize militias are also mostly comprised of working class schmucks, so most of the Planatary Militia flipped. Now the strike is a full blown insurrection.")
_rsp = "So our job is to put down the strike and end the conflict?";
sarge RESP("A000_1",1,_rsp)
sarge ACT("A000_1", 1, "AC")//<-------make sure to check if this works.
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

jez setVariable ["dialogState", "jez_START"];
jez setVariable ["dialogStart", "jez_START"];
jez setVariable ["dialogName", "Jez"];
jez setVariable ["dialogTextjez_START", ["Yessir?", "What can I do for ya?", "Man, my dogs are barking."]];

_rsp = "So what's your take on this shitshow?";

jez RESP("jez_Start", 1, _rsp)
jez ACT("jez_Start", 1, "jez_A000")

jez TEXT("jez_A000", "The way I see it, it's our moral obligation to kick the shit out of these yokels.")
// jez ACT("jez_A000", 1, "jez_START")
_rsp = "How do you figure?";
jez RESP("jez_A000", 1, _rsp)
jez ACT("jez_A000", 1, "jez_AA00")
jez ACT("jez_A000", 2, "jez_START")
jez ACT("jez_A000", 3, "jez_START")

jez TEXT("jez_AA00", "Who was that smart guy from olden times? The one that said the needs of the many outweigh the needs of the few?")

_rsp = "You mean 18th century philsopher Jeremy Bentham?";
jez RESP("jez_AA00", 1, _rsp)
jez ACT("jez_AA00", 1, "jez_AA00_1a")

_rsp = "Wait, are you talking about Spock from Star Trek?";
jez RESP("jez_AA00", 2, _rsp)
jez ACT("jez_AA00", 2, "jez_AA00_2")

jez TEXT("jez_AA00_1a", "Nah nah nah. I saw this movie about him where he died, but then he came back to life on the Genesis Planet in the next one.")
_rsp = "Yes, thats Spock! That movie is called 'The Search for Spock!'";
jez RESP("jez_AA00_1a", 1, _rsp)
jez ACT("jez_AA00_1a", 1, "jez_AA00_1b")
_rsp = "You are definitely talking about 18th century philosopher Jeremy Bentham.";
jez RESP("jez_AA00_1a", 2, _rsp)
jez ACT("jez_AA00_1a", 2, "jez_AA00_1c")
// _rsp = "Sure whatever. Still haven't made your case.";
// jez RESP("jez_AA00_1", 3, _rsp)
// jez ACT("jez_AA00_1", 3, "jez_AB00")

jez TEXT("jez_AA00_1b", "Ah nevermind. It doesn't matter who it was specifically.")
_rsp = "Fair enough. Still haven't made your case though";
jez RESP("jez_AA00_1b", 1, _rsp)
jez ACT("jez_AA00_1b", 1, "jez_AB00")



jez TEXT("jez_AA00_1c", "Man, old timey philosophy was fuckin' wild bro.")
_rsp = "You don't know the half of it. I still don't get your argument though. ";
jez RESP("jez_AA00_1c", 1, _rsp)
jez ACT("jez_AA00_1c", 1, "jez_AB00")

jez TEXT("jez_AB00","Think of it this way: the self-sufficiant colonies nearby who need food from here tally up to what, a couple million people?")
_rsp = "I think it's something like 70 million in the tri-system area alone.";
jez RESP("jez_AB00", 1, _rsp)
jez ACT("jez_AB00", 1, "jez_AB00_1a")
_rsp = "If I worked for the Census Bureau you think I'd be armed?";
jez RESP("jez_AB00", 2, _rsp)
jez ACT("jez_AB00", 2, "jez_AB00_1b")
// jez ACT("jez_AB00", 3, "jez_AB00_1c")
// _rsp = "I think it's something like 70 million in the tri-system area alone."
// jez RSP

jez TEXT("jez_AB00_1a", "Exactly! And intel says there's like what, a couple thousand strikers at most?")
_rsp = "The same military 'intelligence' I'm sure isn't taking into account the sympathetic friends and family of each insurgent.";
jez RESP("jez_AB00_1a", 1, _rsp)
jez ACT("jez_AB00_1a", 1, "jez_AB00_2")


jez TEXT("jez_AB00_1b", "Yeah well, it's a lot compared to a couple thousand strikers at most?")
_rsp = "That makes sense.";
jez RESP("jez_AB00_1b", 1, _rsp)
jez ACT("jez_AB00_1b", 1, "jez_AB00_2")

jez TEXT("jez_AB00_2", "Now I ain't sayin' this setup's a paradise. But the way I figure, you gotta be pretty fucking entitled to starve your neighbors over a paycheck.")
_rsp = "They're not entitled, they're oppressed.";
jez RESP("jez_AB00_2", 1, _rsp)
jez ACT("jez_AB00_2", 1, "jez_ABA0")

jez TEXT("jez_ABA0", "Big talk from the guy who signed up to shoot the oppressed for money. My mom worked two jobs a'ight? Both were in a titanium mine. Don't think I don't know what a hard knock life looks like. Yeah these guys could have it better... <1,2,3: Continue...>")
jez ACT("jez_ABA0", 1, "jez_ABA0_1")
jez ACT("jez_ABA0", 2, "jez_ABA0_1")
jez ACT("jez_ABA0", 3, "jez_ABA0_1") 
 
jez TEXT("jez_ABA0_1", "But if justice involves making things better for one person at the expense of others, I got some friends who'd like their cases retried.")
_rsp = "Damn, fair point.";
jez RESP("jez_ABA0_1", 1, _rsp)
jez ACT("jez_ABA0_1", 1, "ABAA")
_rsp = "But somehow you shooting multiple people over a fight you don't care about is cool.";
jez RESP("jez_ABA0_1", 2, _rsp)
jez ACT("jez_ABAO_1", 2, "ABAB")