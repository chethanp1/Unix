BEGIN{
	FS="\t";
	cg=0;
	gpa=0;
	cr=0;
	printf("Calculation of GPA as below\n");	
}
{
	cg=cg+($3*$4);
	cr=cr+$4;
}
END{
	printf("The grade point of student is %f \n",cg/cr);
}

