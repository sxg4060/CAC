# Crosstalk
Crosstalk is a phenomenon associated with the disturbance of signals across interconnects adjacent to each other. One interconnect may be transferring a signal as an adjacent interconnect may also be transferring a signal. If data within both signals change differently, coupling capacitance is created, delaying the transmission of data in a greater manner.

# Crosstalk Avoidance Coding Schemes
Three avoidance mechanisms were devised and created to mitigate the effects of coupling capacitance between adjacent interconnects.
- FOC: Forbidden Overlap Coding (FOC) is a crosstalk avoidance
coding scheme that removes the common notion of
“Up-Down-Up” and “Down-Up-Down” transitions. If the
encoded word, or coded interconnect signal, has a “101”
pattern at a bit position, the other code words cannot have the
opposite pattern at the same bit position of “010”. This
reduces crosstalk delay from (1 + 4λ)T to (1 + 3λ)T.
- FPC: Forbidden Pattern Coding (FPC) is a crosstalk avoidance
coding scheme that does not allow “101” or “010” crosstalk.
Transitioning to one of these code words at any position
would give the highest amount of coupling capacitance since
the signal is switching in the opposite direction the one
adjacent to it is, causing the worst-case delay for signal data.
- FTC: Forbidden Transition Coding (FTC) is a crosstalk avoidance
coding scheme that does not allow “01” and “10” to exist
within coded words at the same bit position. Transitioning to
one of these code words at the same position would cause a
delay similar to that of the FPC.