#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function t(x){return x~/^[a-zA-Z0-9_*]+$/?x:e}
function n(x){return x~/^[a-zA-Z0-9_]+$/?x:e}
function o(x){return x~/^[+\-<>\/*%&|!=]+$/?x:e}
$0=="fastspungus"{s=!s;next}!s;s{e=";=";a=$1;b=n($2);c=n($3);
if("function"==$1){e=t($2)" "c"("t($4)" "n($5)"){"}
else if("declare"==$1){e=t($2)" "c"=0;"}
else if("cast"==$1){e=b"=("t($3)")"n($4)";"}
else if("assign"==$1){e=b"="c o($4)n($5)";"}
else if("get"==$1){e=b"=*"c";"}
else if("set"==$1){e="*"b"="c";"}
else if("call"==$1){e=b"("c");"}
else if("assign_call"==$1){e=b"="c"("n($4)");"}
else if("case"==$1){e=a" "b":"}
else if("break"==$1){e=a";"}
else if("while"==$1){e=a"("b"){"}
else if("switch"==$1){e=a"("b"){"}
else if("end"==$1){e="}"}
else if("default"==$1){e=a":"}
else if("subleq"==$1){e="void "$1"(int *m){int t=*m;";
e=e"*m=(m[m[t+1]]-=m[m[t]])<1?m[t+2]:t+3;}"}
print e}';};
