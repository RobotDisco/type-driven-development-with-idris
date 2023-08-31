module Main
main : IO ()
main = putStrLn ?greeting
-- Corrected by using ':r' to incrementally resolve types
-- main = putStrLn 'x'
-- main = putStrLn (?convert 'x')
-- main = putStrLn (cast 'x')
