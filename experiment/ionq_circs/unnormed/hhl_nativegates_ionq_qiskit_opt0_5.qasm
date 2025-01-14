// Benchmark was created by MQT Bench on 2022-08-30
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: 0.1.0
// Qiskit version: {'qiskit-terra': '0.20.0', 'qiskit-aer': '0.10.4', 'qiskit-ignis': '0.7.0', 'qiskit-ibmq-provider': '0.19.0', 'qiskit-aqua': None, 'qiskit': '0.36.0', 'qiskit-nature': '0.3.1', 'qiskit-finance': '0.3.1', 'qiskit-optimization': '0.3.2', 'qiskit-machine-learning': '0.4.0'}
// Used Gate Set: ['rxx', 'rz', 'ry', 'rx', 'measure']

OPENQASM 2.0;
include "qelib1.inc";
qreg q4[1];
qreg q5[3];
qreg q6[1];
creg meas[5];
rz(pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
ry(pi/2) q5[0];
rx(pi) q5[0];
rz(3*pi/8) q5[0];
rz(0) q5[0];
rz(pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(-pi/8) q5[0];
ry(pi/2) q5[0];
ry(pi/2) q5[1];
rx(pi) q5[1];
rz(3*pi/4) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(pi/2) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(-pi/4) q5[1];
ry(pi/2) q5[1];
ry(pi/2) q5[2];
rx(pi) q5[2];
rz(3*pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(-pi) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(9*pi/2) q4[0];
rz(-3*pi/2) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rx(pi) q5[2];
rxx(pi/2) q5[1],q5[2];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
rz(pi/4) q5[2];
rxx(pi/2) q5[1],q5[2];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(pi) q5[1];
rx(-pi/2) q5[2];
rz(-pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(pi/8) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(-pi/4) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(pi) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(-pi/4) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
rz(-pi/8) q5[2];
ry(pi/2) q5[2];
ry(1.217116) q6[0];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
ry(-0.69351723) q6[0];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
ry(-0.8772791) q6[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
ry(0.35368032) q6[0];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(3.75015065655162) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(2.53303465062796) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(-pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(2.79483403842711) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(3.48835126875247) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(-pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(2.70295310535502) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(3.58023220182456) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(-pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(3.31843281402541) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(2.96475249315417) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(-pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(3.75015065655162) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(2.53303465062796) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(-pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(2.79483403842711) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(3.48835126875247) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(-pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(3.31843281402541) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(2.96475249315417) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rz(0.0) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(-pi/4) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0.0) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0.0) q6[0];
rx(pi/2) q6[0];
rz(2.70295310535502) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(0) q6[0];
rx(pi/2) q6[0];
rz(3.58023220182456) q6[0];
rx(pi/2) q6[0];
rz(3*pi) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q6[0];
rx(-pi/2) q6[0];
rz(-pi/4) q6[0];
rxx(pi/2) q5[0],q6[0];
rx(-pi/2) q6[0];
rz(pi/4) q6[0];
ry(pi/2) q6[0];
rx(pi) q6[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(-pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(pi) q5[0];
rz(pi/4) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(-pi/4) q5[1];
rxx(pi/2) q5[0],q5[1];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(pi/8) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[1];
rz(pi/4) q5[1];
ry(pi/2) q5[1];
rx(pi) q5[1];
rz(pi/4) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(-pi/8) q5[2];
rxx(pi/2) q5[0],q5[2];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(-pi) q5[0];
ry(pi/2) q5[0];
rx(-pi/2) q5[2];
rz(pi/8) q5[2];
rxx(pi/2) q5[1],q5[2];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
rz(-pi/4) q5[2];
rxx(pi/2) q5[1],q5[2];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rx(-pi/2) q5[2];
rz(pi/4) q5[2];
ry(pi/2) q5[2];
rx(pi) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(0) q5[2];
rz(-pi) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
ry(pi/2) q5[2];
rxx(pi/2) q5[2],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(2.9845130209103) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-3*pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.29867228626928) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-3*pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(0) q5[1];
rz(-pi) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
ry(pi/2) q5[1];
rxx(pi/2) q5[1],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.04341788316511) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-3*pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.23976742401447) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-3*pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992953) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(-pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992953) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(-pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992953) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(-pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992953) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(0) q5[0];
rz(-pi) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(pi) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992953) q4[0];
rx(pi/2) q4[0];
rz(3*pi) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
ry(pi/2) q5[0];
rxx(pi/2) q5[0],q4[0];
rx(-pi/2) q4[0];
rz(0) q4[0];
rx(pi/2) q4[0];
rz(3.06305283725005) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rz(-3*pi/2) q4[0];
rx(pi/2) q4[0];
rz(3.22013246992954) q4[0];
rx(pi/2) q4[0];
rz(5*pi/2) q4[0];
rx(-pi/2) q5[0];
ry(-pi/2) q5[0];
rz(-3*pi/8) q5[0];
ry(pi/2) q5[0];
rx(pi) q5[0];
rx(-pi/2) q5[1];
ry(-pi/2) q5[1];
rz(-3*pi/4) q5[1];
ry(pi/2) q5[1];
rx(pi) q5[1];
rx(-pi/2) q5[2];
ry(-pi/2) q5[2];
rz(-3*pi/2) q5[2];
ry(pi/2) q5[2];
rx(pi) q5[2];
barrier q4[0],q5[0],q5[1],q5[2],q6[0];
measure q4[0] -> meas[0];
measure q5[0] -> meas[1];
measure q5[1] -> meas[2];
measure q5[2] -> meas[3];
measure q6[0] -> meas[4];
