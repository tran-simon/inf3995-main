
x11docker --user=RETAIN --runx --workdir=/root/simulation -- -p 80:80 -w /root/simulation  -- inf3995-simulation  argos3 -c ./experiments/crazyflie_sensing.argos
