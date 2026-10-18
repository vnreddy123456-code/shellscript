# Shell Scripting Practice

## Overview
This repository is a beginner-focused collection of Bash shell scripts used to learn the fundamentals of shell scripting. The project is intentionally simple and educational, with each script demonstrating a specific concept in a structured, easy-to-follow way.

The repository is built around a sequence of numbered practice scripts that gradually introduce common shell scripting topics such as:

- printing output
- basic conversation-style scripting
- variables and string interpolation
- command-line arguments
- capturing execution time
- reading user input

## Project Purpose
The main goal of this repository is to help learners understand how shell scripts work and how to write simple automation tasks using Bash. It serves as a practical lab for beginners who want to explore shell scripting without the complexity of larger application projects.

## Repository Structure
The project contains a flat file structure with numbered scripts:

- 01-hello-word.sh
- 02-conversation.sh
- 03-variables.sh
- 04-commondline_args.sh
- 05-execution-time-calc.sh
- 06-username-pwd.sh
- README.md

## Learning Flow
The scripts appear to follow a logical progression:

1. Hello World
   - Introduces the basic Bash script structure
   - Demonstrates the `echo` command

2. Conversation Script
   - Shows how to print multiple messages in sequence

3. Variables
   - Demonstrates variable assignment and reuse

4. Command Line Arguments
   - Explains how to accept input through `$1`, `$2`, and so on

5. Execution Time Calculation
   - Shows how to measure how long a script or command takes

6. Username and Password Input
   - Demonstrates handling input and hiding it from the terminal

## Key Concepts Covered
This repository teaches the following shell scripting concepts:

- Shebang (`#!/bin/bash`)
- Basic output with `echo`
- Variable assignment and expansion
- String formatting
- Reading user input with `read`
- Hidden input using `read -s`
- Using command-line parameters
- Arithmetic operations
- Time calculation with `date`

## Example Scripts
A few examples from the repo include:

- Printing a message:
  - `echo "This is printing Hello world."`

- Defining variables:
  - `person_1=Ramesh`
  - `person_2=Suresh`

- Using arguments:
  - `person_1=$1`
  - `person_2=$2`

- Calculating execution time:
  - `start_time=$(date +%s)`
  - `end_time=$(date +%s)`

## Intended Audience
This repository is best suited for:

- beginners learning Bash
- students studying shell scripting
- developers wanting quick hands-on examples
- anyone looking to practice command-line automation basics

## Technical Scope
This is not a production application or library. It is a learning repository focused on simple scripting examples. There is no application framework, deployment pipeline, or package management model because the goal is conceptual learning rather than product delivery.

## Summary
This project is a lightweight Bash learning repository that demonstrates essential shell scripting concepts through a series of simple, numbered scripts. It provides a practical entry point for anyone starting with Linux shell programming and command-line automation.
