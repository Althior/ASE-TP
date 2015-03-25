/*
 Copyright (C) 2006 Pedro Felzenszwalb

 This program is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <common.h>

#define min(x,y) ( (x)>(y)?(y):(x))

#define W 512
#define H 512


float Gx[MAX_WIDTH][MAX_HEIGHT];
float Gy[MAX_WIDTH][MAX_HEIGHT];

unsigned char in[MAX_WIDTH][MAX_HEIGHT];
unsigned char out[MAX_WIDTH][MAX_HEIGHT];

void sobel_slow(int width, int height) {
	int tmp ;
	int i,j,jj,ii;
	float tmp0,tmp1;
	// Sobel mask for x-direction:
	for (j=1;j<height;j++) {
		for (i=1;i<width;i++) {

			Gx[i][j]=((2*in[i+2][j+1]+in[i+2][j]+in[i+2][j+2])-(2*in[i][j+1]+in[i][j]+in[i][j+2]));
		}
	}
	// Sobel mask for y-direction:
	for (j=1;j<height;j++) {
		for (i=1;i<width;i++) {
	        // Sobel mask for y-direction:
			Gy[i][j]=((2*in[i+1][j+2]+in[i][j+2]+in[i+2][j+2])-(2*in[i+1][j]+in[i][j]+in[i+2][j]));
		}
	}
	// Edge intensity
	for (j=1;j<height;j++) {
		for (i=1;i<width;i++) {
			tmp = (Gx[i][j]*Gx[i][j]+Gy[i][j]*Gy[i][j])/256;
	        out[i][j]= (tmp>255.0)?255:tmp;
		}
	}
}


void sobel_fast(int width, int height) {

	// To be completed
	

}

int main(int argc, char **argv) {

	int width, height;
	int fast;
	int t=0;

#ifdef VEX
	sim_ta_disable();
#endif

	if (argc < 3) {
		fprintf(stderr, "usage: %s in.pgm out.pgm ", argv[0]);
		exit(1);
	}

	fast=(argc==4);
	if(fast) {
		printf("Fast mode selected !\n");
	}

	// load input
	load_pgm(argv[1], &width, &height, in);
#ifdef VEX
	sim_ta_enable();
#endif
	if(fast) {
		sobel_fast(width,height);
	} else {
		sobel_slow(width,height);
	}
#ifdef VEX
	sim_ta_finish();
#endif
	// save results
	save_pgm(argv[2], width, height, out);
	return 0;
}
