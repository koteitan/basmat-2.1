A=9:dim B(infinity,infinity):dim�@C(infinity)
for D=0 to 9
  for E=0 to A
    B(1,E)=1
  next
  for F=1 to 0 step -1
    A=A*A
    for G=0 to E
      if B(F,G)=0 then H=G-1:G=E
    next
    for I=0 to F
      for J=0 to H
        if B(F-I,J)<B(F,J) then K=K+1
      next
      if H+1=K then L=I:I=F
      K=0
    next
    for M=0 to H
      C(M)=B(F,M)-B(F-L,M)
    next
    for N=1 to A*L
      for O=0 to H-1
        B(F,O)=B(F-L,O)+C(O)
      next
      B(F,O)=B(F-L,O)
      F=F+1
    next
  next
next
print A
