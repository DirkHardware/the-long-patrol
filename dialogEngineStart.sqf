
/**************
  DIALOG SETUP:
 **************/
[] spawn {
  // Initialize dialog contents:
  waitUntil {alive player};
  call compile preprocessfile "initDialogs.sqf";
};

[] spawn {
  // Conversation drivers:
  fnc_talk = compile preprocessfile "talk.sqf";
  fnc_text = compile preprocessfile "text.sqf";
  
  // Dialog retrieval helper:
  fnc_getText = compile preprocessfile "getText.sqf";
  
  // Interaction handler:
  fnc_diagAct = compile preprocessfile "diagAct.sqf";
  
};

DialogOpen = false;
SelectionClick = false;