
# 🕒 Digital Clock using Verilog

A hierarchical 24-hour Digital Clock designed in Verilog HDL. The project demonstrates modular RTL design, frequency division, cascaded counters, and simulation using Icarus Verilog and GTKWave.

---

## 📌 Features

- 24-hour digital clock (00:00:00 to 23:59:59)
- Frequency divider (Clock Enable / Tick Generator)
- Seconds Counter (Mod-60)
- Minutes Counter (Mod-60)
- Hours Counter (Mod-24)
- Hierarchical RTL Design
- Simulation using Icarus Verilog
- Waveform verification using GTKWave

---

## 🏗️ Project Architecture

```
                  Input Clock
                       │
                       ▼
              Frequency Divider
              (Generates 1 Hz Tick)
                       │
                       ▼
               Second Counter
                  (0 - 59)
                       │
                  carry_sec
                       ▼
               Minute Counter
                  (0 - 59)
                       │
                  carry_min
                       ▼
                Hour Counter
                  (0 - 23)
```

---

## 📂 Project Structure

```
DigitalClock/
│
├── RTL/
│   ├── tick_generator.v
│   ├── second_counter.v
│   ├── minute_counter.v
│   ├── hour_counter.v
│   └── digital_clock.v
│
├── TB/
│   └── tb_digital_clock.v
│
├── Waves/
│   └── Digital_Clock.vcd
│
├── Images/
│
└── README.md
```

---

## ⚙️ Modules

### 1. Tick Generator
- Converts the input clock into a 1 Hz enable pulse.
- Used as a clock enable instead of generating a separate clock.

### 2. Second Counter
- Counts from 0 to 59.
- Generates `carry_sec` when rolling over from 59 to 0.

### 3. Minute Counter
- Counts from 0 to 59.
- Increments on `carry_sec`.
- Generates `carry_min`.

### 4. Hour Counter
- Counts from 0 to 23.
- Increments on `carry_min`.

### 5. Top Module
- Instantiates and connects all modules.
- Implements the complete digital clock.

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

---

## ▶️ Simulation

Compile:

```bash
iverilog -o sim.out *.v
```

Run:

```bash
vvp sim.out
```

View Waveform:

```bash
gtkwave Digital_Clock.vcd
```

---

## ✅ Verification

The following functionality was verified during simulation:

- Reset operation
- Seconds increment
- Frequency divider output
- Carry generation
- Cascaded counting
- Hierarchical module integration

---

## 🚀 Future Improvements

- 12-hour mode (AM/PM)
- Alarm feature
- Stopwatch
- Countdown timer
- Binary to BCD converter
- Seven-segment display interface
- FPGA implementation (Basys 3 / Nexys A7)

---

## 📚 Concepts Practiced

- Sequential Logic
- Mod-N Counters
- Frequency Divider
- Clock Enable Design
- Carry Propagation
- Hierarchical RTL Design
- Module Instantiation
- Verilog Testbench
- Digital Clock Design

---

## 📸 Simulation Results

Add screenshots of:

- GTKWave waveform
- Terminal output
- Block diagram (optional)

Example:

```
Images/
├── waveform.png
├── terminal_output.png
└── architecture.png
```

---

## 👩‍💻 Author

**Espresso Elysium**

First medium-level RTL project built while learning Verilog HDL.
