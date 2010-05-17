-- This one works for lists >= 2 in length, with just one
-- element it returns that element, with an empty list it
-- raises: *** Exception: Prelude.head: empty list
-- If it does not receive a list of length >= 2 it should
-- really raise an exception
lastButOne xs = head (drop(length(xs) - 2) xs)

-- To test thhis you can load it in ghci by:
-- ghci > :load ch02/lastButOne.hs
-- ghci > lastButOne [1,2,3,4,5]
