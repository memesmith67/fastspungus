#copyright john morris beck 2026 gpl2
fastspungus(){ awk 'BEGIN{getline;
print "void* "$1"(void* i){;int s=1;";
print "while(s){switch(s){default:"}
{if($2$3$5!~/^[a-zA-Z0-9_()*]*$/||
$4!~/^[<>\/*%&|!=|+-]*$/){exit 1}
if($1=="declare"){print $2" "$3";"}
else if($1=="assign"){print $2"="$3$4$5";"}
else if($1=="free"){print $1"("$2");"}
else if($1=="case"){print $1" "$2":"}
else if($1=="break"){print $1";"}
else{exit 1}}END{p="}}}"}';};
