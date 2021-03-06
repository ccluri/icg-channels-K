TITLE Kv7-current

COMMENT
	Model reproducing cortical M currents, M.H.P. Kole
ENDCOMMENT

UNITS {
	(mA) = (milliamp)
	(mV) = (millivolt)
	(pS) = (picosiemens)
	(um) = (micron)


}

INDEPENDENT {t FROM 0 TO 1 WITH 1 (ms)}

PARAMETER {	
	dt		(ms)
	v 		(mV)
	vhalf = -48 (mV)				 
	gbar = 20	 (pS/um2)	:0.002 mho/cm2
 }


NEURON {
	SUFFIX Kv7
	USEION k READ ek WRITE ik
	RANGE gbar, ik
}

STATE { m }

ASSIGNED {
	ik (mA/cm2)
	gk (pS/um2)
	ek (mV)	
	
}


INITIAL {
	m=alpha(v)/(beta(v)+alpha(v))
}

BREAKPOINT {
	SOLVE state METHOD cnexp
	ik=(1e-4)*gbar*m*(v-ek)
}

FUNCTION alpha(v(mV)) {
	alpha = 0.00623*exp((v-vhalf)/18.76)	

}

FUNCTION beta(v(mV)) {
	beta = 0.0199*exp(-(v-vhalf)/30.6)			
}

DERIVATIVE state {    

	m' = (1-m)*alpha(v) - m*beta(v)

}




