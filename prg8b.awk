BEGIN{
	printf("***Awk program to identify the palindrome****\n");
}

{
for(i=length($0);i!=0;i--)
{
	rev=rev substr($0,i,1);
}
if(length($0)>1 && $0==rev)
{
	printf("%s\n",rev);
	n++;
}
rev="";
}
END{
	printf("\nThere are %d palindromes \n",n);
}

