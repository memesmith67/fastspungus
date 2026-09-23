#fastspungus.awk copyright john morris beck 2026 gpl2
function t(x){return $x~/^[a-zA-Z0-9_*()]*$/?$x:e}
function f(x,y){e=x==$1?y:e}
{e=";=";a=$1;b=t(2);c=t(3);d=t(4);
f("//",$0)
f("function",b" "c"("d" "t(5)"){")
f("declare",b" "c"=0;")
f("assign",b"="c($4~/^([+\-<>\/*%&|!=]+)?$/?$4:e)t(5)";")
f("case",a" "b":")
f("while",a"("b"){")
f("switch",a"("b"){")
f("literal",$2~/^[a-z;:}]*$/?$2:e)
f("return",a" "b";")
d("subleq","*m=(m[m[*m+1]]-=m[m[*m]])<1?m[*m+2]:*m+3;")
print e}
