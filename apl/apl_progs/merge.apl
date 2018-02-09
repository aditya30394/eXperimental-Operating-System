integer main(){

	integer a,b,i,fd1,fd2,fd3,c,e,f;
	a = Create("Msort.dat");
	fd1 = Open("Msort.dat");
	fd2 = Open("Even.dat");
	fd3 = Open("Odd.dat");
	i=0;
	a = Seek(fd2,500);
	a = Write(fd2,5000);
	a = Seek(fd3,500);
	a = Write(fd3,5000);
	a = Seek(fd2,0);
	a = Seek(fd3,0);
a=0;
b=0;
	while(i<1000)do
		c = Seek(fd2,a);
		c = Seek(fd3,b);
		c = Read(fd2,e);
		c = Read(fd3,f);
		if(e<=f)then
			c = Write(fd1,e);
			a=a+1;
		else
			c = Write(fd1,f);
			b=b+1;
		endif;
		print(i);
		i=i+1;
	endwhile;
a=Close(fd1);
a=Close(fd2);
a=Close(fd3);

return 0;
}
