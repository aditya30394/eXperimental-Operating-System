decl
	integer a;
	integer x;
	integer c;
	integer d;
	integer i;
	integer j;
	integer e;
	integer f;
	integer k;
	
enddecl
integer main()
{	
	a = Create("Even.dat");
	x = 3;
	d = Open("Even.dat");
	i=0;
	while(i<500)do
		x=(x*x)%503;
		if(x%2==0)then
			c = Write(d,x);
		else
			c = Write(d,x+1);
		endif;
		i=i+1;
	endwhile;
a = Close(d);


return 0;
}
