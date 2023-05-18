object "Level_4_Solution"{
 code{
  datacopy(0, dataoffset("runtime"), datasize("runtime"))
  return (0, datasize("runtime"))
 }
 object "runtime"{
  code{
   sstore(3,calldataload(4))
  }
 }
}