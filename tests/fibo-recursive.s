or $0 $0 #3    ; init result(#3)=0
or $0 $0 #1    ; f0(#1) = 0
or $1 $0 #2    ; f1(#2) = 1
call #6    ; call recursion function
print #3    ; print result(#3)
halt       
;[addr #6] (recursion function)
xor #0 #2 #5    ; mov f1(#2) to #5
jz #5 #9    ;if #5=0 then goto #9
jnz #5 #11    ;if #5!=0 then goto #11
add #3 #2 #3    ;[addr #9] n(#3)=n(#3)+f1(#2)
ret   
;[addr #11]    
xor #0 #1 #5    ;mov f0(#1) to #5 
jz #5 #14    ;if #5=0 then goto #14
jnz #5 #15    ;[addr #14]if #5!=0 then goto #15
ret   
;[addr #15]    
sub #0 $1 #0    ;#0=#0-1
call #6
sub #0 $1 #0    ;#0=#0-1
call #6
add #0 $2 #0    ;#0=#0+2
ret 