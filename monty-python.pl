/* Monty Python Witch Scene in Prolog */

:- initialization(main).

/*
  BEDEMIR:  Quiet, quiet.  Quiet!  There are ways of telling whether
      she is a witch.
  BEDEMIR:  Tell me, what do you do with witches?
  VILLAGER #2:  Burn!
  CROWD:  Burn, burn them up!
*/
witch(X) :- burns(X), female(X).

/*
  BEDEMIR:  And what do you burn apart from witches?
  VILLAGER #1:  More witches!
  VILLAGER #2:  Wood!
  BEDEMIR:  So, why do witches burn?
      [pause]
  VILLAGER #3:  B--... 'cause they're made of wood...?
  BEDEMIR:  Good!
  CROWD:  Oh yeah, yeah...
*/
burns(X) :- wooden(X).

/*
  BEDEMIR:  So, how do we tell whether she is made of wood?
  VILLAGER #1:  Build a bridge out of her.
  BEDEMIR:  Aah, but can you not also build bridges out of stone?
  VILLAGER #2:  Oh, yeah.
  BEDEMIR:  Does wood sink in water?
  VILLAGER #1:  No, no.
  VILLAGER #2:  It floats!  It floats!
*/
wooden(X) :- floats(X).

/*
  BEDEMIR:  What also floats in water?
  VILLAGER #1:  Bread!
  VILLAGER #2:  Apples!
  VILLAGER #3:  Very small rocks!
  VILLAGER #1:  Cider!
  VILLAGER #2:  Great gravy!
  VILLAGER #1:  Cherries!
  VILLAGER #2:  Mud!
  VILLAGER #3:  Churches -- churches!
  VILLAGER #2:  Lead -- lead!
  ARTHUR:  A duck.
  CROWD:  Oooh.
  BEDEMIR:  Exactly!  So, logically...,
  VILLAGER #1:  If... she.. weighs the same as a duck, she's made of wood.
  BEDEMIR:  And therefore--?
  VILLAGER #1:  A witch!
*/
floats(X) :- sameweight(duck, X).

/*
  BEDEMIR:  We shall use my larger scales!
      [yelling]
  BEDEMIR:  Right, remove the supports!
      [whop]
      [creak]
  CROWD:  A witch!  A witch!
  WITCH:  It's a fair cop.
  CROWD:  Burn her!  Burn!  [yelling]
*/
female(girl). /* by observation */
sameweight(duck, girl). /* by experiment */

/* Return a meaningful message from query */
isWitch(X) :- ( witch(X) -> write('The girl is a witch'), nl
                          ; write('The girl is not a witch'), nl ).

main :- isWitch(girl), halt. 
