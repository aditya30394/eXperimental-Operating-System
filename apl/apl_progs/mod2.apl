decl
	integer a;
	integer b;
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
	a = Create("Modi2.dat");
	b = 0;
	d = Open("Modi2.dat");
	while(b<2048)do
		c = Write(d,b);
		b = b + 1;
	endwhile;
	a = Close(d);
	d = Open("Modi2.dat");

	i = 0;
	while (i<2048)do
		j = 0;
		while(j<2048-i-1)do
			c = Seek(d,j);
			c = Read(d,e);
			c = Read(d,f);
			if(e<f)then
				k = e;
				e = f;
				f = k;
				c = Seek(d,j);
				c = Write(d,e);
				c = Write(d,f);
			endif;
			j = j+1;
			
		endwhile;
		print(i);
		i = i + 1;
	endwhile;				

	a = Close(d);
	return 0;
}
