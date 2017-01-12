# RLE
**Run-length encoding** and decoding in haskell.

## Repository contents
 * `rle.hs` : Compute the run length encoding of the standars input and print it on the standart output
 * `unrle.hs` : Takes a run length encoded stream on the standard input and decodes it to the standart output

## Compiling
```sh
$ ghc rle.hs
$ ghc unrle.hs
```

## Examples

### rle
```sh
$ echo -n "boom" | ./rle 
1b2o1m
```
### unrle
```sh
$ echo -n "1b2o1m" | ./unrle 
1b2o1m
```
