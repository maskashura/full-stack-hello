xor #0 $0 #1    ;mov #0 to #1  
jz #1 #13    ;if #1=0 then goto #13
sub #0 $1 #0    ;#0=#0-1
or $0 $0 #1    ; f0(#1) = 0
or $1 $0 #2    ; f1(#2) = 1
;[addr #5] iteration
add #1 #2 #3    ;#3=#2+#1
or $0 #2 #1    ;move #2 to #1
or $0 #3 #2    ;move #3 to #2
sub #0 $1 #0    ;#0=#0-1
jz #0 #11    ;if #5=0 then goto #11
jgt #0 #5    [addr #14]if #5 > 0 then goto #5   
;[addr #11] print result
print #3
halt
;[addr #13] if #0 = 0, just print 0
print $0
halt