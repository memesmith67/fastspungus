#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function fail(){print ";=;";exit 1}
function n(x){if(x~/^[a-zA-Z0-9_*]+$/){return x}else{fail()}}
function o(x){if(x~/^[<>\/*%&|!=|+-]+$/){return x}else{fail()}}
$0=="fastspungus"{s=!s;next}!s;s{
q=1;a=$1;b=n($2);c=n($3);
if("function"==$1){print "void* "b"(void* "c"){"}
else if("declare"==$1){print b" "c";"}
else if("assign"==$1){print b"=("c")"n($4)o($5)"("n($6)")"n($7)";"}
else if("get"==$1){print b"=*("c")"n($4)";"}
else if("set"==$1){print "*"b"=("c")"n($4)";"}
else if("call"==$1){print b"(("c")"n($4)");"}
else if("assign_call"==$1){print b"=("c")"n($4)"(("n($5)")"n($6)");"}
else if("case"==$1){print a" ("b")"c":"}
else if("break;"==$1){print a}
else if("while"==$1){print a"(("b")"c"){"}
else if("switch"==$1){print a"(("b")"c"){"}
else if("}"==$1){print a}
else if("default:"==$1){print a}
else{fail()}
}';};
