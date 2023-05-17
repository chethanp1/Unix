BEGIN{
	FS="\t";
	
}
{
	book[$1]+=$2;
}
END{
	for(item in book)
	{
		printf("%s<->%d",item,book[item]);
		
		printf("\n");
		total+=book[item];
	}
	printf("Total number of books sold are %d\n",total);
}
