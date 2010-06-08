-- Splits the input list on every occurance where the predicate returns False
-- splitWith odd [1,2,3,4] -> [[1,2],[4]]
splitWith _ [] = []
-- splitWith func xs =
--    let (pre, suf) = span func xs
--    in case suf of
--       null empty -> splitWith func suf
--       _ -> pre : stripWith func suf
splitWith func xs | null pre  = splitWith func (tail suf)
                  | null suf  = [pre]
                  | otherwise = pre : splitWith func (tail suf)
                  where (pre, suf) = span func xs
