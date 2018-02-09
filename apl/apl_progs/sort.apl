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
	string file;	
enddecl
integer main()
{	print("ENTER FILE");
	read (file);
	d = Open(file);

	i = 499;
	while (i>=0)do
		j = 0;
		while(j<i-1)do
			c = Seek(d,j);
			c = Read(d,e);
			c = Read(d,f);
			if(e>f)then
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
		i=i-1;
	endwhile;				

	a = Close(d);
	return 0;
}
