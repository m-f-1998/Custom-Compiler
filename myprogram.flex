METHOD pow(x, y) VARS i, res
BEGIN
res := x;
i := 1;
WHILE LESS(i,y)
BEGIN
res := TIMES(res,x);
i := PLUS(i,1);
ENDWHILE;
WRITE res;
RETURN res;
ENDMETHOD;

METHOD testMain() VARS a, b, x
BEGIN
a := 5; b := 2;
x := pow(b,a);
IF EQ(x,32) THEN WRITE 1; ELSE WRITE 0; ENDIF;
ENDMETHOD;

METHOD sum(inp) VARS tmp
BEGIN
IF EQ(inp,0) THEN
res := inp;
ELSE
tmp := SUM(MINUS(TYPES(inp,1)));
res := PLUS(tmp,inp);
ENDIF;
ENDMETHOD;

METHOD main() VARS inp,res
BEGIN
READ inp;
res := SUM(inp);
WRITE res;
ENDMETHOD;

method main() vars inp, res
begin
read inp;
res:=0;
while less(0,inp)
begin
res := plus(res,inp);
inp := minus(inp,1);
endwhile;
write res;
endmethod;
method sum(inp) vars res
begin
res:=0;
while less(0,inp)
begin
res := plus(res,inp);
inp := minus(inp,1);
endwhile;
return res;
endmethod;
method main() vars inp,res
begin
read inp;
res := sum(inp);
write res;
endmethod;
method sum(inp) vars tmp
begin
if eq(inp,0) then
res := inp;
else
tmp := sum(minus(inp,1));
res := plus(tmp,inp);
endif;
endmethod;
method main() vars inp,res
begin
read inp;
res := sum(inp);
write res;
endmethod;