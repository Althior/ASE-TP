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

//#define TRACE2

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

//Ajout fixe
void fast_fixed_dct8(short in[8], short out[8]);
void fast_fixed_dct8x8(short pixel[8][8], short data[8][8]);

float cosPiN(float multiplier);
short cosPiNfixed(float multiplier);
void switchFloat(float *a, float *b);
void switchShort(short *a, short *b);

// Cos est compris entre -1 et 1, on le représente donc en Q0,15
short cosPiNfixed(float multiplier){

	float f = cos(multiplier*PI/16.0);
	return (short)(f*(1 << 15));
}

// Passage d'un nombre en Q(mIn, nIn) en Q(mOut, nOut)
short transformQ(short *input, short mIn, short mOut){

	if(mIn > mOut){
	
		return *input << (mIn-mOut);
	}
	else if(mOut > mIn){
	
		return *input >> (mOut-mIn);
	}
}

// Affiche un nombre a virgule fixe
void afficher_fixe(short nb, short n){
	
	printf("%f ", (float)nb/(1<<n));
}

float cosPiN(float multiplier){

	return cos(multiplier*PI/16.0);
}

void switchFloat(float *a, float *b){

	float temp = *b;
	*b = *a;
	*a = temp;
}

void switchShort(short *a, short *b){

	short temp = *b;
	*b = *a;
	*a = temp;
}

void dct8x8(short pixel[8][8], short data[8][8]) {

	//fast_float_dct8x8(pixel,data);
	fast_fixed_dct8x8(pixel,data);
}

/* DCT 8x8 lente */
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

/* DCT 8x8 rapide avec algorithme de Chen (flottante) */
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
		fast_float_dct8(ping[i], pong[i]);
	}
	
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			ping[i][j] = pong[j][i];			
		}
	}
	
	for(i=0; i<8; i++){
		fast_float_dct8(ping[i], pong[i]);
	}
	
	//Afichage test après le deuxième passage
	/*printf("Après deuxième passage : \n");
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			printf("%f ", pong[i][j]);			
		}
		printf("\n");
	}*/
	
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

/* DCT 8x8 rapide avec algorithme de Chen (fixe) */
void fast_fixed_dct8x8(short pixel[8][8], short data[8][8])
{
	int i,j;
	short temp[8][8];
	
	//1er passage
	for(i=0; i<8; i++){
		fast_fixed_dct8(pixel[i], data[i]);
	}

	//Afichage test après le premier passage
	/*printf("Après premier passage : \n");
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			printf("%hi ", data[i][j]);			
		}
		printf("\n");
	}*/
	
	// Inversion lignes/colonnes
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			temp[i][j] = data[j][i];			
		}
	}
	
	// 2ème passage
	for(i=0; i<8; i++){
		fast_fixed_dct8(temp[i], data[i]);
	}
	
	// Remise à l'état normal
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			temp[i][j] = data[j][i];			
		}
	}
	
	//Afichage test après le deuxième passage
	/*printf("Après deuxième passage : \n");
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			printf("%hi ", temp[i][j]);			
		}
		printf("\n");
	}*/
	
	// Inscription du résultat dans data
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			data[i][j] = temp[i][j];			
		}
	}
}

