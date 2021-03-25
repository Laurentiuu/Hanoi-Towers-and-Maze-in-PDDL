(define (domain hanoi)
  (:requirements :strips)
  (:predicates 
  		(clear ?x) ;discul nu se mai afla unde era
  		(on ?x ?y) ; x se afla pe y
  		(smaller ?x ?y)) ; x este mai mic decat y

  ;este doar o singura actiune in joc(muti un disc doar o singura data)
  (:action move
   		:parameters (?disc ?from ?to)
    	:precondition (and (smaller ?to ?disc) 
                         (on ?disc ?from) 
                         (clear ?disc) 
                         (clear ?to))
    	:effect (and (clear ?from) 
    		           (on ?disc ?to) 
    		           (not (on ?disc ?from))  
			             (not (clear ?to)) ) )
  )