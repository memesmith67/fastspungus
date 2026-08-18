#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function t(x){return x~/^[a-zA-Z0-9_*]+$/?x:e}
function n(x){return x!~/\*/?x:e}
function o(x){return x~/^[+\-<>\/*%&|!=]+$/?x:e}
$0=="fastspungus"{s=!s;next}!s;s{e=";=";a=$1;b=n($2);c=n($3);
if("function"==$1){print t($2)" "c"("t($4)" "n($5)"){"}
else if("declare"==$1){print t($2)" "c"=0;"}
else if("cast"==$1){print b"=("t($3)")"n($4)";"}
else if("assign"==$1){print b"="c o($4)n($5)";"}
else if("get"==$1){print b"=*"c";"}
else if("set"==$1){print "*"b"="c";"}
else if("call"==$1){print b"("c");"}
else if("assign_call"==$1){print b"="c"("n($4)");"}
else if("case"==$1){print a" "b":"}
else if("break"==$1){print a";"}
else if("while"==$1){print a"("b"){"}
else if("switch"==$1){print a"("b"){"}
else if("end"==$1){print "}"}
else if("default"==$1){print a":"}
else if("subleq"==$1){print "void "$1"(int *m){int t=*m;"
print "*m=(m[m[t+1]]-=m[m[t]])<1?m[t+2]:t+3;}"}
else{print e}}';};
