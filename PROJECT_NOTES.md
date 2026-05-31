# 🚀 MiniRISC16 CPU Project - Complete Interview Notes

# ________________________________________
# 1. What is this Project?
# ________________________________________

MiniRISC16 is a custom 16-bit Single-Cycle RISC Processor designed using Verilog HDL.

The processor can fetch instructions from memory, decode them, execute arithmetic and logical operations, store results in registers, and stop execution when a HALT instruction is encountered.

The project demonstrates the core working principles of a real CPU in a simplified form.

Think of it as a miniature version of a real processor like ARM, RISC-V, or Intel x86.

---

# ________________________________________
# 2. One-Line Interview Explanation
# ________________________________________

"I designed and implemented a custom 16-bit single-cycle RISC processor in Verilog that supports MOVI, ADD, SUB, AND, OR, and HALT instructions and demonstrates the complete Fetch → Decode → Execute → Writeback cycle."

---

# ________________________________________
# 3. What Does the CPU Actually Do?
# ________________________________________

The CPU executes a program stored in Instruction Memory.

Current Program:

MOVI R1,10
MOVI R2,5

ADD R3,R1,R2
SUB R4,R1,R2
AND R5,R1,R2
OR  R6,R1,R2

HALT

Result:

R1 = 10
R2 = 5

R3 = 15
R4 = 5
R5 = 0
R6 = 15

---

# ________________________________________
# 4. Most Important Analogy
# ________________________________________

Imagine the CPU is an office worker.

Instruction Memory = Notebook containing tasks

Program Counter = Finger pointing to current task

Decoder = Translator

Control Unit = Manager

Register File = Storage drawers

ALU = Calculator

The worker reads one instruction at a time and executes it.

---

# ________________________________________
# 5. Major Components
# ________________________________________

# A. Program Counter (PC)

Purpose:

Keeps track of which instruction should be executed next.

Example:

PC = 0 → Execute first instruction

PC = 1 → Execute second instruction

PC = 2 → Execute third instruction

Analogy:

Finger pointing at the current line in a notebook.

---

# B. Instruction Memory

Purpose:

Stores the program.

Current Program:

Address 0 → MOVI R1,10
Address 1 → MOVI R2,5
Address 2 → ADD R3,R1,R2
Address 3 → SUB R4,R1,R2
Address 4 → AND R5,R1,R2
Address 5 → OR R6,R1,R2
Address 6 → HALT

Analogy:

Notebook containing instructions.

---

# C. Instruction Decoder

Purpose:

Converts binary instructions into understandable fields.

Example:

Instruction:

0010110010100000

Decoder extracts:

Opcode = ADD

Destination Register = R3

Source Register 1 = R1

Source Register 2 = R2

Analogy:

Translator converting machine language into meaningful commands.

---

# D. Control Unit

Purpose:

Acts as the CPU manager.

Determines:

What operation to perform

Whether ALU should add/subtract/etc.

Whether register write should occur

Whether CPU should halt

Analogy:

Manager giving instructions to employees.

---

# E. Register File

Purpose:

Stores temporary values.

Registers:

R0
R1
R2
R3
R4
R5
R6
R7

Example:

R1 = 10

R2 = 5

Analogy:

Small storage drawers inside CPU.

---

# F. ALU (Arithmetic Logic Unit)

Purpose:

Performs calculations.

Supported Operations:

ADD
SUB
AND
OR

Examples:

10 + 5 = 15

10 - 5 = 5

10 AND 5 = 0

10 OR 5 = 15

Analogy:

Calculator inside CPU.

---

# ________________________________________
# 6. CPU Execution Flow
# ________________________________________

Power ON
   ↓
Program Counter points to instruction
   ↓
Fetch instruction from memory
   ↓
Decode instruction
   ↓
Control Unit generates signals
   ↓
Read register values
   ↓
ALU performs operation
   ↓
Write result back to register
   ↓
Increment PC
   ↓
Repeat until HALT

This process is called:

FETCH → DECODE → EXECUTE → WRITEBACK

---

# ________________________________________
# 7. Example Execution
# ________________________________________

Instruction:

