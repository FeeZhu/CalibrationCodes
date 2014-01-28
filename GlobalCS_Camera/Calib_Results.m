% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 808.143359087797650 ; 803.722815217184120 ];

%-- Principal point:
cc = [ 806.922767448549730 ; 595.368936470950760 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.015194690568994 ; -0.002315564936138 ; 0.000047447414640 ; 0.001332436234638 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 20.812502964581171 ; 20.534491948864972 ];

%-- Principal point uncertainty:
cc_error = [ 19.018560711382317 ; 18.660601497873184 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.015540234387041 ; 0.005005191930111 ; 0.005458592022633 ; 0.005811261135820 ; 0.000000000000000 ];

%-- Image size:
nx = 1626;
ny = 1236;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 42;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.050099e+00 ; 1.620767e+00 ; 8.984588e-01 ];
Tc_1  = [ -1.055528e+03 ; -6.558372e+02 ; 1.700018e+03 ];
omc_error_1 = [ 2.118085e-02 ; 2.379435e-02 ; 4.128709e-02 ];
Tc_error_1  = [ 4.758255e+01 ; 4.471117e+01 ; 5.749922e+01 ];

%-- Image #2:
omc_2 = [ 2.197496e+00 ; 2.090952e+00 ; 2.025620e-01 ];
Tc_2  = [ -5.701800e+02 ; -9.435103e+02 ; 1.561346e+03 ];
omc_error_2 = [ 1.143642e-02 ; 2.327769e-02 ; 3.860535e-02 ];
Tc_error_2  = [ 4.054791e+01 ; 3.912022e+01 ; 5.140301e+01 ];

%-- Image #3:
omc_3 = [ -2.343356e+00 ; -1.786749e+00 ; -2.436156e-01 ];
Tc_3  = [ 2.738887e+02 ; -8.978982e+02 ; 1.532202e+03 ];
omc_error_3 = [ 2.185359e-02 ; 2.036159e-02 ; 3.615196e-02 ];
Tc_error_3  = [ 3.893594e+01 ; 3.815546e+01 ; 4.770423e+01 ];

%-- Image #4:
omc_4 = [ -1.552243e-01 ; -3.037986e+00 ; -4.712282e-01 ];
Tc_4  = [ 9.759739e+02 ; -7.930151e+02 ; 1.779064e+03 ];
omc_error_4 = [ 1.070218e-02 ; 2.767835e-02 ; 3.653257e-02 ];
Tc_error_4  = [ 4.481104e+01 ; 4.594204e+01 ; 5.909559e+01 ];

%-- Image #5:
omc_5 = [ 4.362600e-03 ; 2.898180e+00 ; 1.097475e+00 ];
Tc_5  = [ 6.563179e+02 ; -5.638455e+02 ; 1.796399e+03 ];
omc_error_5 = [ 1.132456e-02 ; 2.539100e-02 ; 3.712160e-02 ];
Tc_error_5  = [ 4.407820e+01 ; 4.406037e+01 ; 5.248838e+01 ];

%-- Image #6:
omc_6 = [ 1.892132e+00 ; -2.187205e+00 ; 2.185497e-01 ];
Tc_6  = [ 6.385433e+02 ; -3.125614e+02 ; 1.838261e+03 ];
omc_error_6 = [ 1.080145e-02 ; 2.328471e-02 ; 3.650084e-02 ];
Tc_error_6  = [ 4.446618e+01 ; 4.392863e+01 ; 5.127716e+01 ];

%-- Image #7:
omc_7 = [ 2.156103e+00 ; -2.303778e+00 ; -2.205177e-01 ];
Tc_7  = [ 1.460529e+03 ; -5.644999e+02 ; 1.860511e+03 ];
omc_error_7 = [ 1.192499e-02 ; 2.468026e-02 ; 4.459769e-02 ];
Tc_error_7  = [ 4.882245e+01 ; 4.955440e+01 ; 6.533731e+01 ];

%-- Image #8:
omc_8 = [ -2.184727e+00 ; 2.159517e+00 ; 2.369678e-01 ];
Tc_8  = [ 1.336415e+03 ; -6.478523e+02 ; 1.858282e+03 ];
omc_error_8 = [ 2.372868e-02 ; 8.867071e-03 ; 4.452032e-02 ];
Tc_error_8  = [ 4.820160e+01 ; 4.896434e+01 ; 6.358249e+01 ];

%-- Image #9:
omc_9 = [ -3.169693e+00 ; 6.404049e-02 ; 1.531393e-02 ];
Tc_9  = [ 1.888326e+03 ; 3.538879e+02 ; 2.558784e+03 ];
omc_error_9 = [ 2.174184e-02 ; 1.346647e-02 ; 4.672716e-02 ];
Tc_error_9  = [ 6.737901e+01 ; 6.598934e+01 ; 8.457727e+01 ];

