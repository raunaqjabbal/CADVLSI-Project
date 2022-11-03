#include<stdio.h>
float hand_num_nn(float X[7],int y);
int main(){
	float X[7]= {1.3538,  1.2087,  1.0842,  1.1102,  1.326,   0.90461, 0.87229}; //[0.96707326]
	//double X[7]= {0.95566, 0.93661, 0.91783, 1.0815 , 1.1369  ,1.1075,  0.81786}; // [0.00064328]
	float i = hand_num_nn(X,1);
	
	printf("number recognized: %f",i);
	return 0;
}
