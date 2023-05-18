object "L4" {
    // This is the constructor code of the contract.
    code {
        // Deploy the contract
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))
    }

    object "runtime" {
        code {

            // Dispatcher
            switch selector()
            case 0xdb53653e {
                solution(calldataload(4))
            }
            default {
                revert(0, 0)
            }

            function solution(v) {
                sstore(3,v)
            }

            function selector() -> s {
                s := div(calldataload(0), 0x100000000000000000000000000000000000000000000000000000000)
            }

        }
    }
  }