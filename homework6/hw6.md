# Homework 6 
## Assembly 2
1. Create a Solidity contract with one function
The solidity function should return the amount of ETH that was passed to it, and the function body should be written in assembly
2. Do you know what this code is doing ?
    push9 0x601e8060093d393df3
msize
mstore                      # mem = 000...000 601e8060093d393df3
                            #     = 000...000 spawned constructor payload
# copy the runtime bytecode after the constructor code in mem
codesize
returndatasize
msize
codecopy
push1 9
codesize
add
push1 23
returndatasize
dup3
dup3
callvalue
create
pop
create
selfdestruct
# cs
# 0 cs
# 0x20 0 cs
# mem = 000...000 601e8060093d393df3 RUNTIME_BYTECODE
# --- stack ---
# 9
# cs 9
# cs+9 = CS = total codesize in memory
# 23 CS
# 0 23 CS
# CS 0 23 CS
# 23 CS 0 23 CS
# v 23 CS 0 23 CS
# addr1 0 23 CS
# 0 23 CS
# addr2
See [gist] https://gist.github.com/extropyCoder/9ddce05801ea7ec0f357ba2d9451b2fb
The runtime bytecode for this contract is

3. Explain what the following code is doing in the Yul ERC20 contract
 function allowanceStorageOffset(account, spender) -> offset {language-js offset := accountToStorageOffset(account)
mstore(0, offset)
mstore(0x20, spender)
}
offset := keccak256(0, 0x40)
0x68601e8060093d393df35952383d59396009380160173d828234f050f0ff
 