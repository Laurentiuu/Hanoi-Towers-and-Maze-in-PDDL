(define (domain labirint)
  (:requirements :strips)
  (:types agent position)
  (:predicates 
    (inc ?x ?y - position)
    (dec ?x ?y - position)
    (at ?a - agent ?x ?y - position)
    (wall ?x ?y))
   
  (:action move-up
    :parameters (?a - agent)
    :effect (forall (?x ?y ?yNew - position)
                    (when 
                      (and (at ?a ?x ?y)
                           (dec ?y ?yNew)
                           (not (wall ?x ?yNew)))
                      (and (not (at ?a ?x ?y))
                           (at ?a ?x ?yNew)))
                    ))

  (:action move-down
    :parameters (?a - agent)
    :effect (forall (?x ?y ?yNew - position)
                    (when 
                      (and (at ?a ?x ?y)
                           (inc ?y ?yNew)
                           (not (wall ?x ?yNew)))
                      (and (not (at ?a ?x ?y))
                           (at ?a ?x ?yNew)))
                    ))

  (:action move-right
    :parameters (?a - agent)
    :effect (forall (?x ?y ?xNew - position)
                    (when 
                      (and (at ?a ?x ?y)
                           (inc ?x ?xNew)
                           (not (wall ?xNew ?y)))
                      (and (not (at ?a ?x ?y))
                           (at ?a ?xNew ?y)))
                    ))

  (:action move-left
    :parameters (?a - agent)
    :effect (forall (?x ?y ?xNew - position)
                    (when 
                      (and (at ?a ?x ?y)
                           (dec ?x ?xNew)
                           (not (wall ?xNew ?y)))
                      (and (not (at ?a ?x ?y))
                           (at ?a ?xNew ?y)))
                    ))
)