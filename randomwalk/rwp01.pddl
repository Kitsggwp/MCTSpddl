(define (problem random_walk_with_obstacles_single_agent)
  (:domain random_walk)

  (:objects
    agent1 - agent
    location1 location2 location3 location4 location5 location6 location7 location8 location9 location10 - location
  )

  (:init
    ;; Position initiale de l'agent
    (at agent1 location1)

    ;; Lieux adjacents (terrain plus grand avec plus de connexions)
    (adjacent location1 location2)
    (adjacent location2 location3)
    (adjacent location3 location4)
    (adjacent location4 location5)
    (adjacent location5 location6)
    (adjacent location6 location7)
    (adjacent location7 location8)
    (adjacent location8 location9)
    (adjacent location9 location10)
    (adjacent location10 location1)  ;; Terrain circulaire

    (adjacent location1 location3)
    (adjacent location2 location4)
    (adjacent location3 location5)
    (adjacent location4 location6)
    (adjacent location5 location7)
    (adjacent location6 location8)
    (adjacent location7 location9)
    (adjacent location8 location10)
    
    ;; Objets bloqués (obstacles) dans certaines positions
    (blocked location2)  ;; Obstacle sur location2
    (blocked location5)  ;; Obstacle sur location5
    (blocked location8)  ;; Obstacle sur location8
  )

  ;; Objectif : l'agent doit atteindre location10
  (:goal 
    (at agent1 location10)
  )
)
