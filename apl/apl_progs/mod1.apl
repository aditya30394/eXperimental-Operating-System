decl
	integer count,a[100],bubblesort(integer n);
enddecl
integer bubblesort(integer n)
{
	integer i,j,k;
	i=0;
	while i<n do
		j=0;
		while j<n-i-1 do
			if a[j]<a[j+1] then
				k=a[j];
				a[j]=a[j+1];
				a[j+1]=k;
			endif;
			j=j+1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}
integer main()
{
	integer i;
	i=0;
	count = 0;
	read(a[i]);
	while(a[i]!=0)do
		i = i+1;
		read(a[i]);
		count = count + 1;
		
	endwhile;
	i = bubblesort(count+1);
	i = Create("Sort.dat");
	integer b;
	b = Open("Sort.dat");
	i = 0;
	integer e;
	while (i< (count + 1)) do
		e = Write(b,a[i]);
		i=i+1;
	endwhile;
	i = Close(b);
	return 0;
}