ADD R3,R1,R2

Current Values:

R1 = 10

R2 = 5

Step 1:
Fetch ADD instruction

Step 2:
Decode instruction

Step 3:
Read registers

10 and 5

Step 4:
ALU performs:

10 + 5 = 15

Step 5:
Write result to R3

Final:

R3 = 15

---

# ________________________________________
# 8. Instruction Set
# ________________________________________

MOVI

Loads an immediate value into a register.

Example:

MOVI R1,10

Result:

R1 = 10

---

ADD

Adds two registers.

ADD R3,R1,R2

Result:

R3 = 15

---

SUB

Subtracts two registers.

SUB R4,R1,R2

Result:

R4 = 5

---

AND

Bitwise AND.

1010
0101
----
0000

Result:

0

---

OR

Bitwise OR.

1010
0101
----
1111

Result:

15

---

HALT

Stops CPU execution.

---

# ________________________________________
# 9. Why is it Called RISC?
# ________________________________________

RISC means:

Reduced Instruction Set Computer

Characteristics:

Simple instructions

Fast execution

Fixed instruction format

Easy hardware design

Examples:

ARM

RISC-V

MIPS

MiniRISC16 follows the same philosophy.

---

# ________________________________________
# 10. Is It Hardcoded?
# ________________________________________

Partially Yes.

The program is currently stored directly inside Instruction Memory.

However:

The CPU is NOT printing fixed answers.

The CPU actually executes instructions.

Proof:

If we change:

MOVI R1,20
MOVI R2,7

The CPU automatically computes:

ADD = 27

SUB = 13

without changing display statements.

Therefore the CPU performs real computation.

---

# ________________________________________
# 11. Why This Project is Valuable
# ________________________________________

Most student projects show:

Frontend Development

Backend APIs

Databases

This project demonstrates:

Computer Architecture

Digital Logic Design

Verilog HDL

Instruction Set Design

CPU Datapath Design

Hardware Verification

Low-Level Systems Knowledge

Very few students build processors.

---

# ________________________________________
# 12. Questions Interviewers May Ask
# ________________________________________

Q. What is a Program Counter?

A.
The Program Counter stores the address of the next instruction to execute.

---

Q. What is Fetch-Decode-Execute?

A.

Fetch:
Read instruction from memory.

Decode:
Understand the instruction.

Execute:
Perform operation.

Writeback:
Store result.

---

Q. What is an ALU?

A.

Arithmetic Logic Unit.

Performs ADD, SUB, AND, OR operations.

---

Q. What is a Register?

A.

A small high-speed storage location inside the CPU.

---

Q. Difference between Memory and Registers?

A.

Registers are much faster and smaller.

Memory is larger but slower.

---

Q. Why use Verilog?

A.

Verilog is a Hardware Description Language used to model and design digital circuits and processors.

---

Q. Why is your CPU called Single-Cycle?

A.

Because each instruction completes in one execution cycle through the datapath.

---

# ________________________________________
# 13. Topics to Revise Before Interviews
# ________________________________________

Study these topics carefully:

1. Digital Logic Design
   - Logic Gates
   - Multiplexers
   - Registers
   - Flip-Flops

2. Computer Organization
   - ALU
   - Registers
   - Program Counter
   - Instruction Cycle

3. Processor Architecture
   - RISC vs CISC
   - Instruction Set Architecture (ISA)
   - Datapath

4. Verilog Basics
   - module
   - wire
   - reg
   - always block
   - assign

5. CPU Concepts
   - Fetch
   - Decode
   - Execute
   - Writeback

These topics alone are enough to answer 90% of questions related to this project.

---

# ________________________________________
# 14. Final Summary
# ________________________________________

MiniRISC16 is a custom 16-bit RISC processor built in Verilog that executes a small instruction set consisting of MOVI, ADD, SUB, AND, OR, and HALT. It contains a Program Counter, Instruction Memory, Instruction Decoder, Control Unit, Register File, and ALU. The processor demonstrates the complete Fetch → Decode → Execute → Writeback cycle used in real-world CPUs and serves as an educational implementation of processor architecture concepts.