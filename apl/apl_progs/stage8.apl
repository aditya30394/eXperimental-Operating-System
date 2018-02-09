decl
	integer status;
	integer a;
	string b;
	integer c;
	integer d;

enddecl



integer main()
{	
//	a = Create("xtreme.dat");
//	print (a);
//	b = Open("xtreme.dat");
//	print (b);
//	c = Delete("xtreme.dat");
//	print (c);
//	d= Close(10);
//	print (d);
//	d = Close(b);
//	print (d);
//	c = Delete("xtreme.dat");
//	print (c);

	a = Write(0,a);
	print(a);
	a = Read(0,a);
	print(a);
	a = Seek(a,10);
	print(a);
	a = Create("stage8.dat");
	print(a);
	a = Open("stage8.dat");
	print(a);
	a = Write(a,"XYZ");
	print(a);
	a = Read(0,b);
	print(a);
	print(b);
	a = Seek(a,0);
	print(a);
	a = Write(a,"ADITYA");
	print(a);
	a = Seek(a,0);
	print(a);	
	a = Read(0,b);
	print(a);
	print(b);
	a = Seek(0,10);
	print(a);
	a = Read(0,b);
	print(a);
	print(b);
	
	









	return 0;
}
