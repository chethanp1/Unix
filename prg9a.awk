BEGIN{
	printf("name\tmid1\tmid2\tsee\ttotal\tresult\n")>>"9a.txt";
}
{
	sum=$3+$4+$5;
	if($3<13||$4<13||$5<25||sum<50)
		result="Fail";
	else if(sum>=50 && sum<60)
	
		result="Pass";
	else if(sum>=60 && sum<75)
		result="First Class";
	else 
		result="FCD";
	printf("%s\t%d\t%d\t%d\t%d\t%s\n",$1,$3,$4,$5,sum,result)>>"9a.txt";
}
{
	a[NR]=$0;
}
END{
	for(i=NR;i>0;i--)
	printf("%s\n",a[i]);
	
}