%-- Image #10:
omc_10 = [ -1.461277e+00 ; -2.066289e+00 ; 7.086774e-01 ];
Tc_10  = [ 1.499351e+03 ; 7.817901e+02 ; 2.021338e+03 ];
omc_error_10 = [ 1.600172e-02 ; 4.183999e-02 ; 4.857715e-02 ];
Tc_error_10  = [ 5.472375e+01 ; 5.303126e+01 ; 7.306598e+01 ];

%-- Image #11:
omc_11 = [ -2.758811e-01 ; -2.801913e+00 ; 9.986627e-01 ];
Tc_11  = [ 1.378317e+03 ; 8.792693e+02 ; 2.032736e+03 ];
omc_error_11 = [ 1.556222e-02 ; 3.229746e-02 ; 4.480095e-02 ];
Tc_error_11  = [ 5.413454e+01 ; 5.335328e+01 ; 6.997050e+01 ];

%-- Image #12:
omc_12 = [ 1.574040e+00 ; -2.161334e+00 ; 3.807451e-01 ];
Tc_12  = [ 1.465260e+03 ; 9.957477e+02 ; 2.010265e+03 ];
omc_error_12 = [ 1.822142e-02 ; 3.292969e-02 ; 3.738414e-02 ];
Tc_error_12  = [ 5.431769e+01 ; 5.370006e+01 ; 7.379437e+01 ];

%-- Image #13:
omc_13 = [ 2.328456e+00 ; -1.961080e+00 ; -3.457400e-02 ];
Tc_13  = [ 7.613431e+02 ; 1.468675e+03 ; 2.145107e+03 ];
omc_error_13 = [ 2.588715e-02 ; 1.771594e-02 ; 3.385850e-02 ];
Tc_error_13  = [ 5.659458e+01 ; 5.585994e+01 ; 7.129415e+01 ];

%-- Image #14:
omc_14 = [ -1.010437e+00 ; 2.735438e+00 ; -1.124500e+00 ];
Tc_14  = [ 9.080959e+01 ; 1.155660e+03 ; 2.082843e+03 ];
omc_error_14 = [ 1.177122e-02 ; 3.100107e-02 ; 4.408423e-02 ];
Tc_error_14  = [ 5.231173e+01 ; 5.197012e+01 ; 6.004838e+01 ];

%-- Image #15:
omc_15 = [ 2.567319e+00 ; -1.008105e+00 ; 7.768687e-01 ];
Tc_15  = [ -3.136454e+02 ; 1.004068e+03 ; 2.062221e+03 ];
omc_error_15 = [ 2.916086e-02 ; 1.487529e-02 ; 4.475280e-02 ];
Tc_error_15  = [ 5.137902e+01 ; 5.048626e+01 ; 6.006509e+01 ];

%-- Image #16:
omc_16 = [ 1.899294e+00 ; 1.413959e+00 ; 5.810917e-01 ];
Tc_16  = [ -1.249944e+03 ; 1.042025e+03 ; 1.948965e+03 ];
omc_error_16 = [ 2.728346e-02 ; 1.790123e-02 ; 3.559751e-02 ];
Tc_error_16  = [ 5.362255e+01 ; 5.230570e+01 ; 7.070333e+01 ];

%-- Image #17:
omc_17 = [ 1.953538e+00 ; 1.647528e+00 ; 5.612612e-01 ];
Tc_17  = [ -1.485765e+03 ; 8.250420e+02 ; 2.018558e+03 ];
omc_error_17 = [ 3.026111e-02 ; 2.644191e-02 ; 4.954306e-02 ];
Tc_error_17  = [ 5.636877e+01 ; 5.444095e+01 ; 7.585581e+01 ];

%-- Image #18:
omc_18 = [ 2.051121e+00 ; 2.355331e+00 ; -6.528109e-02 ];
Tc_18  = [ -1.474334e+03 ; 2.780656e+02 ; 1.873818e+03 ];
omc_error_18 = [ 1.643107e-02 ; 2.426802e-02 ; 3.672761e-02 ];
Tc_error_18  = [ 5.077990e+01 ; 4.951211e+01 ; 6.235323e+01 ];

%-- Image #19:
omc_19 = [ -1.339581e+00 ; 2.694858e+00 ; -4.118229e-01 ];
Tc_19  = [ -1.138217e+03 ; -2.422353e+02 ; 1.938492e+03 ];
omc_error_19 = [ 1.898653e-02 ; 2.344220e-02 ; 3.742657e-02 ];
Tc_error_19  = [ 5.059505e+01 ; 4.823268e+01 ; 5.863266e+01 ];

