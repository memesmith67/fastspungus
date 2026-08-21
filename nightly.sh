#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function n(x){return x~/^[a-zA-Z0-9_]+$/?x:p}
function o(x){return x~/^[+\-<>\/*%&|!=]+$/?x:p}
{p=";=";a=$1;b=n($2);c=n($3)}
"function"==$1{p="void "b"(int* "n($3)"){"}
"declare"==$1{p=($2~/^int\*?$/?$2:p)" "c"=0;"}
"assign"==$1{p=$2"="c o($4)n($5)";"}
"get"==$1{p=b"=*"c";"}
"set"==$1{p="*"b"="c";"}
"call"==$1{p=b"("c");"}
"case"==$1{p=a" "b":"}
"break"==$1{p=a";"}
"while"==$1{p=a"("b"){"}
"switch"==$1{p=a"("b"){"}
"end"==$1{p="}"}
"default"==$1{p=a":"}
{print p}';};
