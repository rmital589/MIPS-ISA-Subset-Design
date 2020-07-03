restart
log -r *
force CLK 0 0 , 1 5 -repeat 10
force rst 1 0 , 0 15
force SW0 0 0 , 1 2000, 0 2500, 1 3000, 0 3500, 1 4000, 0 4500 -repeat 5000
force SW1 0 0 , 0 2000, 1 2500, 1 3000, 0 3500, 0 4000, 0 4500 -repeat 5000
force SW2 0 0 , 0 2000, 0 2500, 0 3000, 1 3500, 1 4000, 0 4500 -repeat 5000
force btnL 0 0, 0 5000 
force btnR 0 0 ,1 5000 
run  10000