# CHIP-8 Emulator

This project is a CHIP-8 emulator developed in C, utilizing the SDL2 library. The CHIP-8 is a simple, interpreted programming language that was used in the late 1970s for creating games. The emulator replicates the original CHIP-8 environment, allowing you to run and play CHIP-8 programs.

## Project Details

- **Language:** C
- **Library:** SDL 2.0.10
- **Architecture:** 64-bit

## Prerequisites

- **SDL Version:** This project requires SDL version 2.0.10. If you are using a 32-bit computer, you will need to replace the SDL libraries with their 32-bit equivalents.

## Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ferdin/chip8.git
   
2. **Navigate to the Project Directory:**
   ```bash
   cd chip8

3. **Build the Project:**
   - Make sure you have the correct SDL2 libraries installed for your system's architecture.
   - Run the following command:
   ```bash
   mingw32-make

4. **Run the Emulator:**
   - After building, you can run the emulator with:
   ```bash
   ./bin/main

## Note
64-bit System: The project is set up for a 64-bit system. Ensure that you are using the appropriate SDL2 libraries for a 64-bit architecture.
32-bit System: If you are using a 32-bit system, you must replace the SDL2 libraries in the lib directory with the 32-bit versions.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
