#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function n(x){return x~/^[a-zA-Z0-9_'\'',]+$/?x:";=;"}
function t(x){return x~/^[a-zA-Z0-9_*]+$/?x:";=;"}
function o(x){return x~/^[<>\/*%&|!=|+\-]+$/?x:";=;"}
$0=="fastspungus"{s=!s;next}!s;s{
q=1;a=$1;b=n($2);c=n($3);
if("function"==$1){print t($2)" "c"("t($4)" "n($5)"){"}
else if("declare"==$1){print t($2)" "c"=0;"}
else if("cast"==$1){print b"=("t($3)")"n($4)";"}
else if("assign"==$1){print b"="c o($4)n($5)";"}
else if("get"==$1){print b"=*"c";"}
else if("set"==$1){print "*"b"="c";"}
else if("call"==$1){print b"("c");"}
else if("assign_call"==$1){print b"="c"("n($4)");"}
else if("case"==$1){print a" "b":"}
else if("break;"==$1){print a}
else if("while"==$1){print a"("b"){"}
else if("switch"==$1){print a"("b"){"}
else if("}"==$1){print a}
else if("default:"==$1){print a}
else{print ";=;"}
}';};