/* DTC "lente" */
void slow_float_dct8(float in[8], float out[8]) {
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

/* Algorithme de Chen version flottante */
void fast_float_dct8(float in[8], float out[8]) {
	
	int k,n,i;
	float tmp[8], tmp2[8], tmp3[8];
	float cPi[8];
	
	//Initialisation des cos(kPI/16.0)
	for(i=1; i<8; i++){
	
		cPi[i] = cosPiN((float)i);
	}
	
#ifdef TRACE
	printf("\n==== Input ====\n");
	for (i=0;i<8;i++) {
		printf("input[%d] = %f\n",i,in[i]);
	}
#endif

	// Etage 1
	
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

	// Etage 2
	
	// res 0-1
	for(i=0; i<2; i++){
	
		tmp2[i] = tmp[i] + tmp[3-i];
	}
	
	// res 2-3
	for(i=2; i<4; i++){
	
		tmp2[i] = tmp[i-2] - tmp[i];
	}
	
	// res 4-7
	tmp2[4] = tmp[4];
	tmp2[5] = tmp[5]*(-cPi[4]) + tmp[6]*cPi[4];
	tmp2[6] = tmp[6]*cPi[4] + tmp[5]*(cPi[4]);
	tmp2[7] = tmp[7];
	
#ifdef TRACE
	printf("\n==== Stage 2 ====\n");
	for (i=0;i<8;i++) {
		printf("stage2[%d] = %f\n",i,tmp2[i]);
	}
#endif

	// Etage 3

	tmp3[0] = tmp2[0]*cPi[4] + tmp2[1]*cPi[4];
	tmp3[1] = tmp2[0]*cPi[4] + tmp2[1]*(-cPi[4]);
	tmp3[2] = tmp2[2]*cPi[6] + tmp2[3]*cPi[2];
	tmp3[3] = tmp2[3]*cPi[6] + tmp2[2]*(-cPi[2]);
	tmp3[4] = tmp2[4] + tmp2[5];
	tmp3[5] = tmp2[4] - tmp2[5];
	tmp3[6] = tmp2[7] - tmp2[6];
	tmp3[7] = tmp2[6] + tmp2[7];
	
#ifdef TRACE
	printf("\n==== Stage 3 ====\n");
	for (i=0;i<8;i++) {
		printf("stage3[%d] = %f\n",i,tmp3[i]);
	}
#endif

	// Etage 4

	// Res 0-3
	for(i=0; i<4; i++){
	
		out[i] = tmp3[i];
	}
	
	out[4] = tmp3[4]*cPi[7] + tmp3[7]*cPi[1];
	out[5] = tmp3[5]*cPi[3] + tmp3[6]*cPi[5];
	out[6] = tmp3[6]*cPi[3] + tmp3[5]*(-cPi[5]);
	out[7] = tmp3[7]*cPi[7] + tmp3[4]*(-cPi[1]);
	
	// Réorganisation
	switchFloat(&out[1], &out[4]);
	switchFloat(&out[3], &out[6]);
	
	// Division des résultats par 2
	for(i=0; i<8; i++){
	
		out[i] /= 2.0;
	}
	
#ifdef TRACE
	printf("\n==== Output ====\n");
	for (i=0;i<8;i++) {
		printf("output[%d] = %f\n",i,out[i]);
	}
#endif
}

/* Algorithme de Chen version à virgule fixe */
void fast_fixed_dct8(short in[8], short out[8]) {
	
	int k,n,i, temp;
	short tmp[8], tmp2[8], tmp3[8];
	short cPi[8];

	//Initialisation des cos(kPI/16.0)
	for(i=1; i<8; i++){
		
		// Conversion en Q(0,15)
		cPi[i] = cosPiNfixed((float)i);
	}
	
	#ifdef TRACE2
	printf("\n\n==== Input ====\n");
	for (i=0;i<8;i++) {
		printf("input[%d] = %hi\n",i,in[i]);
	}
	#endif

	// Etage 1 (On laisse tout en Q(15,0) car les nombres sont des entiers)
	
	// res 0-3
	for(i=0;i<4;i++){
		tmp[i] = in[i] + in[7-i];
	}
	
	// res 4-7
	for(i=4;i<8;i++){
		tmp[i] = in[7-i] - in[i];
	}
	
#ifdef TRACE2
	printf("\n==== Stage 1 ====\n");
	for (i=0;i<8;i++) {
		printf("stage1[%d] = %hi\n",i,tmp[i]);
	}
#endif

	// Etage 2
	
	// res 0-1
	for(i=0; i<2; i++){
	
		tmp2[i] = tmp[i] + tmp[3-i];
	}
	
	// res 2-3
	for(i=2; i<4; i++){
	
		tmp2[i] = tmp[i-2] - tmp[i];
	}

	tmp2[4] = tmp[4];
	
	//Passage du résultat de Q(15,0)*Q(0,15) = Q(15,15) en Q(10,5), donc décalage de 10 bits vers la droite 
	tmp2[5] = (short) (( (int)tmp[5]*(-cPi[4]) + (int)tmp[6]*cPi[4] ) >> 10);
	tmp2[6] = (short) (((int)tmp[6]*cPi[4] + (int)tmp[5]*cPi[4] ) >> 10);
	
	tmp2[7] = tmp[7];
	
#ifdef TRACE2
	printf("\n==== Stage 2 ====\n");
	for (i=0;i<8;i++) {
		
		if(i!=5 && i!= 6){
		
			printf("stage2[%d] = %d\n",i,tmp2[i]);
		}
		else{
		
			printf("stage2[%d] = ", i);
			afficher_fixe(tmp2[i], 5);
			printf("\n");
		}
	}
#endif

	// Etage 3

	// On a Q(15,0)*Q(0,15)+Q(15,0)*Q(0,15) = Q(15,15) qu'on passe en Q(12,3) donc décalage de 12 bits vers la doite
	tmp3[0] = (short) (( (int)tmp2[0]*cPi[4] + (int)tmp2[1]*cPi[4]) >> 12);
	tmp3[1] = (short) (( (int)tmp2[0]*cPi[4] + (int)tmp2[1]*(-cPi[4])) >> 12);
	
	// On a Q(15,0)*Q(0,15)+Q(15,0)*Q(0,15) = Q(15,15) qu'on passe en Q(10,5) donc décalage de 10 bits vers la droite
	tmp3[2] = (short) (( (int)tmp2[2]*cPi[6] + (int)tmp2[3]*cPi[2]) >> 10);
	tmp3[3] = (short) (( (int)tmp2[3]*cPi[6] + (int)tmp2[2]*(-cPi[2])) >> 10);
	
	// On peut passer tmp2[4] et tmp2[7] en Q(10,5) sans perte d'information (utilisé dans les 2 prochaines opérations)
	tmp2[4] = tmp2[4] << 5;
	tmp2[7] = tmp2[7] << 5;
	
	// Q(10,5)+Q(10,5) en Q(11,4) donc décalage de 1 bit vers la droite
	tmp3[4] = (short) (( (int)tmp2[4] + tmp2[5]) >> 1);
	tmp3[5] = (short) (( (int)tmp2[4] - tmp2[5]) >> 1);
	tmp3[6] = (short) (( (int)tmp2[7] - tmp2[6]) >> 1);
	tmp3[7] = (short) (( (int)tmp2[6] + tmp2[7]) >> 1);
	
#ifdef TRACE2
	printf("\n==== Stage 3 ====\n");
	
	for(i=0;i<2;i++) {
	
		printf("stage3[%d] = ",i);
		afficher_fixe(tmp3[i], 3);
		printf("\n");
	}
	
	for(;i<4;i++) {
	
		printf("stage3[%d] = ",i);
		afficher_fixe(tmp3[i], 5);
		printf("\n");
	}
	
	for(;i<8;i++) {
	
		printf("stage3[%d] = ",i);
		afficher_fixe(tmp3[i], 4);
		printf("\n");
	}	
#endif

	// Etage 4
	
	// Recopie
	for(i=0; i<4; i++){
	
		out[i] = tmp3[i];
	}
	
	/* Passage de Q(0,15)*Q(11,4)+Q(0,15)*Q(11,4) = Q(11,19) en Q(11,4) donc décalage de 15 bits vers la droite*/
	out[4] = (short)(( (int)tmp3[4]*cPi[7] + (int)tmp3[7]*cPi[1]) >> 15);
	out[5] = (short)(( (int)tmp3[5]*cPi[3] + (int)tmp3[6]*cPi[5]) >> 15);
	out[6] = (short)(( (int)tmp3[6]*cPi[3] + (int)tmp3[5]*(-cPi[5])) >> 15);
	out[7] = (short)(( (int)tmp3[7]*cPi[7] + (int)tmp3[4]*(-cPi[1])) >> 15);

	// Division des résultats par 2 et passage dans les entiers	
	
	// On a f0 = f1 = Q(12,3) en Q(15,0) + div par 2 donc décalage de 4 bits vers la droite*/
	for(i=0; i<2; i++){
	
		out[i] = out[i] >> 4;
	}
	
	// On a f2 = f3 = Q(10,5)*Q(14,1) en Q(15,0) + div par 2 donc décalage de 6 bits vers la droite*/
	for(; i<4; i++){

		out[i] = out[i] >> 6;
	}
	
	// On a f4->f7 = Q(11,4)*Q(14,1) en Q(15,0) + div par 2 donc décalage de 5 bits vers la droite*/
	for(; i<8; i++){
	
		out[i] = out[i] >> 5;
	}
	
	// Réorganisation
	switchShort(&out[1], &out[4]);
	switchShort(&out[3], &out[6]);
	
#ifdef TRACE2
	printf("\n==== Output ====\n");
	for (i=0;i<8;i++) {
		printf("output[%d] = %hi\n", i, out[i]);
	}
#endif
}
