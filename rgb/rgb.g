type ROT
   rLeer
   rBR(BLAU, ROT)
   rGRR(GRUEN, ROT,  ROT)

type BLAU
   bLeer
   bGR(GRUEN, ROT)

type GRUEN
   gLeer
   gRG(ROT, GRUEN)

// Zaehlt die Anzahl der roten Unterbaeume in einem
// roten Baum (Merke: Auch leere Baeume sind "richtige Baeume"!)
action anzRotInRot(ROT   -> int)
  rule anzRotInRot(rLeer -> 1)
  rule anzRotInRot(rBR(B, R) -> A1+A2+1) : anzRotInBlau(B -> A1)
                                           anzRotInRot (R -> A2)
  rule anzRotInRot(rGRR(G, R1, R2) -> A1+A2+A3+1) : anzRotInGruen(G  -> A1)
                                                    anzRotInRot  (R1 -> A2)
                                                    anzRotInRot  (R1 -> A3)

// Zaehlt die Anzahl der roten Unterbaeume in einem blauen Baum
action anzRotInBlau(BLAU  -> int)
  rule anzRotInBlau(bLeer -> 0)
  rule anzRotInBlau(bGR(G, R) -> A1+A2) : anzRotInGruen(G -> A1)
                                          anzRotInRot  (R -> A2)

// Zaehlt die Anzahl der roten Unterbaeume in einem gruenen Baum
action anzRotInGruen(GRUEN -> int)
  rule anzRotInGruen(gLeer -> 0)
  rule anzRotInGruen(gRG(R, G) -> A1+A2) : anzRotInRot  (R -> A1)
                                           anzRotInGruen(G -> A2)