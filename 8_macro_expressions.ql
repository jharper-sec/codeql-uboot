import cpp

from MacroInvocation macroInvocation, Macro macro
where
  macroInvocation.getMacro() = macro and
  (macro.hasName("ntohs") or macro.hasName("ntohl") or macro.hasName("ntohll"))
select macroInvocation.getExpr()
