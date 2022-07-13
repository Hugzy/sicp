defmodule Chapter2.Ex24 do
 """
  verify that (car (cons x y)) yiels x for any x y

  given the following implementation
  (define (cons x y)
   (lambda (m) (m x y)))

  (define (car z)
   (z (lambda (p q) p)))
 """
end
