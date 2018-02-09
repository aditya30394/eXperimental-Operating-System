integer main(){
	integer cid;
	integer a,b;
	cid = Fork();
	if(cid==-2)then
		a = Delete("p1.xsm");
		a = Delete("p2.xsm");
		a = Delete("p3.xsm");
		a = Delete("p4.xsm");
		a = Delete("p5.xsm");
		a = Delete("p6.xsm");
		a = Delete("p7.xsm");
		a = Delete("p8.xsm");
		a = Delete("p9.xsm");
		a = Delete("p10.xsm");
		a = Delete("p11.xsm");
		a = Delete("p12.xsm");
		a = Delete("p13.xsm");
		a = Delete("p14.xsm");
		a = Delete("p15.xsm");
		a = Delete("p16.xsm");
		a = Delete("p17.xsm");
		a = Delete("p18.xsm");
		a = Delete("p19.xsm");
		a = Delete("p20.xsm");
		a = Delete("p21.xsm");
		a = Delete("p22.xsm");
		b=Fork();
			if(b==-2)then
				a = Delete("a1.dat");
				a = Delete("a2.dat");
				a = Delete("a3.dat");
				a = Delete("a4.dat");
				a = Delete("a5.dat");
				a = Delete("a6.dat");
				a = Delete("a7.dat");
				a = Delete("a8.dat");
				a = Delete("a9.dat");
				a = Delete("a10.dat");
			else
				a=Wait(b);
				print("HALF DONE");
				a = Delete("a11.dat");
				a = Delete("a12.dat");
				a = Delete("a13.dat");
				a = Delete("a14.dat");
				a = Delete("a15.dat");
				a = Delete("a16.dat");
				a = Delete("a17.dat");

			endif;
	else
		a=Wait(cid);
		print("DONE DELETING");
		a = Delete("a18.dat");
		a = Delete("a19.dat");
		a = Delete("a20.dat");
		a = Delete("a21.dat");
		a = Delete("a22.dat");
		print("SUCCESSFUL!!");		
	endif;

	return 0;
}




