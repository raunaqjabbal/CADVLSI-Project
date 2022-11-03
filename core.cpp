// Include HLS Math Lib to use calculate exponential function
#include "hls_math.h"

// This is the top function defined during project initialization
float hand_num_nn (float X[7],int y){
	/*Define PRAGMA
	 * Input is taken form port X via BRAM
	 * AXI_LITE Interface is used to control IP core
	 */

#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=y bundle=CRTL_BUS
#pragma HLS INTERFACE bram port=X

	float theta1h[7][15]={{ 0.4937128 , -0.4085188 ,  0.19429989,  0.57683957, -0.33845448,-0.36928558, -0.31876397,  0.01778482, -0.32814062,  0.0279716 ,0.36842182, -0.5440834 ,  0.30340087, -0.26142576, -0.13649178},
       { 0.69554204,  0.00548643, -0.27238005, -0.52251375, -0.21350516,0.2554306 , -0.05565824,  0.19695963, -0.124327  , -0.563365  ,0.36517155,  0.28101593,  0.21760708, -0.4654936 ,  0.41531616},
       { 0.33421007, -0.00723094, -0.23615178,  0.16894203,  0.31097892, 0.04945767, -0.01679687,  0.17042913, -0.3466342 ,  0.2474462 , 0.040345  ,  0.02766776,  0.16895208, -0.3968969 , -0.3971885 },
       { 0.43316162,  0.13052016, -0.5149493 ,  0.19248678, -0.10960756,-0.5569546 , -0.45502552, -0.43310723, -0.11515698,  0.2648184 ,-0.2999555 , -0.4098228 ,  0.23798507, -0.45489356, -0.28338012},
       { 0.66006345, -0.20158884,  0.2336544 , -0.66282725, -0.09535955, 0.2930437 ,  0.33253205,  0.23246491, -0.00687957, -0.02283116, 0.22577523,  0.24161309, -0.01411874, -0.32884184, -0.30111757},
       {-0.18583935, -0.04472849, -0.26657265, -0.1945068 ,  0.34635657,-0.21466789,  0.31446704,  0.21018378, -0.23973376,  0.12639597,-0.10815256, -0.16039862,  0.20216237, -0.51345426, -0.25274518},
       { 0.23993689, -0.36982816,  0.02870519,  0.3992858 ,  0.5155575 , 0.4316356 ,  0.0604824 ,  0.18580016,  0.01764345,  0.0025455 ,-0.01106092, -0.14220503,  0.06595555,  0.50118226,  0.05997026}};

	float theta1b[15]={-0.6453954 ,  0., -0.02102232,  0.7022203 , -0.3601963 ,0.7375053 ,  0.7298605 ,  0.59264183,  0. ,  0.64159495, -0.5816713 , -0.05610121, -0.5671513 ,  0. ,  0.};

	float h1[15];

	float theta2h[15][30]={{-1.53899431e-01, -1.53515816e-01,  4.31682169e-02,7.04044044e-01,  2.68001497e-01,  1.76439416e-02,4.47060615e-01,  1.44902870e-01,  3.66986424e-01,-2.72801608e-01,  4.28663135e-01, -1.48606747e-01,2.71028996e-01, -1.86611027e-01,  9.28306058e-02,-2.14837238e-01,  7.00735152e-02,  6.09068394e-01,-3.23697805e-01, -1.97091654e-01,  4.80437219e-01,-2.36771509e-01,  7.56213441e-02, -4.69803512e-02,-3.97999994e-02,  5.27545512e-02,  2.68204808e-01,-3.39816600e-01,  7.37443715e-02,  3.05986613e-01},
       { 7.37953782e-02, -5.60754538e-02, -1.97966695e-02,7.19364285e-02, -2.94241905e-02, -2.07715616e-01,-1.74353361e-01, -2.57735223e-01, -2.41991371e-01,3.20013225e-01, -3.67920697e-02,  2.52317846e-01,1.75789118e-01, -2.65604317e-01, -1.64648741e-01,-1.95739642e-01,  2.62797475e-01, -9.82228518e-02,1.15254819e-01,  1.26993567e-01,  2.96114802e-01, 2.73425519e-01, -1.40411839e-01, -1.85857579e-01,-5.29639125e-02,  7.66409636e-02, -1.52696088e-01,2.33074725e-01, -6.48160279e-02, -1.52906597e-01},
       { 8.94570351e-02,  1.90549850e-01, -1.16030753e-01,1.81135908e-01, -2.61881590e-01,  3.17131877e-01,3.27480108e-01,  2.00785652e-01,  7.32389763e-02,-2.63840526e-01, -1.43406719e-01, -2.69318342e-01,-2.85546720e-01,  2.69609213e-01,  9.76799428e-02,-3.35141867e-01, -3.56845617e-01,  2.76156157e-01,-2.99923956e-01, -3.52247745e-01, -3.31775874e-01,3.05927634e-01,  1.74971372e-01, -1.25224277e-01,-1.88664421e-01,  3.30487490e-02,  2.97565699e-01,1.87679812e-01, -2.40996569e-01, -2.95851976e-01},
       { 1.77132070e-01, -2.78006285e-01, -7.10781813e-02,-9.32982787e-02,  9.27071497e-02,  5.28574347e-01,-3.12627316e-01, -1.24201939e-01, -5.31422496e-01,-1.41194835e-01, -2.43739128e-01,  5.38339078e-01,8.95703733e-02,  4.47722584e-01,  4.23111737e-01,2.15605021e-01, -3.66691381e-01, -1.16487049e-01,-3.13796937e-01, -2.49154180e-01, -2.68274277e-01,5.38115144e-01,  3.91383082e-01, -1.94850922e-01,-4.70764115e-02, -2.28598431e-01, -2.74466753e-01,5.84792137e-01, -1.00596800e-01, -2.20800027e-01},
       {-2.38057479e-01,  2.70238459e-01, -3.21886808e-01, 1.00090611e+00,  8.39394093e-01, -1.03765726e+00, 1.43898773e+00, -6.72804177e-01,  1.28921092e+00,-1.01757497e-01,  1.25680387e+00, -1.14844978e+00, 7.70436585e-01, -1.18663728e+00, -1.26717603e+00,-1.20830446e-01, -2.33828828e-01,  1.09806108e+00,6.79005682e-02, -3.02004308e-01,  9.62895811e-01,-1.02615523e+00, -1.20331907e+00,  1.83381975e-01, 3.53076667e-01, -1.99726820e-01,  9.85579610e-01,-1.26058435e+00,  1.28696382e-01,  1.23969686e+00},
       {-1.51318997e-01, -1.69948995e-01, -3.53278428e-01,  -3.46020281e-01, -3.40212703e-01,  8.55081528e-02, -4.44413930e-01,  1.75697252e-01, -1.48437411e-01, 2.53074467e-01, -3.76818120e-01,  6.34913445e-01,-3.14859480e-01,  4.65986162e-01,  3.51182103e-01, -9.93707776e-03,  1.47456899e-01, -4.23927993e-01, 2.53485024e-01, -1.23704329e-01, -4.06184271e-02, 5.17816365e-01,  4.09200430e-01,  1.77104566e-02,-1.42734930e-01, -3.56681436e-01, -3.17992084e-02, 2.78007150e-01, -9.74292517e-01, -5.00905812e-01},
       { 7.47028589e-02, -1.91710591e-01,  2.46354580e-01, -6.85851514e-01, -6.63429379e-01,  4.59925830e-01, -3.62564564e-01,  5.17899215e-01, -5.40090501e-01,-5.08319438e-02, -4.68638718e-01,  2.91649222e-01,-2.40082934e-01,  6.22237146e-01,  8.02871048e-01,         3.26312602e-01, -4.32226270e-01, -1.79590508e-01,        -1.60622984e-01,  1.36170268e-01, -2.69125998e-01,         5.92835009e-01,  8.12717259e-01,  2.36732036e-01,1.07136995e-01,  5.84846139e-02, -5.53681031e-02,         5.43513000e-01, -2.46204674e-01,  5.43652102e-02},
       { 1.82311699e-01,  1.83671936e-01, -1.08942658e-01,-2.73377180e-01,  1.57222375e-02,  2.65033543e-01, 2.24966466e-01,  4.17432159e-01,  4.30349261e-03, 1.65328681e-02, -7.39363283e-02,  2.01889500e-01,3.83015536e-02,  2.24206001e-01,  1.18591666e-01,-6.71921670e-02, -1.67886257e-01, -3.00445765e-01, -1.16823077e-01,  2.33342767e-01, -1.60452649e-01, 1.43202230e-01,  4.33228374e-01, -3.64797235e-01, 1.12038642e-01, -8.68925750e-02,  1.95554003e-01, 4.69860226e-01,  2.58438885e-01, -3.13285440e-01},
       {-1.91341117e-01,  2.71755576e-01,  3.26909482e-01,-3.47802371e-01, -1.01794064e-01, -1.82661161e-01,8.03110003e-03, -1.35498971e-01,  2.35447288e-01,-2.95144558e-01,  3.47224116e-01, -2.45185703e-01,3.20980608e-01, -6.45494461e-02,  1.61232114e-01, 1.13233745e-01, -1.25014633e-01,  1.71290338e-01,-2.85397619e-01,  5.32667935e-02, -9.18511450e-02, -9.80353951e-02, -1.73760071e-01,  3.52473915e-01,-1.146687879e-01,  9.47392881e-02,  1.68085337e-01,-3.63222808e-01,  1.89473450e-01, -3.37361842e-01},
       {-2.83587337e-01,  3.43544483e-02, -2.62482703e-01,-5.30896373e-02,  9.37705860e-03,  1.14173301e-01,-2.67411619e-01,  5.88972867e-01,  1.08128168e-01,1.88737810e-02,  6.28455207e-02,  7.19282404e-02,-2.34913707e-01,  4.15680707e-01,  5.47089398e-01,-2.86599189e-01,  3.87955247e-03, -3.58632922e-01,1.26103222e-01, -3.00264537e-01, -2.20805347e-01,2.06300721e-01, -1.53878257e-02,  3.09029341e-01,-3.05178404e-01, -2.15802804e-01, -4.50726986e-01,3.55680197e-01,  2.34532431e-01,  3.04275248e-02},
       {-2.15014800e-01,  3.02880615e-01, -1.39455497e-01,1.06274629e+00,  1.10887766e+00, -8.08858931e-01,7.41753638e-01, -4.74348098e-01,  1.03152251e+00,-3.57378960e-01,  9.94024694e-01, -1.45566607e+00,1.00547755e+00, -8.81682694e-01, -4.13973510e-01,3.41398835e-01, -3.59629303e-01,  4.58931029e-01,3.00390720e-02,  2.08446145e-01,  1.43173671e+00,-8.12036872e-01, -6.37952149e-01,  1.15679502e-02,1.11708768e-01, -1.89831346e-01,  8.38231623e-01,-8.62643123e-01,  1.46778977e+00,  9.52963352e-01},
       {-3.48754615e-01,  2.24986017e-01,  2.40512967e-01, 1.76233023e-01,  2.57685155e-01,  2.57250220e-01, -2.49154180e-01,  1.74278244e-02, -2.58954763e-01, 2.78171897e-01, -2.42522299e-01, -1.21357171e-02, -2.88788855e-01,  9.25438330e-02,  2.17257753e-01,-2.30911314e-01,  8.74059871e-02,  3.73317376e-02,2.80099511e-01, -9.19519663e-02, -1.17257632e-01,-2.80209184e-01, -9.68697423e-04, -3.16856414e-01, 9.21964552e-03,  1.37118518e-01, -2.65388966e-01, -9.92807597e-02,  1.14455521e-01, -1.28673660e-02},
       {-2.15411067e-01, -1.49129048e-01, -2.81370401e-01,2.50102758e-01,  8.25679481e-01, -1.21072426e-01, 3.12321573e-01, -7.50162423e-01,  6.92376733e-01, 9.65892673e-02,  6.48352087e-01, -4.05455232e-01,3.66943151e-01, -4.24719155e-01, -6.92692339e-01,-2.24074975e-01,  2.22227097e-01,  4.43235099e-01,1.69904590e-01,  1.14898562e-01,  4.24660236e-01,3.95536065e-01, -1.83489844e-01,  6.91157281e-02,-2.85410225e-01, -2.91194797e-01,  5.18896997e-01,-3.93571228e-01,  7.09228873e-01,  8.49997580e-01},
       {-2.20128626e-01, -2.44804308e-01, -2.42936820e-01,-1.34268999e-02,  6.38489723e-02,  2.81588733e-02, 2.92312384e-01,  3.37032914e-01,  1.69255674e-01,2.55204201e-01, -3.16413134e-01,  1.46840215e-02,3.00537467e-01, -2.12509826e-01,  2.90749073e-01,2.90275335e-01, -7.86128938e-02,  2.71998644e-01, -3.50921750e-02, -5.02622426e-02, -3.49560529e-01,1.70150638e-01,  1.21459961e-01, -2.10805133e-01,-1.43633500e-01, -1.72750711e-01,  3.34990203e-01,-5.67555726e-02, -2.22534135e-01, -4.06653881e-02},
       { 2.56685197e-01,  2.10867763e-01,  3.63698959e-01,-3.12024593e-01,  2.11534262e-01,  3.19199741e-01,2.67921805e-01, -9.03823972e-02, -1.53946936e-01,-2.43978649e-01,  2.09760010e-01, -2.50667334e-01,-7.80542493e-02,  3.49655926e-01, -7.54413903e-02,-3.22063863e-02,  2.45711207e-01, -2.13142484e-01,1.92755461e-01,  2.42394447e-01, -6.94719851e-02, 3.58385861e-01,  3.12395215e-01, -8.57910216e-02, -3.39562416e-01,  1.62832081e-01, -6.42467439e-02,2.17741609e-01, -2.21389756e-01,  8.69301856e-02}};


	float theta2b[30]={-0.0106111 , -0.01463103,  0., -0.49711624, -0.45962995,0.4335242 , -0.4974347 ,  0.43700832, -0.45316067,  0. , -0.45469755,  0.6765985 , -0.39916402,  0.5004349 ,  0.4497033 , 0., -0.02548496, -0.4558351 ,  0. ,  0. , -0.5200954 ,  0.59351826,  0.47911203, -0.01180736, -0.0306004 ,0., -0.43452132,  0.61486226, -0.43938273, -0.41656107};
	float h2[30];

	float theta3h[30]={-0.12163372,-0.15305161,0.37744516,0.7728174 ,0.8979196 ,-0.5974961 ,1.1457374 ,-0.41350386,1.5610347 ,-0.3949466 ,1.1205146 ,-0.92731965,1.115165  ,-1.0661473 ,-0.551234  ,0.2972374 ,-0.26113948,0.93901163,-0.2680856 ,-0.315714  ,1.093429  ,-0.8008344 ,-0.23746207,0.36296487,-0.00699021,-0.43006897,0.9830004 ,-1.0471593 ,2.3958437 ,1.7501211 };   
	float theta3b=-0.38550764;
	float h3=0;

	int i=0,j=0;
	
	for(i=0;i<15;i++)
	{	h1[i]=0;
		for(j=0;j<7;j++)
		{	h1[i]+=(X[j]*theta1h[j][i]);
		}
		h1[i]+=theta1b[i];
		if(h1[i]<0)
		{	h1[i]=0;
		}
	}
	for(i=0;i<30;i++)
	{	h2[i]=0;
		for(j=0;j<15;j++)
		{	h2[i]+=(h1[j]*theta2h[j][i]);
		}
		h2[i]+=theta2b[i];
		if(h2[i]<0)
		{	h2[i]=0;
		}
	}
	for(i=0;i<30;i++)
	{	h3+=h2[i]*theta3h[i];
	}
	h3+=theta3b;
	h3 = 1.0/(1.0 + exp(-1*h3));
	
		
	return h3;
}
