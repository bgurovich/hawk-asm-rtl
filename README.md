# HAWK Pedestrian Crosswalk – ASM RTL Design

This project implements a High-intensity Activated crossWalk (HAWK)
controller using an Algorithmic State Machine (ASM) and RTL methodology.

## Architecture
- FSM-based controller
- Counter datapath for timing
- Top-level RTL integration

## Files
- hawk_controller.v – FSM controller
- hawk_datapath.v – counter datapath
- hawk_main.v – RTL integration
- hawk_tb.v – testbench
- hawk.xdc – Basys-3 constraints

## Tools
- Xilinx Vivado
- Basys-3 FPGA
