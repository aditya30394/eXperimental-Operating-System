decl
	integer f;
	integer a;
	integer b;
	integer c;
	integer d;
	integer e;

enddecl



integer main()
{	
	a = Create("Modi.dat");
	b = 0;
	d = Open("Modi.dat");
	while(b!=1000)do
		c = Write(d,b);
		b = b + 1;
	endwhile;
	a = Create("Ans.dat");
	f = Open("Ans.dat");		 

	while(b!=0)do
		e = Seek(d,b-1);
		e = Read(d,c);
		e = Write(f,c);
		b = b - 1;
	endwhile;
	e = Close(d);
	e = Close(f);


return 0;
}
