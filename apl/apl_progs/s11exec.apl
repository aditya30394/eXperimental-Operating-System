decl
	integer a;
enddecl

integer main(){
a=Wait(0);
print("PROCESS 1");
	a=2;
	while(a<=20) do
		print(a);
		a=a+2;
	endwhile;
	return 0;
}
