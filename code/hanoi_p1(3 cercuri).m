(define (problem hanoi3Disc)
  (:domain hanoi)
  (:objects bar1 bar2 bar3 disc1 disc2 disc3)
  (:init 
   (smaller bar1 disc1) (smaller bar1 disc2) (smaller bar1 disc3)
   (smaller bar2 disc1) (smaller bar2 disc2) (smaller bar2 disc3)
   (smaller bar3 disc1) (smaller bar3 disc2) (smaller bar3 disc3)
   (smaller disc2 disc1) (smaller disc3 disc1) (smaller disc3 disc2)

   (clear bar2) (clear bar3) (clear disc1)

   (on disc3 bar1) (on disc2 disc3) (on disc1 disc2))
   
  (:goal (and (on disc3 bar3) 
              (on disc2 disc3) 
              (on disc1 disc2)))
  )