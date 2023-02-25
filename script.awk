#!/usr/bin/awk -f
BEGIN {

	itr=1
	ol=0
	doexit=0;
	charCount=0;
	if (ARGC == 1){
		print "No file Name";
		doexit=1;
		exit;
	}	
	else if(ARGC == 2){
		charCheck=0;
		print ARGV[1];
	}else{
		print ARGV[1];
		charCount=int(ARGV[2]);
		ARGV[2]="";
#		print "CharCount:"charCount;
	}
	FS = "\n\r"
      }

{
	chars=length($1)
#	print "chars:"chars
	if(charCount > chars)
	{

		ol++
	}
	else
	{
		print itr++ " " $1

	}
}


END{	
	if(doexit==1){
		exit;
	}
	print "Ommited Lines:"ol
}

