# 🚀 MiniRISC16 - Custom 16-Bit RISC Processor in Verilog

## 📌 Project Overview

MiniRISC16 is a custom-designed 16-bit Single-Cycle RISC (Reduced Instruction Set Computer) processor implemented in Verilog HDL.

The project demonstrates the complete CPU execution cycle used by real processors:

Fetch → Decode → Execute → Write Back

The processor supports a small instruction set and executes programs stored in Instruction Memory. It contains all major CPU components including:

- Program Counter (PC)
- Instruction Memory
- Instruction Decoder
- Control Unit
- Register File
- Arithmetic Logic Unit (ALU)

This project was built to understand processor architecture, digital logic design, and hardware implementation using Verilog.

---

# 🎯 Features

### Supported Instructions

| Instruction | Description |
|------------|-------------|
| MOVI | Load Immediate Value |
| ADD | Addition |
| SUB | Subtraction |
| AND | Bitwise AND |
| OR | Bitwise OR |
| HALT | Stop Execution |

---

# 🏗️ Processor Architecture

text                 +----------------+                 | Program Counter|                 +--------+-------+                          |                          v                 +----------------+                 | Instruction    |                 | Memory         |                 +--------+-------+                          |                          v                 +----------------+                 | Instruction    |                 | Decoder        |                 +--------+-------+                          |                          v                 +----------------+                 | Control Unit   |                 +--------+-------+                          |        +-----------------+----------------+        |                                  |        v                                  v  +--------------+                +----------------+ | Register File|--------------->|      ALU       | +--------------+                +----------------+        ^                                  |        |                                  |        +----------------------------------+                  Write Back 

---

# 🧠 How the Processor Works

The processor executes instructions stored in memory.

Current Program:

assembly MOVI R1,10 MOVI R2,5  ADD R3,R1,R2 SUB R4,R1,R2 AND R5,R1,R2 OR  R6,R1,R2  HALT 

---

## Step 1: MOVI R1,10

Loads value 10 into register R1.

text R1 = 10 

---

## Step 2: MOVI R2,5

Loads value 5 into register R2.

text R2 = 5 

---

## Step 3: ADD R3,R1,R2

Adds values stored in R1 and R2.

text 10 + 5 = 15 

Stores result:

text R3 = 15 

---

## Step 4: SUB R4,R1,R2

Subtracts R2 from R1.

text 10 - 5 = 5 

Stores result:

text R4 = 5 

---

## Step 5: AND R5,R1,R2

Performs bitwise AND.

text 10 = 1010  5 = 0101 ------------      0000 

Stores:

text R5 = 0 

---

## Step 6: OR R6,R1,R2

Performs bitwise OR.

text 10 = 1010  5 = 0101 ------------      1111 

Stores:

text R6 = 15 

---

## Step 7: HALT

Stops processor execution.

---

# 📊 Expected Output

text ====================================         MiniRISC16 Execution ====================================  Program Executed:  1. MOVI R1,10 2. MOVI R2,5 3. ADD  R3,R1,R2 4. SUB  R4,R1,R2 5. AND  R5,R1,R2 6. OR   R6,R1,R2 7. HALT  ------------------------------------  Register Values:  R1 = 10   (First Operand) R2 = 5    (Second Operand)  R3 = 15   (10 + 5) R4 = 5    (10 - 5) R5 = 0    (10 AND 5) R6 = 15   (10 OR 5)  ------------------------------------  CPU Status: HALTED Program Counter: 8  Execution Successful  ==================================== 

---

# 📂 Project Structure

text MiniRISC16/ │ ├── alu.v ├── register_file.v ├── pc.v ├── instruction_memory.v ├── instruction_decoder.v ├── control_unit.v ├── mini_risc16.v │ ├── mini_risc16_tb.v │ ├── README.md └── INTERVIEW_NOTES.md 

---

# ⚙️ Prerequisites

Install:

### Icarus Verilog

Mac:

bash brew install icarus-verilog 

Verify installation:

bash iverilog -V 

---

# ▶️ How to Compile

Open terminal inside project folder.

Compile:

bash iverilog -o mini_cpu \ mini_risc16.v \ alu.v \ register_file.v \ pc.v \ instruction_memory.v \ instruction_decoder.v \ control_unit.v \ mini_risc16_tb.v 

---

# ▶️ How to Run

Execute:

bash vvp mini_cpu 

The processor will fetch instructions from Instruction Memory and execute them sequentially.

---

# 📝 How to Program the CPU

The processor program is stored inside:

text instruction_memory.v 

Example:

verilog memory[0] = 16'b0000010000001010; // MOVI R1,10  memory[1] = 16'b0000100000000101; // MOVI R2,5  memory[2] = 16'b0010110010100000; // ADD R3,R1,R2  memory[3] = 16'b0101000010100000; // SUB R4,R1,R2  memory[4] = 16'b0111010010100000; // AND R5,R1,R2  memory[5] = 16'b1001100010100000; // OR R6,R1,R2  memory[6] = 16'b1110000000000000; // HALT 

To create a new program:

1. Modify instructions inside instruction_memory.v
2. Save the file
3. Recompile
4. Run again

---

# 🔤 Instruction Format

### MOVI Format

text Opcode | Destination Register | Immediate Value 

Example:

assembly MOVI R1,10 

Loads value 10 into R1.

---

### R-Type Format

text Opcode | Destination | Source1 | Source2 

Example:

assembly ADD R3,R1,R2 

Performs:

text R3 = R1 + R2 

---

# 🎓 Concepts Demonstrated

This project demonstrates:

- Digital Logic Design
- Computer Organization
- Processor Architecture
- Verilog HDL
- Instruction Set Design
- Register Transfer Logic (RTL)
- CPU Datapath Design
- Hardware Verification

---

# 🚀 Future Improvements

Potential enhancements:

- Data Memory
- LOAD Instruction
- STORE Instruction
- JUMP Instruction
- Branch Instructions
- External Program Files
- Pipelined Architecture
- Interrupt Support

---

# 👨‍💻 Author

Tanishka Sharma

MiniRISC16 was developed as an educational processor architecture project to understand how modern CPUs execute instructions at the hardware l