defmodule Ex24 do
 @moduledoc """
  verify that (car (cons x y)) yiels x for any x y

  given the following implementation
  (define (cons x y)
   (lambda (m) (m x y)))

  (define (car z)
   (z (lambda (p q) p)))
 """


  def cons(x, y) do
    fn m -> m.(x, y) end
  end

  def car(z) do
    z.(fn p,_q -> p end)
  end

  def cdr(z) do
    z.(fn _p, q -> q end)
  end

end