%-- Image #20:
omc_20 = [ -2.658509e-01 ; 3.136552e+00 ; 8.439147e-02 ];
Tc_20  = [ -7.479187e+02 ; -2.769684e+02 ; 1.839202e+03 ];
omc_error_20 = [ 9.344944e-03 ; 2.825663e-02 ; 3.495837e-02 ];
Tc_error_20  = [ 4.641823e+01 ; 4.432763e+01 ; 5.142711e+01 ];

%-- Image #21:
omc_21 = [ 1.071180e+00 ; -2.924838e+00 ; -5.082420e-03 ];
Tc_21  = [ 7.376275e+02 ; -8.288943e+01 ; 1.791630e+03 ];
omc_error_21 = [ 9.328994e-03 ; 2.635793e-02 ; 3.610851e-02 ];
Tc_error_21  = [ 4.283941e+01 ; 4.293026e+01 ; 5.044063e+01 ];

%-- Image #22:
omc_22 = [ -1.879829e+00 ; 2.478960e+00 ; -1.692703e-03 ];
Tc_22  = [ 7.381542e+02 ; 2.908873e+01 ; 1.797388e+03 ];
omc_error_22 = [ 1.813574e-02 ; 1.842022e-02 ; 3.655386e-02 ];
Tc_error_22  = [ 4.290928e+01 ; 4.306955e+01 ; 5.037777e+01 ];

%-- Image #23:
omc_23 = [ -5.636452e-02 ; -3.061401e+00 ; 3.604008e-01 ];
Tc_23  = [ 7.972410e+02 ; -4.549687e+02 ; 1.862606e+03 ];
omc_error_23 = [ 1.022143e-02 ; 2.591891e-02 ; 3.581324e-02 ];
Tc_error_23  = [ 4.597741e+01 ; 4.488243e+01 ; 5.335051e+01 ];

%-- Image #24:
omc_24 = [ 8.396558e-01 ; 2.837495e+00 ; 9.034256e-01 ];
Tc_24  = [ 5.603400e+02 ; -6.694648e+02 ; 1.605784e+03 ];
omc_error_24 = [ 1.416757e-02 ; 2.331207e-02 ; 3.321507e-02 ];
Tc_error_24  = [ 3.953388e+01 ; 4.051553e+01 ; 4.880957e+01 ];

%-- Image #25:
omc_25 = [ 7.111139e-02 ; -3.105927e+00 ; 5.107115e-02 ];
Tc_25  = [ 5.080465e+02 ; 4.638250e+02 ; 1.814312e+03 ];
omc_error_25 = [ 7.562019e-03 ; 2.505767e-02 ; 3.921716e-02 ];
Tc_error_25  = [ 4.374199e+01 ; 4.375056e+01 ; 5.001151e+01 ];

%-- Image #26:
omc_26 = [ -1.314163e+00 ; -2.784504e+00 ; 1.468504e-01 ];
Tc_26  = [ 3.777240e+02 ; 4.461936e+02 ; 1.829222e+03 ];
omc_error_26 = [ 6.114226e-03 ; 2.557576e-02 ; 4.268335e-02 ];
Tc_error_26  = [ 4.403659e+01 ; 4.380123e+01 ; 4.905696e+01 ];

%-- Image #27:
omc_27 = [ NaN ; NaN ; NaN ];
Tc_27  = [ NaN ; NaN ; NaN ];
omc_error_27 = [ NaN ; NaN ; NaN ];
Tc_error_27  = [ NaN ; NaN ; NaN ];

%-- Image #28:
omc_28 = [ NaN ; NaN ; NaN ];
Tc_28  = [ NaN ; NaN ; NaN ];
omc_error_28 = [ NaN ; NaN ; NaN ];
Tc_error_28  = [ NaN ; NaN ; NaN ];

%-- Image #29:
omc_29 = [ NaN ; NaN ; NaN ];
Tc_29  = [ NaN ; NaN ; NaN ];
omc_error_29 = [ NaN ; NaN ; NaN ];
Tc_error_29  = [ NaN ; NaN ; NaN ];

%-- Image #30:
omc_30 = [ -3.095552e+00 ; 3.010500e-01 ; 2.475460e-01 ];
Tc_30  = [ 3.100097e+02 ; 7.407856e+02 ; 1.847740e+03 ];
omc_error_30 = [ 2.554800e-02 ; 7.468855e-03 ; 3.775143e-02 ];
Tc_error_30  = [ 4.534016e+01 ; 4.422083e+01 ; 5.111211e+01 ];

%-- Image #31:
omc_31 = [ -2.688491e+00 ; -4.816281e-01 ; 2.050825e-01 ];
Tc_31  = [ 1.923025e+02 ; 6.069615e+02 ; 1.940110e+03 ];
omc_error_31 = [ 2.240459e-02 ; 1.165849e-02 ; 3.243171e-02 ];
Tc_error_31  = [ 4.693810e+01 ; 4.591532e+01 ; 5.044564e+01 ];

