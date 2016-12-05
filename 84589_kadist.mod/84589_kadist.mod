: Copyright (c) California Institute of Technology, 2006 -- All Rights Reserved
: Royalty free license granted for non-profit research and educational purposes.

TITLE KADIST



NEURON {
	SUFFIX kadist
	USEION k READ ek WRITE ik
	
	RANGE gbar
	RANGE minf, mtau, hinf, htau
	
	GLOBAL vhalf_m, vsteep_m, exp_m
	GLOBAL tskew_m, tscale_m, toffset_m 
	
	GLOBAL vhalf_h, vsteep_h, exp_h
	GLOBAL tskew_h, tscale_h, toffset_h 
	
}


INCLUDE "custom_code/inc_files/84589_inact_k_currs.inc"

INCLUDE "custom_code/inc_files/84589_kadist_inact_gate_states.inc"

INCLUDE "custom_code/inc_files/84589_var_funcs.inc"
