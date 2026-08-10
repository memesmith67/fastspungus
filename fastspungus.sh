#copyright john morris beck 2026 gpl2
fastspungus(){ awk 'BEGIN{getline;
print "void* "$1"(void* i){;int s=1;";
print "while(s){switch(s){default:"}
{if($1=="declare"){p=$2" "$3";"}
else if($1=="assign"){p=$2"="$3$4$5";"}
else if($1=="malloc"){p=$2"="$1"("$3");"}
else if($1=="free"){p=$1"("$2");"}
else if($1=="case"){p=$1" "$2":"}
else if($1=="break"){p=$1";"}
else if($2$3$5!~/^[a-zA-Z0-9_()*]*$/||
$4!~/^[<>\/*%&|!=|+-]*$/){exit 1}
print p}END{p="}}}"}';};
