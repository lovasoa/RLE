import Data.Char

type RLE a = [(Int, a)]

unrle :: Eq a => RLE a -> [a]
unrle = concatMap (uncurry replicate)

s_to_rle :: String -> RLE Char
s_to_rle "" = []
s_to_rle (s:ss) = if isDigit s
                  then let (n,c:cs) = span isDigit (s:ss)
                       in (read n, c):(s_to_rle cs)
                  else (1, s):(s_to_rle ss)

main = do
  i <- getContents
  putStr $ unrle $ s_to_rle i
