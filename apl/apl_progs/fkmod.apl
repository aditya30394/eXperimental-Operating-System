integer main(){
	integer c1,c2,cc1,cc2,a,x,i,d,c;
	c1 = Fork();
	
	if(c1==-2)then
		cc1 = Fork();
		if(cc1==-2)then
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
		else
			a = Wait(cc1);
			print("Even Created");
			a = Exec("sort.xsm");
		endif;
	else
		a = Wait(c1);
		c2 = Fork();
		if(c2==-2)then
			cc2=Fork();
			if(cc2==-2)then
				a = Create("Odd.dat");
				x = 3;
				d = Open("Odd.dat");
				i=0;
				while(i<500)do
					x=(x*x)%503;
					if(x%2==0)then
						c = Write(d,x+1);
					else
						c = Write(d,x);
					endif;
					i=i+1;
				endwhile;
				a = Close(d);
			else
				a = Wait(cc2);
				print("Odd Created");
				a = Exec("sort.xsm");
			endif;
		else
			a = Wait(c2);
			print("Merge Now");
			a = Exec("merge.xsm");
		endif;
		
	endif;




return 0;
}