%-- Image #32:
omc_32 = [ 2.207366e+00 ; -2.337351e-01 ; -2.245971e-01 ];
Tc_32  = [ 1.155270e+02 ; 1.019692e+03 ; 1.757484e+03 ];
omc_error_32 = [ 2.608838e-02 ; 6.821797e-03 ; 3.210088e-02 ];
Tc_error_32  = [ 4.444956e+01 ; 4.421094e+01 ; 5.425099e+01 ];

%-- Image #33:
omc_33 = [ 2.667678e+00 ; -4.675307e-01 ; -1.057148e-01 ];
Tc_33  = [ 1.510590e+02 ; 9.124810e+02 ; 1.863580e+03 ];
omc_error_33 = [ 4.697853e-02 ; 1.806759e-02 ; 8.225828e-02 ];
Tc_error_33  = [ 4.615869e+01 ; 4.596574e+01 ; 5.436113e+01 ];

%-- Image #34:
omc_34 = [ NaN ; NaN ; NaN ];
Tc_34  = [ NaN ; NaN ; NaN ];
omc_error_34 = [ NaN ; NaN ; NaN ];
Tc_error_34  = [ NaN ; NaN ; NaN ];

%-- Image #35:
omc_35 = [ -1.449940e+00 ; 1.822325e+00 ; -6.583723e-01 ];
Tc_35  = [ -9.411699e+02 ; -5.789024e+02 ; 1.859779e+03 ];
omc_error_35 = [ 2.015580e-02 ; 1.845254e-02 ; 3.458091e-02 ];
Tc_error_35  = [ 5.026059e+01 ; 4.745121e+01 ; 5.536657e+01 ];

%-- Image #36:
omc_36 = [ 2.854519e+00 ; 1.332583e+00 ; 2.578614e-02 ];
Tc_36  = [ -1.308371e+03 ; 1.283290e+03 ; 2.723823e+03 ];
omc_error_36 = [ 2.320683e-02 ; 1.763132e-02 ; 3.961824e-02 ];
Tc_error_36  = [ 7.049159e+01 ; 6.993369e+01 ; 8.534622e+01 ];

%-- Image #37:
omc_37 = [ NaN ; NaN ; NaN ];
Tc_37  = [ NaN ; NaN ; NaN ];
omc_error_37 = [ NaN ; NaN ; NaN ];
Tc_error_37  = [ NaN ; NaN ; NaN ];

%-- Image #38:
omc_38 = [ 1.865654e+00 ; 9.962327e-01 ; 5.826874e-01 ];
Tc_38  = [ -2.120456e+03 ; 1.287432e+03 ; 2.419886e+03 ];
omc_error_38 = [ 2.839238e-02 ; 1.852487e-02 ; 3.729584e-02 ];
Tc_error_38  = [ 7.164077e+01 ; 6.939522e+01 ; 9.251563e+01 ];

%-- Image #39:
omc_39 = [ 2.259133e+00 ; 1.569681e+00 ; 3.100819e-01 ];
Tc_39  = [ -2.131917e+03 ; 4.417286e+02 ; 2.568345e+03 ];
omc_error_39 = [ 3.166500e-02 ; 3.176082e-02 ; 5.010557e-02 ];
Tc_error_39  = [ 7.081412e+01 ; 6.868075e+01 ; 8.996423e+01 ];

%-- Image #40:
omc_40 = [ 2.117311e+00 ; 1.828874e+00 ; 3.810718e-01 ];
Tc_40  = [ -2.143544e+03 ; -1.267015e+01 ; 2.576211e+03 ];
omc_error_40 = [ 2.811985e-02 ; 3.538183e-02 ; 5.219681e-02 ];
Tc_error_40  = [ 7.102577e+01 ; 6.840100e+01 ; 8.945058e+01 ];

%-- Image #41:
omc_41 = [ 1.948124e+00 ; 2.118736e+00 ; -2.360182e-01 ];
Tc_41  = [ -1.575157e+03 ; -4.626057e+02 ; 1.924476e+03 ];
omc_error_41 = [ 7.016203e-03 ; 2.576667e-02 ; 3.632739e-02 ];
Tc_error_41  = [ 5.221226e+01 ; 5.110523e+01 ; 6.751973e+01 ];

%-- Image #42:
omc_42 = [ 1.948164e+00 ; 2.118328e+00 ; -2.364870e-01 ];
Tc_42  = [ -1.574883e+03 ; -4.624930e+02 ; 1.924003e+03 ];
omc_error_42 = [ 7.011544e-03 ; 2.576510e-02 ; 3.632351e-02 ];
Tc_error_42  = [ 5.219934e+01 ; 5.109360e+01 ; 6.750641e+01 ];
