;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;;;:
;;;   The Object-Oriented Adventure Game
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;;:;
;;; 	   	 	     
;;; dtaneli16@ku.edu.tr     Mon Nov 20 18:12:04 2017
;;; 	   	 	     
;;; Before you start: 	   	 	     
;;; * Please read the project handout available on the course
;;;   web site first to get a basic idea about the project and the
;;;   logic behind it, then to find out the details about what
;;;   your tasks are for the rest of the project.
;;; 	   	 	     
;;; * The following code should be studied and loaded for this
;;;   project.  Please do not modify these files, put all your work in
;;;   this file. 	   	 	     
;;; 	   	 	     
;;; - objsys.scm: support for an elementary object system
;;; - objtypes.scm: a few nice object classes
;;; - setup.scm: a bizarre world constructed using these classes
;;; 	   	 	     
;;; * Plan your work with pencil and paper before starting to code.
;;; 	   	 	     
;;; While you are working: 	   	 	     
;;; * Type all your work and notes in the appropriate sections of this file.
;;; * Please do not delete any of the existing lines.
;;; * Use the procedure names given in the instructions.
;;; * Remember to frequently save your file.
;;; * Use semicolon (;) to comment out text, tests and unused code.
;;; * Remember to document your code (in this file)
;;; * Remember our collaboration policy: you can discuss with your friends but:
;;; 	   	 	     
;;;   *** NOTHING WRITTEN GETS EXCHANGED ***
;;; 	   	 	     
;;; 	   	 	     
;;; When you are done: 	   	 	     
;;; * Perform a final save and submit your work following the instructions.
;;; * Please do not make any modifications after midnight on the due date.
;;; * Please send an email comp200-common@ku.edu.tr if you have any questions.
;;; * Make sure your file loads without errors:
;;; ****************************************************************************
;;; ***  Your code should run without any syntactic errors. Projects  causing error will NOT be graded. ***
;;; ****************************************************************************
;;; 	   	 	     
;; Do NOT modify or delete the lines below.
(#%require (only racket/base random))
(load "objsys.scm") 	   	 	     
(load "objtypes.scm") 	   	 	     
(load "setup.scm") 	   	 	     
(define nil '()) 	   	 	     
(define your-answer-here #f) 	   	 	     
;;;;;;;;; 	   	 	     



;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;;::
;;; PART II. Programming Assignment
;;; 	   	 	     
;;; The answers to the computer exercises in Section 5 go in the
;;; appropriate sections below.
;;; 	   	 	     
 	   	 	     

;DONE!!!!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;:;;
;;;;;;;;;;;;; Computer Exercise 0: Setting up ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 	   	 	     
;;;;;;;;;;;;; CODES: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;(setup 'doruk)
;(ask screen 'DEITY-MODE #f)
;(ask (ask me 'location) 'name)
;(ask me 'say (list (ask me 'name)))
;(ask me 'say '("Hello World"))
;(ask me 'look-around)
;(ask me 'go 'west)
;(ask me 'go 'east)
;(ask me 'get 'umbrella)
;(ask me 'toss 'umbrella)
;(ask me 'die)
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;:;:
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;ready
;amphitheater
;At amphitheater doruk says -- doruk said-and-heard
;At amphitheater doruk says -- Hello World said-and-heard

;You are in amphitheater 
;You are not holding anything. 
;You see stuff in the room: umbrella 
;There are no other people around you. 
;The exits are in directions: west ok

;doruk moves from amphitheater to sos-building 
;At sos-building doruk says -- Hi ben-bitdiddle 
;ben-bitdiddle moves from sos-building to cas-building 
;--- the-clock Tick 0 --- 
;You are in sos-building 
;You are not holding anything. 
;There is no stuff in the room. 
;There are no other people around you. 
;The exits are in directions: east south north #t

;doruk moves from sos-building to amphitheater 
;--- the-clock Tick 1 --- 
;You are in amphitheater 
;You are not holding anything. 
;You see stuff in the room: umbrella 
;There are no other people around you. 
;The exits are in directions: west #t

;At amphitheater doruk says -- I take umbrella from amphitheater

;At amphitheater doruk says -- I drop umbrella at amphitheater

;At amphitheater doruk says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;doruk moves from amphitheater to heaven game-over-for-you-dude
 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;::;
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;::;:::
;;;;;; Computer Exercise 1: Understanding installation;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;:::;;;
;; 	   	 	     
;;;;;;;;;;;;; ANSWER: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;delegate method makes the internal object do the work on behalf of the full object.
;ask method makes the internal object do the work as a stand alone object.
;so if we change the last line of install method, when autonomous person moves to a new place,
;his person-part and autonomous-player would be in 2 different rooms.
 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;::;;:::;;:
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONEEE!!!!!!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;;;;
;;;;;;;;;;;; Computer Exercise 2: Who just died? ;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;;;:
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;(setup 'doruk)
;(ask screen 'DEITY-MODE #f)
;(run-clock 3)
;(names-of (ask heaven 'things))

 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;;:;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;When someone dies, he/she goes to heaven.
;with (names-of (ask heaven 'things)) we can find out who just died.
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;;::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;ready

;alyssa-p-hacker moves from eng-auditorium to eng-z21 
;--- the-clock Tick 0 --- 
;--- the-clock Tick 1 --- 
;An earth-shattering, soul-piercing scream is heard... 
;--- the-clock Tick 2 --- done

;(prof-yuret)
 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;:;;
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONE!!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;:;:
;;;;;;;; Computer exercise 3: Having a quick look ;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;::;
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
(define (make-avatar name birthplace) ; symbol, location -> avatar
  (let ((person-part (make-person name birthplace)))
    (lambda (message) 	   	 	     
      (case message 	   	 	     
	((AVATAR?) (lambda (self) #T))
 	   	 	     
	((LOOK-AROUND)		; report on world around you
	 (lambda (self) 	   	 	     
	   (let* ((place (ask self 'LOCATION))
		  (exits (ask place 'EXITS))
		  (other-people (ask self 'PEOPLE-AROUND))
		  (my-stuff (ask self 'THINGS))
		  (stuff (ask self 'STUFF-AROUND)))
	     (ask screen 'TELL-WORLD (list "You are in" (ask place 'NAME)))
	     (ask screen 'TELL-WORLD
	      (if (null? my-stuff)
		  '("You are not holding anything.")
		  (append '("You are holding:") (names-of my-stuff))))
	     (ask screen 'TELL-WORLD
	      (if (null? stuff)
		  '("There is no stuff in the room.")
		  (append '("You see stuff in the room:") (names-of stuff))))
	     (ask screen 'TELL-WORLD
	      (if (null? other-people)
		  '("There are no other people around you.")
		  (append '("You see other people:") (names-of other-people))))
	     (ask screen 'TELL-WORLD
	      (if (not (null? exits))
		  (append '("The exits are in directions:") (names-of exits))
		  ;; heaven is only place with no exits
		  '("There are no exits... you are dead and gone to heaven!")))
	     'OK))) 	   	 	     
 	   	 	     
	((GO) 	   	 	     
	 (lambda (self direction)  ; Shadows person's GO
	   (let ((success? (delegate person-part self 'GO direction)))
	     (if success? 	   	 	     
                 (begin (ask clock 'TICK)
                        (ask self 'LOOK-AROUND)));;I changed this line to look around.
	     success?))) 	   	 	     
	((GET) 	   	 	     
	 (lambda (self tname) 	   	 	     
	   (let ((objs (myfilter (lambda (x) (eq? (ask x 'name) tname))
			       (ask (ask self 'location) 'things))))
	     (if (null? objs) 	   	 	     
		 (ask self 'say `(I do not see a ,tname here))
		 (ask self 'take (car objs))))))
	((TOSS) 	   	 	     
	 (lambda (self tname) 	   	 	     
	   (let ((objs (myfilter (lambda (x) (eq? (ask x 'name) tname))
			       (ask self 'things))))
	     (if (null? objs) 	   	 	     
		 (ask self 'say `(I do not have a ,tname))
		 (ask self 'drop (car objs))))))
	((TAKE) 	   	 	     
	 (lambda (self thing) 	   	 	     
	   (let ((thing (delegate person-part self 'TAKE thing)))
	     (if (and (not (null? thing))
		      (eq? 'diploma (ask thing 'NAME)))
		 (ask self 'SAY '("   HURRRAY!!!!!!!!!!!!!"))))))
 	   	 	     
	(else (get-method message person-part)))))) 	   	 	     
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;::;:::
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;It already works. The code above is directly copied from objtypes.scm
;In the transcript below it is clearly seen that it works.
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;:::;;;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;; 	   	 	     
#| 	   	 	     
> (setup 'doruk)
ready
> (ask screen 'DEITY-MODE #f)

> (ask me 'look-around)
You are in sci-building 
You are not holding anything. 
There is no stuff in the room. 
There are no other people around you. 
The exits are in directions: south north ok

> (ask me 'go 'north)
doruk moves from sci-building to eng-building 
--- the-clock Tick 0 --- 
You are in eng-building 
You are not holding anything. 
There is no stuff in the room. 
There are no other people around you. 
The exits are in directions: south in west north #t	   	 	     
|# 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;::;:::;:::;;:
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONE!!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;;;;
;;;;;; Computer exercise 4: But I'm too young to die!! ;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;;;:
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 	   	 	     


(define (make-person name birthplace) ; symbol, location -> person
  (let ((mobile-thing-part (make-mobile-thing name birthplace))
	(container-part    (make-container))
	(health            3) 	   	 	     
	(strength          1) 	   	 	     
   (lives             3)) 	   	 	     
    (lambda (message) 	   	 	     
      (case message 	   	 	     
	((PERSON?) (lambda (self) #T))
	((STRENGTH) (lambda (self) strength))
	((HEALTH) (lambda (self) health))
        ((LIVES) (lambda (self) lives)) ;I ADDED A MESSAGE TO REACH LIVES
        ((SAY) 	   	 	     
         (lambda (self list-of-stuff)
           (ask screen 'TELL-ROOM (ask self 'location)
                (append (list "At" (ask (ask self 'LOCATION) 'NAME)
                                 (ask self 'NAME) "says --")
                           list-of-stuff))
                  'SAID-AND-HEARD))
	((HAVE-FIT) 	   	 	     
	 (lambda (self) 	   	 	     
	   (ask self 'SAY '("Yaaaah! I am upset!"))
	   'I-feel-better-now))
 	   	 	     
	((PEOPLE-AROUND)	; other people in room...
	 (lambda (self) 	   	 	     
	   (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
		  (people (myfilter (lambda (x) (is-a x 'PERSON?)) in-room)))
	     (delq self people))))
 	   	 	     
	((STUFF-AROUND)		; stuff (non people) in room...
	 (lambda (self) 	   	 	     
	   (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
		  (stuff (myfilter (lambda (x) (not (is-a x 'PERSON?))) in-room)))
	     stuff))) 	   	 	     
 	   	 	     
	((PEEK-AROUND)		; other people's stuff...
	 (lambda (self) 	   	 	     
	   (let ((people (ask self 'PEOPLE-AROUND)))
	     (accumulate append '() (map (lambda (p) (ask p 'THINGS)) people)))))
 	   	 	     
	((TAKE) 	   	 	     
	 (lambda (self thing) 	   	 	     
	   (cond ((ask self 'HAVE-THING? thing)  ; already have it
		  (ask self 'SAY (list "I am already carrying"
				       (ask thing 'NAME)))
		  #f) 	   	 	     
		 ((or (is-a thing 'PERSON?)
		      (not (is-a thing 'MOBILE-THING?)))
		  (ask self 'SAY (list "I try but cannot take"
				       (ask thing 'NAME)))
		  #F) 	   	 	     
		 (else 	   	 	     
		  (let ((owner (ask thing 'LOCATION)))
		    (ask self 'SAY (list "I take" (ask thing 'NAME)
					 "from" (ask owner 'NAME)))
		    (if (is-a owner 'PERSON?)
			(ask owner 'LOSE thing self)
			(ask thing 'CHANGE-LOCATION self))
		    thing))))) 	   	 	     
 	   	 	     
	((LOSE) 	   	 	     
	 (lambda (self thing lose-to)
	   (ask self 'SAY (list "I lose" (ask thing 'NAME)))
	   (ask self 'HAVE-FIT)
	   (ask thing 'CHANGE-LOCATION lose-to)))
 	   	 	     
	((DROP) 	   	 	     
	 (lambda (self thing) 	   	 	     
	   (ask self 'SAY (list "I drop" (ask thing 'NAME)
				"at" (ask (ask self 'LOCATION) 'NAME)))
	   (ask thing 'CHANGE-LOCATION (ask self 'LOCATION))))
 	   	 	     
        ((GO-EXIT) 	   	 	     
         (lambda (self exit) 	   	 	     
           (ask exit 'USE self)))
 	   	 	     
	((GO) 	   	 	     
	 (lambda (self direction) ; person, symbol -> boolean
	   (let ((exit (ask (ask self 'LOCATION) 'EXIT-TOWARDS direction)))
	     (if (is-a exit 'EXIT?)
                 (ask self 'GO-EXIT exit)
		 (begin (ask screen 'TELL-ROOM (ask self 'LOCATION)
			     (list "No exit in" direction "direction"))
			#F)))))
	((SUFFER) 	   	 	     
	 (lambda (self hits) 	   	 	     
	   (ask self 'SAY (list "Ouch!" hits "hits is more than I want!"))
	   (set! health (- health hits))
	   (if (<= health 0) (ask self 'DIE))
	   health)) 	   	 	     
 	   	 	     
	((DEATH-SCREAM) 	   	 	     
	 (lambda (self) 	   	 	     
	   (ask screen 'TELL-WORLD
		'("An earth-shattering, soul-piercing scream is heard..."))))
 	   	 	     
	((ENTER-ROOM) 	   	 	     
	 (lambda (self) 	   	 	     
	   (let ((others (ask self 'PEOPLE-AROUND)))
	     (if (not (null? others))
		 (ask self 'SAY (cons "Hi" (names-of others)))))
	   (ask (ask self 'location) 'make-noise self)
	   #T)) 	   	 	     
 	   	 	     
	;; Here is the original DIE method
   #| 	   	 	     
	 ((DIE) 	   	 	     
	  (lambda (self) 	   	 	     
	    (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
	    (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
	 	     (ask self 'THINGS))
	    (ask self 'DEATH-SCREAM)
	    (ask death-exit 'USE self)
	    'GAME-OVER-FOR-YOU-DUDE))
   |# 	   	 	     
	;; Your version goes here:
 	   	 	     
        ((DIE) 	   	 	     
         (lambda (self)
           (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
           (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
                     (ask self 'THINGS))
           (ask self 'DEATH-SCREAM)
           (set! lives (- lives 1))
           (if (<= lives 0) (begin (ask death-exit 'USE self)
                                   'GAME-OVER-FOR-YOU-DUDE) 
               (begin (ask self 'change-location birthplace)
                      (ask self 'install)
                      (set! health 3)
                      (ask screen 'TELL-WORLD
                           (list (ask self 'NAME)
                                 "reincarnated in"
                                 (ask (ask self 'LOCATION) 'NAME)
                                 "with" (ask self 'lives) "lives left."))))
           )) 	   	 	     
 	   	 	     
	(else (find-method message mobile-thing-part container-part))))))


 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;;:;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;I have wrote a new implementation for die.
;I also added a new case to get lives.
;If lives is more than 0:
;-location is changed to birthplace,
;-place and thing is synchronized with install
;-health is full again,
;-and a message is displayed.
;If if is less than or equal to zero, person dies like it dies before.
;I have checked the code with the below cases and it workes as expected.
 	   	 	     
 	   	 	     	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;;::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;; 	   	 	     

;> (setup 'doruk)
;ready

;> (ask me 'look-around)
;You are in adm-building 
;You are not holding anything. 
;You see stuff in the room: chair-of-the-faculty 
;There are no other people around you. 
;The exits are in directions: in south north ok

;> (ask me 'die)
;At adm-building doruk says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;doruk reincarnated in adm-building with 2 left. 

;> (ask me 'die)
;At deans-office doruk says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;doruk reincarnated in deans-office with 1 left.

;> (ask me 'die)
;At deans-office doruk says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;doruk moves from deans-office to heaven game-over-for-you-dude

;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;:;;
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONE!!!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;:;:
;;; Computer exercise 5: Perhaps to arm oneself against a sea of .... ;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;::;
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 	   	 	     
(define (make-weapon name location damage)
  (let ((mobile-thing-part (make-mobile-thing name location)))
    (lambda (message)
      (case message
        ((WEAPON?) (lambda (self) #T))
        ((DAMAGE) (lambda (self) damage))
        ((HIT) (lambda (self user target)
                 (ask user 'emit (list (ask user 'name) "hit" (ask target 'name) "with" (ask self 'name)))
                 (ask target 'suffer (random-number damage))
                 ))
        (else (find-method message mobile-thing-part))))))

(define (create-weapon name location damage)
  (create make-weapon name location damage))


    
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;::;:::
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;Wrote the code for weapon class.
;WEAPON? returns true.
;DAMAGE returns damage.
;HIT emits a message and target suffers the damage amount
;tested the code with the cases shown below and everything worked as expected.
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;:::;;;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;

;> (setup 'doruk)
;ready

;> (ask me 'get 'inflatable-lambda)
;At eng-z21 doruk says -- I take inflatable-lambda from eng-z21

;> (ask (thing-named 'inflatable-lambda) 'hit me (thing-named 'prof-yuret))
;At doruk doruk hit prof-yuret with inflatable-lambda 
;At eng-z21 prof-yuret says -- Ouch! 2 hits is more than I want! 1


;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;;;:::;;:
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONE!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;;;;
;;;;;;;; Computer exercise 6: Good thing I'm armed and dangerous ;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;;;:
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 	   	 	     
(define (make-violent-person name birthplace activity miserly violence)
  (let ((autonomous-player-part (make-autonomous-player name birthplace activity miserly)))
    (lambda (message)
      (case message
        ((VIOLENT-PERSON?) (lambda (self) #T))
        ((INSTALL) (lambda (self)
		     (ask clock 'ADD-CALLBACK
			  (make-clock-callback 'act-violently self
					       'ACT-VIOLENTLY))
		     (delegate autonomous-player-part self 'INSTALL)))
        ((DIE) 	   	 	     
         (lambda (self)
           (if (= 1 (ask self 'lives))
               (ask clock 'REMOVE-CALLBACK self 'act-violently))
           (delegate autonomous-player-part self 'DIE)))
        ((ACT-VIOLENTLY)
         (lambda (self)
           (let ((people-around (ask self 'PEOPLE-AROUND))
                 (weapons (myfilter (lambda (x) (is-a x 'WEAPON?)) (ask self 'THINGS))))
             (if (= (random violence) 0) 
                 (if (and (not (null? weapons)) (not (null? people-around)))
                     (ask (pick-random weapons) 'hit self (pick-random people-around))
           )))))
        (else (get-method message autonomous-player-part))))))

(define (create-violent-person name birthplace activity miserly violence)
  (create make-violent-person name birthplace activity miserly violence))

 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;;:;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     

;INSTALL and DIE is implemented analogous to autonomous person.
;ACT-VIOLENTLY:
;if (random violence) is equal to 0,
;and if there are people around and available weapons, violent-person hits a
;random person with a random weapon.

;to test the code I wrote, I created a weapon and a violent-person in the same room with me.
;I temporarily commented out move part of autonomous-player so the violent-person
;would stay in the same room with me.
;At first run-clock violent person took the weapon.
;In the later run-clocks violent-person hit me.
;The procedures worked as expected.
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;;::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;

;> (setup 'doruk)
;ready

;> (create-violent-person 'violent-george (ask me 'location) 2 2 2)
;(create-weapon 'large-stick (ask me 'location) 3)
;#<procedure:...ct4/project4.scm:583:4>
;#<procedure:...ct4/project4.scm:523:4>

;> (run-clock 1)
;At cas-building violent-george says -- I take large-stick from cas-building
;--- the-clock Tick 0 --- done

;> (run-clock 1)
;At cas-building violent-george hit doruk with large-stick 
;At cas-building doruk says -- Ouch! 1 hits is more than I want!   	 	     
;--- the-clock Tick 2 --- done 	   	 	     
 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;:;;
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONE!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;:;:
;;; Computer exercise 7: A good hacker could defuse this situation ;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;::;
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 	   	 	     
(define (make-bomb name location damage)
  (let ((aware-part (make-aware-thing))
        (mobile-thing-part (make-mobile-thing name location))
        (armed? #f))
    (lambda (message)
      (case message
        ((BOMB?) (lambda (self) #t))
        ((ARM) (lambda (self) (set! armed? #t) 'armed))
        ((DISARM) (lambda (self) (set! armed? #f) 'disarmed))
        ((ARMED?) (lambda (self) armed?))
        ((TRIGGER) (lambda (self) (if armed? (ask self 'activate) #f)))
        ((HEARD-NOISE) (lambda (self who)
                         (ask self 'trigger)))
        ((ACTIVATE)
         (lambda (self)
           (let ((people-around (myfilter (lambda (x) (is-a x 'PERSON?)) (ask (ask self 'LOCATION) 'THINGS))))
             (ask screen 'TELL-WORLD
                  (list "At" (ask (ask self 'location) 'name) (ask self 'name) "detonated"))
             (for-each (lambda (x) (ask x 'suffer damage)) people-around)
             (ask self 'destroy))))
         (else (find-method message aware-part mobile-thing-part))))))
    
    
(define (create-bomb name location damage)
  (create make-bomb name location damage))

 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;::;:::
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;I implemented the bomb class as asked.

;ACTIVATE emits a message,
;deals damage to everyone in the room
;and then destroys itself

;to test the code I created a bomb in the location I am in.
;luckily as I went away from that location someone came in detonated the bomb.
;the damages were done correctly and when I walked in the room again
;I saw that the bomb was destroyed.


 	   	 	      	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;:::;;;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;; 	   	 	     

;> (setup 'doruk)
;ready

;> (create-bomb 'bomb1 (ask me 'location) 5)
;#<procedure:...ct4/project4.scm:673:4>

;> (ask (thing-named 'bomb1) 'arm)
;armed

;> (ask me 'look-around)
;You are in adm-building 
;You are not holding anything. 
;You see stuff in the room: bomb1 
;There are no other people around you. 
;The exits are in directions: in south north ok

;> (ask me 'go 'north)
;doruk moves from adm-building to great-court
;violent-micheal moves from registrar-office to adm-building 
;At adm-building bomb1 detonated 
;At adm-building violent-micheal says -- Ouch! 5 hits is more than I want! 
;At adm-building violent-micheal says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;violent-micheal reincarnated in registrar-office with 2 lives left. 

;> (ask me 'go 'south)
;doruk moves from great-court to adm-building 
;You are in adm-building 
;You are not holding anything. 
;There is no stuff in the room. 
;You see other people: alyssa-p-hacker 
;The exits are in directions: in south north

;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;;:;:::;;:;:::;;:
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONEEE!!!!	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;;;;
;;;; Computer exercise 8: Well, maybe only if they have enough time ;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;;;:
;; 	   	 	     
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;

(define (make-bomb-with-timer name location time)
  (let ((bomb-part (make-bomb name location 5))
        (timer time))
    (lambda (message)
      (case message
        ((TRIGGER) (lambda (self)
                     (if (ask self 'armed?)
                     (ask clock 'ADD-CALLBACK
                          (make-clock-callback 'activate self
                                               'ACTIVATE)))))
        ((ACTIVATE) (lambda (self)
                      (if (= timer 0)
                          (begin (delegate bomb-part self 'activate)
                                 (ask clock 'REMOVE-CALLBACK self 'activate))
                          (set! timer (- timer 1)))))
        (else (get-method message bomb-part))))))
        
(define (create-bomb-with-timer name location damage)
  (create make-bomb-with-timer name location damage)) 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;;:;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;trigger method starts a callback for activate
;everytime it is activated, if timer is zero, it detonates, if not timer is reduced by 1.

;to test to code, I created a bomb-with-timer at my location.
;I armed and triggered it.
;after 4 run clocks, it detonated as expected.
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;;::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;

;> (setup 'doruk)
;ready

;> (ask screen 'DEITY-MODE #f)

;> (create-bomb-with-timer 'mytbomb (ask me 'location) 3)
;#<procedure:...ct4/project4.scm:766:4>

;> (ask (thing-named 'mytbomb) 'arm)
;armed

;> (ask (thing-named 'mytbomb) 'trigger)
;added

;> (run-clock 3)
;At registrar-office lambda-man says -- Hi doruk 
;--- the-clock Tick 0 --- 
;lambda-man moves from registrar-office to bursar-office 
;At registrar-office lambda-man says -- Hi doruk 
;--- the-clock Tick 1 --- 
;lambda-man moves from registrar-office to adm-building 
;At registrar-office lambda-man says -- Hi doruk 
;--- the-clock Tick 2 --- done

;> (run-clock 1)
;At registrar-office mytbomb detonated 
;At registrar-office lambda-man says -- Ouch! 5 hits is more than I want! 
;At registrar-office lambda-man says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;lambda-man reincarnated in dorms with 2 lives left. 
;At registrar-office doruk says -- Ouch! 5 hits is more than I want! 
;At registrar-office doruk says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;doruk reincarnated in registrar-office with 2 lives left. 
;An earth-shattering, soul-piercing scream is heard... 
;ben-bitdiddle reincarnated in cici-bufe with 2 lives left. 
;An earth-shattering, soul-piercing scream is heard... 
;prof-yuret reincarnated in cici-bufe with 2 lives left. 
;--- the-clock Tick 3 --- done	   	 	     
 	   	 	     
 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;:;;
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;DONE!!!! 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;:;:
;;;;;;;;; Computer Exercise 9: Even you can change the world! ;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;::;
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;::;:::
;;;;;;;;;;;;; DESCRIPTION: ;;;;;;;;;;;;;
;; 	   	 	     

;1. I am going to write a Canadian class.
;   A Canadian is a person who says "Sorry" when he moves something
;   and says "Good day eh?" when he sees someone.

;2. It is going to inherit from autonomous-player.

;3. It doesn't need any internal state information.

;4. Canadian class will inherit all methods from autonomous player.
;   It needs new methods for TAKE and ENTER-ROOM that shadows person's TAKE and ENTER-ROOM
;   And it will have a method CANADIAN? that returns true.

;5. The Canadian class will demonstrate itself on its own when we run-clock.
;   We will see what he is saying on the output.
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;:::;;;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;

(define (make-canadian name birthplace activity miserly)
  (let ((auto-player-part (make-autonomous-player name birthplace activity miserly)))
    (lambda (message) 	   	 	     
      (case message
        ((CANADIAN?) (lambda (self) #T))
        ((TAKE) 	   	 	     
	 (lambda (self thing) 	   	 	     
	   (cond ((ask self 'HAVE-THING? thing)  ; already have it
		  (ask self 'SAY (list "I am already carrying"
				       (ask thing 'NAME))))
		 ((or (is-a thing 'PERSON?)
		      (not (is-a thing 'MOBILE-THING?)))
		  (ask self 'SAY (list "I try but cannot take"
				       (ask thing 'NAME))))
		 (else 	   	 	     
		  (let ((owner (ask thing 'LOCATION)))
		    (ask self 'SAY (list "Sorry I take" (ask thing 'NAME)
					 "from" (ask owner 'NAME)))
		    (if (is-a owner 'PERSON?)
			(ask owner 'LOSE thing self)
			(ask thing 'CHANGE-LOCATION self))
		    thing)))))
        ((ENTER-ROOM) 	   	 	     
	 (lambda (self) 	   	 	     
	   (let ((others (ask self 'PEOPLE-AROUND)))
	     (if (not (null? others))
		 (ask self 'SAY (cons "Good day eh?" (names-of others)))))
	   (ask (ask self 'location) 'make-noise self)
	   #T))
        (else (get-method message auto-player-part))))))
        
(define (create-canadian name birthplace activity miserly)
  (create make-canadian name birthplace activity miserly)) 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;;;:::;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;; 	   	 	     
 	   	 	     
;canadian is a kind of autonomous player.
;So when we run-clock, it is easily observed that the class is running properly.
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;:;::;;;;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;

;> (setup 'doruk)
;ready

;> (run-clock 1)
;canadian-charles moves from computer-club to cici-bufe 
;At cici-bufe canadian-charles says -- Good day eh? cici 
;At cici-bufe canadian-charles says -- Sorry I take student-riot from cici-bufe	   	 	     
 	   	 	     
 	   	 	     
;; 	   	 	     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;:;::;;;:
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;:;::;;:;
;# DO NOT FORGET TO SUBMIT YOUR WORK BEFORE THE DEADLINE!         #   
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;:;::;;::
;# GOOD LUCK!                                                     #   
;;;;;;;::;;:;;:::;:;;::;;;;:::;:::;::;;:;:::;::;;::;:;;:;::;;;:;::;::;;::;;:;;::;;:;;::;;;:;::;:;;
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
 	   	 	     
