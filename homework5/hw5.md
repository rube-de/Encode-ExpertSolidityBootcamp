 # Homework 5 
 ## Assembly 1
1. Look at the example of init code in today's notes See gist  https://gist.github.com/extropyCoder/4243c0f90e6a6e97006a31f5b9265b94
When we do the CODECOPY operation, what are we overwriting ? (debugging this in Remix might help here) => memory stack
2. Could the answer to Q1 allow an optimisation ? 
3. Can you trigger a revert in the init code in Remix ? -> send eth with deployment
4. Write some Yul to
  1. Add 0 07 to 0 08
  2. store the result at the next free memory location. 
  3. (optional) write this again in opcodes
5. Can you think of a situation where the opcode EXTCODECOPY is used ? => delegate calls
6. Complete the assembly exercises in this repo
Exercises( https://github.com/ExtropyIO/ExpertSolidityBootcamp )
If you want to use gitpod, this is the format
https://gitpod.io/#https://github.com/ExtropyIO/ExpertSolidityBootcamp
    