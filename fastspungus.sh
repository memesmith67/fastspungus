#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function t(x){return x~/^[a-zA-Z0-9_*]+$/?x:e}
function n(x){return x~/^[a-zA-Z0-9_]+$/?x:e}
function o(x){return x~/^[+\-<>\/*%&|!=]+$/?x:e}
function d(x,y){e=x==$1?y:e}
$0=="fastspungus"{s=!s;next}!s;s{e=";=";a=$1;b=n($2);c=n($3);
d("function",t($2)" "c"("t($4)" "n($5)"){")
d("declare",t($2)" "c"=0;")
d("cast",b"=("t($3)")"n($4)";")
d("assign",b"="c o($4)n($5)";")
d("get",b"=*"c";")
d("set","*"b"="c";")
d("call",b"("c");")
d("assign_call",b"="c"("n($4)");")
d("case",a" "b":")
d("break",a";")
d("while",a"("b"){")
d("switch",a"("b"){")
d("end","}")
d("default",a":")
if("subleq"==$1){e="void "$1"(int *m){int t=*m;";
e=e"*m=(m[m[t+1]]-=m[m[t]])<1?m[t+2]:t+3;}"}
print e}';};
