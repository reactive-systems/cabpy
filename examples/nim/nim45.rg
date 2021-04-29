int: x, y
init: !(x = y) & x = 4 & y = 5
safe: (X < x & X >= 0 & Y = y) | (Y < y  & Y >= 0 & X = x)
reach: (X < x & X >= 0 & Y = y) | (Y < y  & Y >= 0 & X = x)
goal: x = y & x = 0 & y = 0