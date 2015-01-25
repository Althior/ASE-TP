#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "dct.h"

#define VAL00 (0.5/4.0)
#define VAL0x (0.7071067/4.0)
#define VALx0 (0.7071067/4.0)
#define VALxx (1.0/4.0)


#define C0 (2*(0.7071068))
#define C1 (2*(0.49039))
#define C2 (2*(0.46194))
#define C3 (2*(0.41573))
#define C4 (2*(0.35355))
#define C5 (2*(0.27779))
#define C6 (2*(0.19134))
#define C7 (2*(0.09755))
#define TRACE 


float Av[8][8] = {
		{ VAL00, VAL0x, VAL0x, VAL0x, VAL0x, VAL0x, VAL0x, VAL0x},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx},
		{VALx0, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx, VALxx}
};

#define PI 3.1416

void slow_float_dct8x8(short pixel[8][8], short data[8][8]);
void fast_float_dct8x8(short pixel[8][8], short data[8][8]);
void slow_float_dct8(float in[8], float out[8]);
void fast_float_dct8(float in[8], float out[8]);


void dct8x8(short pixel[8][8], short data[8][8]) {
//	slow_float_dct8x8(pixel,data);
fast_float_dct8x8(pixel,data);
}



void slow_float_dct8x8(short pixel[8][8], short data[8][8])
{
	int i,j,u, v;
	short tmp[8][8];

	for (v = 0; v < 8; v++) {
		for (u = 0; u < 8; u++) {
			double res_b = 0.0;
			for (i = 0; i < 8; i++) {
				for (j = 0; j < 8; j++) {
					res_b = res_b + Av[u][v] * cos(((2 * i + 1) * u * PI) / 16.0)
							* cos(((2 * j + 1) * v * PI) / 16.0)
							* pixel[i][j];
				}
			}
			tmp[u][v]=res_b;
		}
	}

	for (v=0; v<8; v++) {
		for (u=0; u<8; u++) {
			data[u][v] =  tmp[u][v];
		}
	}
}

void fast_float_dct8x8(short pixel[8][8], short data[8][8])
{
	int i,j;
	
	
	float ping[8][8];
	float pong[8][8];
	
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			ping[i][j] = (float) pixel[i][j];			
		}
	}
	
	for(i=0; i<8; i++){
		slow_float_dct8(ping[i], pong[i]);
	}
	
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			ping[i][j] = pong[j][i];			
		}
	}
	
	for(i=0; i<8; i++){
		slow_float_dct8(ping[i], pong[i]);
	}
	
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			ping[i][j] = pong[j][i];			
		}
	}
	
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			data[i][j] = (short) ping[i][j];			
		}
	}
	
	
}


void fast_float_dct8(float in[8], float out[8]) {
	int i,u;
	float cu, res;

	for (u=0; u < 8; u++){
		res=0.0;
		for (i=0; i < 8; i++){

			if (u == 0) { cu = 1.0 / sqrt(2); }
			else {cu = 1.0;}

			res += cu*in[i]*cos(((2 * i + 1) * u * PI) / 16.0);
		}
		out[u] = 0.5*res;
	}  
}

//FAST
void slow_float_dct8(float in[8], float out[8]) {
	int k,n,i;
	float tmp[8];
	float tmp2[8];

#ifdef TRACE
	printf("\n==== Input ====\n");
	for (i=0;i<8;i++) {
		printf("input[%d] = %f\n",i,in[i]);
	}
#endif

	// Etage 1 à compléter
	
	// res 0-3
	for(i=0;i<4;i++){
		tmp[i] = in[i] + in[7-i];
	}
	// res 4-7
	for(i=4;i<8;i++){
		tmp[i] = in[7-i] - in[i];
	}
	
#ifdef TRACE
	printf("\n==== Stage 1 ====\n");
	for (i=0;i<8;i++) {
		printf("stage1[%d] = %f\n",i,tmp[i]);
	}
#endif

	// Etage 2 à compléter

#ifdef TRACE
	printf("\n==== Stage 2 ====\n");
	for (i=0;i<8;i++) {
		printf("stage2[%d] = %f\n",i,out[i]);
	}
#endif

	// Etage 3 à compléter

#ifdef TRACE
	printf("\n==== Stage 3 ====\n");
	for (i=0;i<8;i++) {
		printf("stage3[%d] = %f\n",i,tmp[i]);
	}
#endif

	// Etage 4 à compléter

#ifdef TRACE
	printf("\n==== Output ====\n");
	for (i=0;i<8;i++) {
		printf("output[%d] = %f\n",i,out[i]);
	}
#endif
}

