import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi |
      (mi.getMacro().hasName("ntohs") or mi.getMacro().hasName("ntohl") or mi.getMacro().hasName("ntohll")) and
      this = mi.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
