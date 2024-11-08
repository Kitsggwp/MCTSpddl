(define (domain random_walk)
  (:requirements :strips :typing :negative-preconditions)
  (:types agent location)

  (:predicates
    (at ?a - agent ?l - location)  ; L'agent est à une certaine location
    (goal ?l - location)           ; Condition de but : l'agent est à un objectif
    (adjacent ?l1 ?l2 - location)  ; Les lieux sont adjacents
    (blocked ?l - location)        ; L'emplacement est bloqué (obstacle)
  )

  (:action move
    :parameters (?a - agent ?from - location ?to - location)
    :precondition (and (at ?a ?from) (adjacent ?from ?to) (not (blocked ?to)))
    :effect (and (not (at ?a ?from)) (at ?a ?to))
  )
)
