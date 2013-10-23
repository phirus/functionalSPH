module Kernel(
	kernel
	, spikyKernel
	, viscosityKernel
	)
where 

supportLength = 1

kernel :: Double -> Double
kernel r
	| r > sl = 0
	| otherwise = 315/(64 * pi * sl^9) * (sl^2 - r^2)^3
	where sl = supportLength

spikyKernel :: Double -> Double
spikyKernel r 
	| r > sl = 0
	| otherwise = 15/(pi * sl^6) * (sl - r)^3
	where sl = supportLength

viscosityKernel :: Double -> Double
viscosityKernel r 
	| r > sl = 0
	| otherwise = 15/(2*pi * sl^3) * ( (r^2)/(sl^2) - (r^3)/(2*sl^3) + sl/(2*r) - 1 )
	where sl = supportLength