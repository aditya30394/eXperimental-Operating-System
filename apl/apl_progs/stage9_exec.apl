integer main()
{
  integer status,status1,status2,status3;
  string file1,file2,word;
	
  
		print("enter file");
		read(file1);

	
		status1=Exec(file1);
		if(status1==-1) then
			print("not exectd");
		else
			print("executed");
		endif;
return 0;
}
