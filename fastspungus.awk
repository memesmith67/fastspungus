#©2026 john morris beck gpl2
function n(x){return $x~/^[a-z_*():]*$/?$x:e}
function f(x,y){e=$1==x?y:e}
{e="=";a=$1;b=n(2);c=n(3);
f("fun",b" "c"("n(4)" "n(5)"){")
f("var",b" "c)
f("op",b"="c($4~/^([+\-<>\/*%&|!=]+)?$/?$4:e)n(5))
f("ctrl",b"("c"){")
f("literal",b)
print e";"}
