#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function p(x){print x;e="e"}
function t(x){return x~/^int\*?$/?x:e}
function n(x){return x~/^[a-zA-Z0-9_]+$/?x:e}
function o(x){return x~/^[+\-<>\/*%&|!=]+$/?x:e}
{e=";=";a=$1;b=n($2);c=n($3)}
"function"==$1{p(t($2)c"("t($4)n($5)"){")}
"declare"==$1{p(t($2)" "c"=0;")}
"assign"==$1{p($2"="c o($4)n($5)";")}
"get"==$1{p(b"=*"c";")}
"set"==$1{p("*"b"="c";")}
"call"==$1{p(b"="c"("n($4)");")}
"case"==$1{p(a" "b":")}
"break"==$1{p(a";")}
"while"==$1{p(a"("b"){")}
"switch"==$1{p(a"("b"){")}
"end"==$1{p("}")}
"default"==$1{p(a":")}
e!="e"{print ";="}
';};
