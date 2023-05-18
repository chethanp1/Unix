BEGIN{
	FS="-";
}
{
	printf("\n Entere date is %d-%d-%d\n",$1,$2,$3);
	if($1>=1 && $1<=31 &&$2>=1 && $2<=12)
		printf("%d-%d-%d is valid ",$1,$2,$3);
	else
		printf("%d-%d-%d is invalid",$1,$2,$3);
	if($2==1)mon="jan";
	else if($2==2)mon="feb";
	else if($2==3)mon="mar";
	else if($2==4)mon="april";
	else if($2==5)mon="may";
	else if($2==6)mon="june";
	else if($2==7)mon="july";
	else if($2==8)mon="aug";	
	else if($2==9)mon="sep";
	else if($2==10)mon="oct";
	else if($2==11)mon="nov"i
	else if($2==12)mon="dec";
	else
		printf("Invalid Month");
	printf("\n The date is required format is %s-%d-%d\n",mon,$1,$3);
}
