integer main()
{
  integer status,status1,status2,pid,childpid;
  string filename;
  childpid=1;	
  
  while(1==1) do
  	print("enter filename");		
	read(filename);

	if(filename=="stop") then
		print("exec compltd");
		break;
	endif;

	status=Fork();
	if(status==-2) then
		print("child proces");		
		status1=Exec(filename);
	else
		status1=Wait(childpid);
		pid=Getpid();
		if(pid==0) then
			print("parent proces");		        
		endif;
	endif;
endwhile;
return 0;
}
