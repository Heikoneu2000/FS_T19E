set autoscale
set title 'Zentripetalbeschleunigung'
set xlabel 'Winkelgeschwindigkeit {/Symbol w} in rad/s'
set ylabel 'Beschleunigung a_z in m/s^2'
DATAFILE = ARG1
g(x)=c+d*x+e*x*x 
fit g(x) DATAFILE using 2:3 via c,d,e
plot DATAFILE using 2:3 title 'daten', g(x) title sprintf("%.3fx^2+%.3fx+%.3f", e,d,c)