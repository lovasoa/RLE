-- Encode a list using RLE
rle :: Eq a => [a] -> [(Int, a)]
rle [] = []
rle (c:s) = let (eq, diff) = span (==c) s in (1+length eq, c):rle diff

-- Encode an RLE to a string
rle_to_s :: [(Int, Char)] -> String
rle_to_s = concatMap (\(n,c) -> show n ++ [c])

main = do
  i <- getContents
  putStr $ rle_to_s $ rle i
