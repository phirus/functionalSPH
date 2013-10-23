import Kernel

-- for a 2D Simulation a 2-tuple represents a coordinate (x,y)

distance :: (Floating a) => (a,a) -> (a,a) -> a
distance (x1,y1) (x2,y2) = sqrt((x1 - x2)^2 + (y1 - y2)^2)

