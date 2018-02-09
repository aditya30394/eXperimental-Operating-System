integer main()
{
	integer pid,gtpid,gtppid;
	print ("Before Fork");
	pid = Fork();
		
	gtpid = Getpid();
	gtppid = Getppid();
	print (gtpid);
	print (gtppid);
	print ("After Fork");

	return 0;
}
