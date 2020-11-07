data RTree a = Vertex a [RTree a]

preorder :: RTree Int -> [Int]
preorder (Vertex rt leaf) = rt: preorder leaf

{-
Couldnt match expected type 'RTree Int'
    with actual type '[RTree Int]'
-}

preorder (Vertex rt leaf) = rt: concatMap preorder leaf

--Compiling Main
--Ok, modules loaded: Main
