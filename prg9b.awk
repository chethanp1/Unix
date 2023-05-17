BEGIN{
	printf("Program started\n")
}
{
	if(text[$0]++==0)
	lines[++count]=$0;
}
END{
	for(i=1;i<=count;i++)
	printf("%s\n",lines[i]);
}
	
