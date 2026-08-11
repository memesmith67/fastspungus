#copyright john morris beck 2026 gpl2
fastspungus(){ awk '
function f(x,y){if($1==x){print y;q=0}}
$0=="fastspungus"{s=!s;next}!s;s{
q=1;a=$1;b=$2;c=$3;
f("function","void* "b"(void* "c"){")
f("declare",b" "c";")
f("assign",b"="c$4$5";")
f("free(",a b");")
f("case",a" "b":")
f("break;",a")
f("while(",a b"){")
f("switch(",a b"){")
f("}",a)
f("default:",a)
if(q||b c$5!~/^[a-zA-Z0-9_()*]*$/||
$4!~/^[<>\/*%&|!=|+-]*$/){
print ";=;";exit 1}}';};
