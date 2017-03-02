xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-bounding_model {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.198582,1.000000;;
 }
Frame frm-abound2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-0.893973,1.613807,1.000000;;
 }
Mesh abound2 {
 24;
 -0.114547;0.489170;0.848718;,
 -0.114547;0.489170;0.848718;,
 -0.114547;-0.678190;-0.465163;,
 -0.114547;-0.678190;-0.465163;,
 -0.114547;1.169254;1.099572;,
 -0.114547;1.169254;1.099572;,
 -0.114547;1.162286;0.461297;,
 -0.114547;1.162286;0.461297;,
 0.114547;0.489170;0.848718;,
 0.114547;0.489170;0.848718;,
 0.114547;-0.678190;-0.465163;,
 0.114547;-0.678190;-0.465163;,
 0.114547;1.169254;1.099572;,
 0.114547;1.169254;1.099572;,
 0.114547;1.162286;0.461297;,
 0.114547;1.162286;0.461297;,
 0.114547;1.162286;0.461297;,
 0.114547;1.169254;1.099572;,
 0.114547;-0.678190;-0.465163;,
 0.114547;0.489170;0.848718;,
 -0.114547;1.162286;0.461297;,
 -0.114547;1.169254;1.099572;,
 -0.114547;-0.678190;-0.465163;,
 -0.114547;0.489170;0.848718;;

 6;
 4;5,7,3,1;,
 4;6,15,11,2;,
 4;14,13,9,10;,
 4;12,4,0,8;,
 4;23,22,18,19;,
 4;17,16,20,21;;

 MeshMaterialList {
  3;
  6;
  0,
  1,
  0,
  1,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  24;
  -0.447214;-0.504203;0.738769;,
  -0.447214;-0.504203;0.738769;,
  -0.936087;-0.278891;-0.214385;,
  -0.936087;-0.278891;-0.214385;,
  -0.661190;0.432336;0.613118;,
  -0.661190;0.432336;0.613118;,
  -0.505160;0.732264;-0.456731;,
  -0.505160;0.732264;-0.456731;,
  0.447214;-0.504203;0.738769;,
  0.447214;-0.504203;0.738769;,
  0.936087;-0.278891;-0.214385;,
  0.936087;-0.278891;-0.214385;,
  0.661190;0.432336;0.613118;,
  0.661190;0.432336;0.613118;,
  0.505160;0.732264;-0.456731;,
  0.505160;0.732264;-0.456731;,
  0.505160;0.732264;-0.456731;,
  0.661190;0.432336;0.613118;,
  0.936087;-0.278891;-0.214385;,
  0.447214;-0.504203;0.738769;,
  -0.505160;0.732264;-0.456731;,
  -0.661190;0.432336;0.613118;,
  -0.936087;-0.278891;-0.214385;,
  -0.447214;-0.504203;0.738769;;

  6;
  4;5,7,3,1;,
  4;6,15,11,2;,
  4;14,13,9,10;,
  4;12,4,0,8;,
  4;23,22,18,19;,
  4;17,16,20,21;;
 }
 MeshTextureCoords { 
 24;
 0.875312;0.332303;,
 0.940026;0.428442;,
 0.875312;0.456803;,
 0.716680;0.809248;,
 0.875312;0.259772;,
 0.976809;0.194872;,
 0.875312;0.260515;,
 0.876121;0.193238;,
 0.886407;0.332303;,
 0.940026;0.428442;,
 0.716680;0.809248;,
 0.886407;0.456803;,
 0.886407;0.259772;,
 0.976809;0.194872;,
 0.876121;0.193238;,
 0.886407;0.260515;,
 0.910998;0.374451;,
 0.910998;0.452222;,
 0.910998;0.261566;,
 0.910998;0.421657;,
 0.905408;0.374451;,
 0.905408;0.452222;,
 0.905408;0.261566;,
 0.905408;0.421657;;
 }
}
}
Frame frm-abound1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,2.279617,1.000000;;
 }
Mesh abound1 {
 24;
 -0.401466;-0.326009;-0.449577;,
 -0.401466;-0.326009;-0.449577;,
 -0.401466;-0.312863;-0.556055;,
 -0.401466;-0.312863;-0.556055;,
 -0.495382;0.345727;0.000657;,
 -0.495382;0.345727;0.000657;,
 -0.495382;0.345727;-0.556055;,
 -0.495382;0.345727;-0.556055;,
 0.374006;-0.326009;-0.449577;,
 0.374006;-0.326009;-0.449577;,
 0.374006;-0.312863;-0.556055;,
 0.374006;-0.312863;-0.556055;,
 0.461499;0.345727;0.000657;,
 0.461499;0.345727;0.000657;,
 0.461499;0.345727;-0.556055;,
 0.461499;0.345727;-0.556055;,
 0.461499;0.345727;-0.556055;,
 0.461499;0.345727;0.000657;,
 0.374006;-0.312863;-0.556055;,
 0.374006;-0.326009;-0.449577;,
 -0.495382;0.345727;-0.556055;,
 -0.495382;0.345727;0.000657;,
 -0.401466;-0.312863;-0.556055;,
 -0.401466;-0.326009;-0.449577;;

 6;
 4;5,7,3,1;,
 4;6,15,11,2;,
 4;14,13,9,10;,
 4;12,4,0,8;,
 4;23,22,18,19;,
 4;17,16,20,21;;

 MeshMaterialList {
  3;
  6;
  0,
  1,
  0,
  1,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  24;
  -0.476018;-0.811443;0.339067;,
  -0.476018;-0.811443;0.339067;,
  -0.527315;-0.602423;-0.599187;,
  -0.527315;-0.602423;-0.599187;,
  -0.746729;0.229489;0.624284;,
  -0.746729;0.229489;0.624284;,
  -0.599609;0.521384;-0.607147;,
  -0.599609;0.521384;-0.607147;,
  0.478212;-0.809642;0.340285;,
  0.478212;-0.809642;0.340285;,
  0.529412;-0.599064;-0.600704;,
  0.529412;-0.599064;-0.600704;,
  0.745865;0.235953;0.622906;,
  0.745865;0.235953;0.622906;,
  0.598371;0.525277;-0.605009;,
  0.598371;0.525277;-0.605009;,
  0.598371;0.525277;-0.605009;,
  0.745865;0.235953;0.622906;,
  0.529412;-0.599064;-0.600704;,
  0.478212;-0.809642;0.340285;,
  -0.599609;0.521384;-0.607147;,
  -0.746729;0.229489;0.624284;,
  -0.527315;-0.602423;-0.599187;,
  -0.476018;-0.811443;0.339067;;

  6;
  4;5,7,3,1;,
  4;6,15,11,2;,
  4;14,13,9,10;,
  4;12,4,0,8;,
  4;23,22,18,19;,
  4;17,16,20,21;;
 }
 MeshTextureCoords { 
 24;
 0.616547;0.588327;,
 0.825106;0.198629;,
 0.616547;0.584714;,
 0.852929;0.195737;,
 0.600782;0.403695;,
 0.760195;0.050845;,
 0.600782;0.403695;,
 0.852929;0.050845;,
 0.746724;0.588327;,
 0.825106;0.198629;,
 0.852929;0.195737;,
 0.746724;0.584714;,
 0.761411;0.403695;,
 0.760195;0.050845;,
 0.852929;0.050845;,
 0.761411;0.403695;,
 0.301712;0.353138;,
 0.301712;0.455937;,
 0.290740;0.353138;,
 0.290740;0.372800;,
 0.181710;0.353138;,
 0.181710;0.455937;,
 0.193488;0.353138;,
 0.193488;0.372800;;
 }
}
}
Frame frm-midbound2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.019718,0.017183,1.162719,1.000000;;
 }
Mesh midbound2 {
 24;
 -0.467087;-0.556055;0.556055;,
 -0.467087;-0.556055;0.556055;,
 -0.210772;-0.235305;-0.556055;,
 -0.210772;-0.235305;-0.556055;,
 -0.467087;0.321221;0.556055;,
 -0.467087;0.321221;0.556055;,
 -0.210772;0.321221;-0.556055;,
 -0.210772;0.321221;-0.556055;,
 0.467087;-0.556055;0.556055;,
 0.467087;-0.556055;0.556055;,
 0.210772;-0.235305;-0.556055;,
 0.210772;-0.235305;-0.556055;,
 0.467087;0.321221;0.556055;,
 0.467087;0.321221;0.556055;,
 0.210772;0.321221;-0.556055;,
 0.210772;0.321221;-0.556055;,
 0.210772;0.321221;-0.556055;,
 0.467087;0.321221;0.556055;,
 0.210772;-0.235305;-0.556055;,
 0.467087;-0.556055;0.556055;,
 -0.210772;0.321221;-0.556055;,
 -0.467087;0.321221;0.556055;,
 -0.210772;-0.235305;-0.556055;,
 -0.467087;-0.556055;0.556055;;

 6;
 4;5,7,3,1;,
 4;6,15,11,2;,
 4;14,13,9,10;,
 4;12,4,0,8;,
 4;23,22,18,19;,
 4;17,16,20,21;;

 MeshMaterialList {
  3;
  6;
  0,
  1,
  0,
  1,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  24;
  -0.669090;-0.659740;0.342143;,
  -0.669090;-0.659740;0.342143;,
  -0.479620;-0.472917;-0.739131;,
  -0.479620;-0.472917;-0.739131;,
  -0.610128;0.626123;0.485503;,
  -0.610128;0.626123;0.485503;,
  -0.524691;0.538446;-0.659375;,
  -0.524691;0.538446;-0.659375;,
  0.669090;-0.659740;0.342143;,
  0.669090;-0.659740;0.342143;,
  0.479620;-0.472917;-0.739131;,
  0.479620;-0.472917;-0.739131;,
  0.610128;0.626123;0.485503;,
  0.610128;0.626123;0.485503;,
  0.524691;0.538446;-0.659375;,
  0.524691;0.538446;-0.659375;,
  0.524691;0.538446;-0.659375;,
  0.610128;0.626123;0.485503;,
  0.479620;-0.472917;-0.739131;,
  0.669090;-0.659740;0.342143;,
  -0.524691;0.538446;-0.659375;,
  -0.610128;0.626123;0.485503;,
  -0.479620;-0.472917;-0.739131;,
  -0.669090;-0.659740;0.342143;;

  6;
  4;5,7,3,1;,
  4;6,15,11,2;,
  4;14,13,9,10;,
  4;12,4,0,8;,
  4;23,22,18,19;,
  4;17,16,20,21;;
 }
 MeshTextureCoords { 
 24;
 0.624985;0.564079;,
 0.756458;0.241783;,
 0.236343;0.823000;,
 0.598049;0.228223;,
 0.624985;0.406853;,
 0.756458;0.033755;,
 0.236343;0.723259;,
 0.613674;0.033755;,
 0.746109;0.564079;,
 0.756458;0.241783;,
 0.598049;0.228223;,
 0.291000;0.823000;,
 0.746109;0.406853;,
 0.756458;0.033755;,
 0.613674;0.033755;,
 0.291000;0.723259;,
 0.661044;0.230651;,
 0.581285;0.265188;,
 0.133407;0.752238;,
 0.174508;0.974325;,
 0.660956;0.174938;,
 0.581091;0.141723;,
 0.065811;0.752238;,
 0.024710;0.974325;;
 }
}
}
Frame frm-midbound1 {
  FrameTransformMatrix {
0.951062,0.309000,0.000000,0.000000,
-0.309000,0.951062,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.008534,-0.634161,1.000000;;
 }
Mesh midbound1 {
 50;
 -0.000000;0.000000;1.226897;,
 -0.000000;0.000000;1.226897;,
 -0.000000;0.000000;1.226897;,
 -0.000000;0.000000;1.226897;,
 -0.000000;-0.000000;-0.625490;,
 -0.000000;-0.000000;-0.625490;,
 -0.000000;-0.000000;-0.625490;,
 -0.000000;-0.000000;-0.625490;,
 0.250196;0.000000;1.226897;,
 0.250196;0.000000;1.226897;,
 0.250196;0.000000;1.226897;,
 0.250196;-0.000000;-0.625490;,
 0.250196;-0.000000;-0.625490;,
 0.250196;-0.000000;-0.625490;,
 0.077315;0.237951;1.226897;,
 0.077315;0.237951;1.226897;,
 0.077315;0.237951;1.226897;,
 0.077315;0.237951;-0.625490;,
 0.077315;0.237951;-0.625490;,
 0.077315;0.237951;-0.625490;,
 -0.202413;0.147062;1.226897;,
 -0.202413;0.147062;1.226897;,
 -0.202413;0.147062;1.226897;,
 -0.202413;0.147062;-0.625490;,
 -0.202413;0.147062;-0.625490;,
 -0.202413;0.147062;-0.625490;,
 -0.202413;-0.147062;1.226897;,
 -0.202413;-0.147062;1.226897;,
 -0.202413;-0.147062;1.226897;,
 -0.202413;-0.147062;-0.625490;,
 -0.202413;-0.147062;-0.625490;,
 -0.202413;-0.147062;-0.625490;,
 0.077315;-0.237951;1.226897;,
 0.077315;-0.237951;1.226897;,
 0.077315;-0.237951;1.226897;,
 0.077315;-0.237951;-0.625490;,
 0.077315;-0.237951;-0.625490;,
 0.077315;-0.237951;-0.625490;,
 0.077315;-0.237951;-0.625490;,
 0.077315;-0.237951;1.226897;,
 -0.202413;-0.147062;-0.625490;,
 -0.202413;-0.147062;1.226897;,
 -0.202413;0.147062;-0.625490;,
 -0.202413;0.147062;1.226897;,
 0.077315;0.237951;-0.625490;,
 0.077315;0.237951;1.226897;,
 0.250196;-0.000000;-0.625490;,
 0.250196;0.000000;1.226897;,
 -0.000000;-0.000000;-0.625490;,
 -0.000000;0.000000;1.226897;;

 15;
 3;3,10,16;,
 4;13,19,15,9;,
 3;7,18,12;,
 3;2,14,22;,
 4;17,25,21,45;,
 3;6,24,44;,
 3;1,20,28;,
 4;23,31,27,43;,
 3;5,30,42;,
 3;0,26,34;,
 4;29,37,33,41;,
 3;4,36,40;,
 3;49,32,8;,
 4;35,11,47,39;,
 3;48,46,38;;

 MeshMaterialList {
  1;
  15;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  50;
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.628960;0.000000;0.777438;,
  0.628960;0.000000;0.777438;,
  0.628960;0.000000;0.777438;,
  0.628960;-0.000000;-0.777438;,
  0.628960;-0.000000;-0.777438;,
  0.628960;-0.000000;-0.777438;,
  0.194359;0.598177;0.777438;,
  0.194359;0.598177;0.777438;,
  0.194359;0.598177;0.777438;,
  0.194359;0.598177;-0.777438;,
  0.194359;0.598177;-0.777438;,
  0.194359;0.598177;-0.777438;,
  -0.508839;0.369694;0.777438;,
  -0.508839;0.369694;0.777438;,
  -0.508839;0.369694;0.777438;,
  -0.508839;0.369693;-0.777438;,
  -0.508839;0.369693;-0.777438;,
  -0.508839;0.369693;-0.777438;,
  -0.508839;-0.369694;0.777438;,
  -0.508839;-0.369694;0.777438;,
  -0.508839;-0.369694;0.777438;,
  -0.508839;-0.369694;-0.777438;,
  -0.508839;-0.369694;-0.777438;,
  -0.508839;-0.369694;-0.777438;,
  0.194359;-0.598177;0.777438;,
  0.194359;-0.598177;0.777438;,
  0.194359;-0.598177;0.777438;,
  0.194359;-0.598177;-0.777438;,
  0.194359;-0.598177;-0.777438;,
  0.194359;-0.598177;-0.777438;,
  0.194359;-0.598177;-0.777438;,
  0.194359;-0.598177;0.777438;,
  -0.508839;-0.369694;-0.777438;,
  -0.508839;-0.369694;0.777438;,
  -0.508839;0.369693;-0.777438;,
  -0.508839;0.369694;0.777438;,
  0.194359;0.598177;-0.777438;,
  0.194359;0.598177;0.777438;,
  0.628960;-0.000000;-0.777438;,
  0.628960;0.000000;0.777438;,
  0.000000;-0.000000;-1.000000;,
  0.000000;0.000000;1.000000;;

  15;
  3;3,10,16;,
  4;13,19,15,9;,
  3;7,18,12;,
  3;2,14,22;,
  4;17,25,21,45;,
  3;6,24,44;,
  3;1,20,28;,
  4;23,31,27,43;,
  3;5,30,42;,
  3;0,26,34;,
  4;29,37,33,41;,
  3;4,36,40;,
  3;49,32,8;,
  4;35,11,47,39;,
  3;48,46,38;;
 }
 MeshTextureCoords { 
 50;
 0.722647;0.084812;,
 0.722647;0.084812;,
 0.722647;0.084812;,
 0.722647;0.084812;,
 0.291007;0.084812;,
 0.291007;0.084812;,
 0.291007;0.084812;,
 0.291007;0.084812;,
 0.722647;0.057454;,
 0.722647;0.057454;,
 0.722647;0.057454;,
 0.291007;0.057454;,
 0.291007;0.057454;,
 0.291007;0.057454;,
 0.722647;0.019159;,
 0.722647;0.019159;,
 0.722647;0.019159;,
 0.291007;0.019159;,
 0.291007;0.019159;,
 0.291007;0.019159;,
 0.722647;0.057454;,
 0.722647;0.057454;,
 0.722647;0.057454;,
 0.291007;0.057454;,
 0.291007;0.057454;,
 0.291007;0.057454;,
 0.720703;0.164062;,
 0.720703;0.164062;,
 0.720703;0.164062;,
 0.289063;0.164062;,
 0.289063;0.164062;,
 0.289063;0.164062;,
 0.720703;0.164062;,
 0.720703;0.164062;,
 0.720703;0.164062;,
 0.289063;0.164062;,
 0.289063;0.164062;,
 0.289063;0.164062;,
 0.289063;0.164062;,
 0.720703;0.164062;,
 0.289063;0.164062;,
 0.720703;0.164062;,
 0.291007;0.057454;,
 0.722647;0.057454;,
 0.291007;0.019159;,
 0.722647;0.019159;,
 0.291007;0.057454;,
 0.722647;0.057454;,
 0.291007;0.084812;,
 0.722647;0.084812;;
 }
}
}
Frame frm-fbound2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-1.093987,1.000000;;
 }
Mesh fbound2 {
 24;
 -0.286572;-0.241033;-0.148449;,
 -0.286572;-0.241033;-0.148449;,
 -0.286572;-0.412863;-0.556055;,
 -0.286572;-0.412863;-0.556055;,
 -0.169651;0.298310;-0.148449;,
 -0.169651;0.298310;-0.148449;,
 -0.286572;0.349859;-0.556055;,
 -0.286572;0.349859;-0.556055;,
 0.329295;-0.241033;-0.148449;,
 0.329295;-0.241033;-0.148449;,
 0.329295;-0.412863;-0.556055;,
 0.329295;-0.412863;-0.556055;,
 0.194943;0.298310;-0.148449;,
 0.194943;0.298310;-0.148449;,
 0.329295;0.349859;-0.556055;,
 0.329295;0.349859;-0.556055;,
 0.329295;0.349859;-0.556055;,
 0.194943;0.298310;-0.148449;,
 0.329295;-0.412863;-0.556055;,
 0.329295;-0.241033;-0.148449;,
 -0.286572;0.349859;-0.556055;,
 -0.169651;0.298310;-0.148449;,
 -0.286572;-0.412863;-0.556055;,
 -0.286572;-0.241033;-0.148449;;

 6;
 4;5,7,3,1;,
 4;6,15,11,2;,
 4;14,13,9,10;,
 4;12,4,0,8;,
 4;23,22,18,19;,
 4;17,16,20,21;;

 MeshMaterialList {
  3;
  6;
  0,
  1,
  0,
  1,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  24;
  -0.495694;-0.417931;0.761329;,
  -0.495694;-0.417931;0.761329;,
  -0.716124;-0.603781;-0.350164;,
  -0.716124;-0.603781;-0.350164;,
  -0.512363;0.560640;0.650512;,
  -0.512363;0.560640;0.650512;,
  -0.601093;0.657730;-0.453960;,
  -0.601093;0.657730;-0.453960;,
  0.492036;-0.410051;0.767958;,
  0.492036;-0.410051;0.767958;,
  0.722200;-0.601863;-0.340863;,
  0.722200;-0.601863;-0.340863;,
  0.505813;0.562226;0.654260;,
  0.505813;0.562226;0.654260;,
  0.599542;0.666409;-0.443224;,
  0.599542;0.666409;-0.443224;,
  0.599542;0.666409;-0.443224;,
  0.505813;0.562226;0.654260;,
  0.722200;-0.601863;-0.340863;,
  0.492036;-0.410051;0.767958;,
  -0.601093;0.657730;-0.453960;,
  -0.512363;0.560640;0.650512;,
  -0.716124;-0.603781;-0.350164;,
  -0.495694;-0.417931;0.761329;;

  6;
  4;5,7,3,1;,
  4;6,15,11,2;,
  4;14,13,9,10;,
  4;12,4,0,8;,
  4;23,22,18,19;,
  4;17,16,20,21;;
 }
 MeshTextureCoords { 
 24;
 0.234059;0.942603;,
 0.440387;0.542937;,
 0.234059;0.982941;,
 0.372113;0.613208;,
 0.257474;0.815991;,
 0.440387;0.322368;,
 0.234059;0.803890;,
 0.372113;0.301287;,
 0.357394;0.942603;,
 0.440387;0.542937;,
 0.372113;0.613208;,
 0.357394;0.982941;,
 0.330488;0.815991;,
 0.440387;0.322368;,
 0.372113;0.301287;,
 0.357394;0.803890;,
 0.357557;0.816400;,
 0.331427;0.863287;,
 0.357557;0.816400;,
 0.357557;0.863287;,
 0.237777;0.816400;,
 0.260517;0.863287;,
 0.237777;0.816400;,
 0.237777;0.863287;;
 }
}
}
Frame frm-fbound1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-1.772062,1.000000;;
 }
Mesh fbound1 {
 37;
 -0.318450;-0.456754;0.118226;,
 -0.318450;-0.456754;0.118226;,
 -0.318450;-0.456754;0.118226;,
 -0.359833;-0.456754;-1.153029;,
 -0.359833;-0.456754;-1.153029;,
 -0.359833;-0.456754;-1.153029;,
 -0.229387;0.361966;0.118226;,
 -0.229387;0.361966;0.118226;,
 -0.229387;0.361966;0.118226;,
 -0.320143;0.050521;-0.800960;,
 -0.320143;0.050521;-0.800960;,
 -0.320143;0.050521;-0.800960;,
 0.362816;-0.456754;0.118226;,
 0.362816;-0.456754;0.118226;,
 0.362816;-0.456754;0.118226;,
 0.413591;-0.456754;-1.153029;,
 0.413591;-0.456754;-1.153029;,
 0.413591;-0.456754;-1.153029;,
 0.292603;0.361966;0.118226;,
 0.292603;0.361966;0.118226;,
 0.292603;0.361966;0.118226;,
 0.368834;0.050521;-0.800960;,
 0.368834;0.050521;-0.800960;,
 0.368834;0.050521;-0.800960;,
 0.368834;0.050521;-0.800960;,
 0.026879;-0.456754;-1.270385;,
 0.026879;-0.456754;-1.270385;,
 0.026879;-0.456754;-1.270385;,
 0.026879;-0.456754;-1.270385;,
 0.368834;0.050521;-0.800960;,
 0.292603;0.361966;0.118226;,
 0.413591;-0.456754;-1.153029;,
 0.362816;-0.456754;0.118226;,
 -0.320143;0.050521;-0.800960;,
 -0.229387;0.361966;0.118226;,
 -0.359833;-0.456754;-1.153029;,
 -0.318450;-0.456754;0.118226;;

 14;
 3;11,5,2;,
 3;8,10,1;,
 3;24,17,27;,
 3;20,14,16;,
 3;23,19,15;,
 3;7,0,13;,
 3;18,6,12;,
 3;26,31,32;,
 3;4,25,32;,
 3;36,3,32;,
 3;22,9,34;,
 3;30,21,34;,
 3;28,35,33;,
 3;28,33,29;;

 MeshMaterialList {
  4;
  14;
  0,
  0,
  1,
  0,
  0,
  2,
  2,
  2,
  2,
  2,
  3,
  3,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;0.977401;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;0.988701;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 0.700000;0.700000;0.700000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  37;
  -0.822458;-0.345513;0.451867;,
  -0.822458;-0.345513;0.451867;,
  -0.822458;-0.345513;0.451867;,
  -0.618449;-0.688928;-0.378020;,
  -0.618449;-0.688928;-0.378020;,
  -0.618449;-0.688928;-0.378020;,
  -0.374813;0.756290;0.536229;,
  -0.374813;0.756290;0.536229;,
  -0.374813;0.756290;0.536229;,
  -0.590903;0.646482;-0.482591;,
  -0.590903;0.646482;-0.482591;,
  -0.590903;0.646482;-0.482591;,
  0.269495;-0.788982;0.552159;,
  0.269495;-0.788982;0.552159;,
  0.269495;-0.788982;0.552159;,
  0.948575;-0.130386;-0.288454;,
  0.948575;-0.130386;-0.288454;,
  0.948575;-0.130386;-0.288454;,
  0.831635;0.447513;0.328809;,
  0.831635;0.447513;0.328809;,
  0.831635;0.447513;0.328809;,
  0.298531;0.796663;-0.525555;,
  0.298531;0.796663;-0.525555;,
  0.298531;0.796663;-0.525555;,
  0.298531;0.796663;-0.525555;,
  -0.000140;-0.062554;-0.998042;,
  -0.000140;-0.062554;-0.998042;,
  -0.000140;-0.062554;-0.998042;,
  -0.000140;-0.062554;-0.998042;,
  0.298531;0.796663;-0.525555;,
  0.831635;0.447513;0.328809;,
  0.948575;-0.130386;-0.288454;,
  0.269495;-0.788982;0.552159;,
  -0.590903;0.646482;-0.482591;,
  -0.374813;0.756290;0.536229;,
  -0.618449;-0.688928;-0.378020;,
  -0.822458;-0.345513;0.451867;;

  14;
  3;11,5,2;,
  3;8,10,1;,
  3;24,17,27;,
  3;20,14,16;,
  3;23,19,15;,
  3;7,0,13;,
  3;18,6,12;,
  3;26,31,32;,
  3;4,25,32;,
  3;36,3,32;,
  3;22,9,34;,
  3;30,21,34;,
  3;28,35,33;,
  3;28,33,29;;
 }
 MeshTextureCoords { 
 37;
 0.750817;0.557008;,
 0.308109;0.530025;,
 0.308109;0.530025;,
 0.029485;0.248185;,
 0.029485;0.248185;,
 -0.003603;0.530025;,
 0.728623;0.400023;,
 0.728623;0.400023;,
 0.345218;0.186771;,
 0.596249;0.406079;,
 0.165989;0.285928;,
 0.165989;0.285928;,
 0.610255;0.557008;,
 0.610255;0.557008;,
 0.308109;0.530025;,
 -0.003603;0.530025;,
 -0.003603;0.530025;,
 0.298265;0.527335;,
 0.633928;0.400023;,
 0.345218;0.186771;,
 0.345218;0.186771;,
 0.765962;0.406079;,
 0.765962;0.406079;,
 0.165989;0.285928;,
 0.298161;0.285689;,
 0.007493;0.147874;,
 0.007493;0.147874;,
 0.246741;0.527335;,
 0.246741;0.527335;,
 0.298161;0.285689;,
 0.747184;0.588224;,
 0.027463;0.046328;,
 0.254866;0.052892;,
 0.206365;0.285689;,
 0.618605;0.588224;,
 0.195218;0.527335;,
 0.256648;0.230696;;
 }
}
}
Frame frm-bbound {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-0.885501,1.028324,1.000000;;
 }
Mesh bbound {
 46;
 -1.387552;-0.556055;0.099985;,
 -1.387552;-0.556055;0.099985;,
 -1.387552;-0.556055;-0.017899;,
 -1.387552;-0.556055;-0.017899;,
 -1.864990;0.556055;0.525810;,
 -1.864990;0.556055;0.525810;,
 -1.864990;0.556055;0.525810;,
 -1.864990;0.556055;0.407926;,
 -1.864990;0.556055;0.407926;,
 1.387552;-0.556055;0.099985;,
 1.387552;-0.556055;0.099985;,
 1.387552;-0.556055;-0.017899;,
 1.387552;-0.556055;-0.017899;,
 1.864990;0.556055;0.525810;,
 1.864990;0.556055;0.525810;,
 1.864990;0.556055;0.407926;,
 1.864990;0.556055;0.407926;,
 1.864990;0.556055;0.407926;,
 0.000000;-1.180079;-0.151290;,
 0.000000;-1.180079;-0.151290;,
 0.000000;-1.180079;-0.033406;,
 0.000000;-1.180079;-0.033406;,
 0.000000;0.556055;0.654186;,
 0.000000;0.556055;0.654186;,
 0.000000;0.556055;0.654186;,
 0.000000;0.556055;0.772070;,
 0.000000;0.556055;0.772070;,
 0.000000;0.556055;0.772070;,
 0.693776;0.000000;0.318144;,
 0.000000;-0.312012;0.251448;,
 -0.693776;0.000000;0.318144;,
 -0.693776;0.000000;0.436028;,
 0.000000;-0.312012;0.369332;,
 0.693776;0.000000;0.436028;,
 0.000000;0.556055;0.772070;,
 0.000000;0.556055;0.654186;,
 0.000000;-1.180079;-0.033406;,
 0.000000;-1.180079;-0.151290;,
 1.864990;0.556055;0.407926;,
 1.864990;0.556055;0.525810;,
 1.387552;-0.556055;-0.017899;,
 1.387552;-0.556055;0.099985;,
 -1.864990;0.556055;0.407926;,
 -1.864990;0.556055;0.525810;,
 -1.387552;-0.556055;-0.017899;,
 -1.387552;-0.556055;0.099985;;

 22;
 4;6,8,3,1;,
 3;28,24,17;,
 4;16,14,10,12;,
 3;31,27,5;,
 4;21,0,2,19;,
 4;26,13,15,23;,
 4;18,11,9,20;,
 4;22,7,4,25;,
 3;33,41,39;,
 4;32,36,41,33;,
 3;32,34,31;,
 3;30,44,42;,
 3;39,34,33;,
 3;33,34,32;,
 4;31,45,36,32;,
 3;43,45,31;,
 4;28,40,37,29;,
 3;30,35,29;,
 3;38,40,28;,
 3;29,35,28;,
 4;29,37,44,30;,
 3;42,35,30;;

 MeshMaterialList {
  2;
  22;
  0,
  1,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "cap01.ppm";
 }
 }
}
 MeshNormals {
  46;
  -0.235561;-0.536826;0.810141;,
  -0.235561;-0.536826;0.810141;,
  -0.465351;-0.335649;-0.819017;,
  -0.465351;-0.335649;-0.819017;,
  -0.219011;-0.099472;0.970639;,
  -0.219011;-0.099472;0.970639;,
  -0.219011;-0.099472;0.970639;,
  -0.213739;0.496587;-0.841259;,
  -0.213739;0.496587;-0.841259;,
  0.235561;-0.536826;0.810141;,
  0.235561;-0.536826;0.810141;,
  0.465351;-0.335649;-0.819017;,
  0.465351;-0.335649;-0.819017;,
  0.219011;-0.099472;0.970639;,
  0.219011;-0.099472;0.970639;,
  0.213739;0.496587;-0.841259;,
  0.213739;0.496587;-0.841259;,
  0.213739;0.496587;-0.841259;,
  0.000000;-0.479670;-0.877449;,
  0.000000;-0.479670;-0.877449;,
  0.000000;-0.624484;0.781037;,
  0.000000;-0.624484;0.781037;,
  -0.000000;0.606072;-0.795410;,
  -0.000000;0.606072;-0.795410;,
  -0.000000;0.606072;-0.795410;,
  0.000000;0.099577;0.995030;,
  0.000000;0.099577;0.995030;,
  0.000000;0.099577;0.995030;,
  -0.110561;0.409368;-0.905646;,
  0.000000;0.420859;-0.907126;,
  0.110561;0.409368;-0.905646;,
  -0.110561;-0.409368;0.905646;,
  0.000000;-0.420859;0.907126;,
  0.110561;-0.409368;0.905646;,
  0.000000;0.099577;0.995030;,
  -0.000000;0.606072;-0.795410;,
  0.000000;-0.624484;0.781037;,
  0.000000;-0.479670;-0.877449;,
  0.213739;0.496587;-0.841259;,
  0.219011;-0.099472;0.970639;,
  0.465351;-0.335649;-0.819017;,
  0.235561;-0.536826;0.810141;,
  -0.213739;0.496587;-0.841259;,
  -0.219011;-0.099472;0.970639;,
  -0.465351;-0.335649;-0.819017;,
  -0.235561;-0.536826;0.810141;;

  22;
  4;6,8,3,1;,
  3;28,24,17;,
  4;16,14,10,12;,
  3;31,27,5;,
  4;21,0,2,19;,
  4;26,13,15,23;,
  4;18,11,9,20;,
  4;22,7,4,25;,
  3;33,41,39;,
  4;32,36,41,33;,
  3;32,34,31;,
  3;30,44,42;,
  3;39,34,33;,
  3;33,34,32;,
  4;31,45,36,32;,
  3;43,45,31;,
  4;28,40,37,29;,
  3;30,35,29;,
  3;38,40,28;,
  3;29,35,28;,
  4;29,37,44,30;,
  3;42,35,30;;
 }
 MeshTextureCoords { 
 46;
 0.561773;0.586808;,
 0.561773;0.586808;,
 0.561773;0.586808;,
 0.561773;0.586808;,
 0.561523;0.491724;,
 0.563790;0.318578;,
 0.561523;0.491724;,
 0.561523;0.491724;,
 0.561523;0.491724;,
 0.563227;0.586808;,
 0.563227;0.586808;,
 0.563227;0.586808;,
 0.563227;0.586808;,
 0.563477;0.491724;,
 0.563477;0.491724;,
 0.563477;0.491724;,
 0.563477;0.491724;,
 0.565117;0.318578;,
 0.562500;0.640161;,
 0.562500;0.640161;,
 0.562500;0.640161;,
 0.562500;0.640161;,
 0.562500;0.491724;,
 0.562500;0.491724;,
 0.564453;0.318578;,
 0.562500;0.491724;,
 0.562500;0.491724;,
 0.564453;0.318578;,
 0.564700;0.440806;,
 0.564453;0.509390;,
 0.564206;0.440806;,
 0.564206;0.440806;,
 0.564453;0.509390;,
 0.564700;0.440806;,
 0.564453;0.318578;,
 0.564453;0.318578;,
 0.564453;0.700203;,
 0.564453;0.700203;,
 0.565117;0.318578;,
 0.565117;0.318578;,
 0.564947;0.563034;,
 0.564947;0.563034;,
 0.563790;0.318578;,
 0.563790;0.318578;,
 0.563959;0.563034;,
 0.563959;0.563034;;
 }
}
}
}
AnimationSet {
 Animation anim-bounding_model {
  {frm-bounding_model}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 0.198582;;,
  60; 3; 0.000000, 0.000000, 0.198582;;;
  }
 }
 Animation anim-abound2 {
  {frm-abound2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.893973, 1.613807;;,
  60; 3; 0.000000, -0.893973, 1.613807;;;
  }
 }
 Animation anim-abound1 {
  {frm-abound1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 2.279617;;,
  60; 3; 0.000000, 0.000000, 2.279617;;;
  }
 }
 Animation anim-midbound2 {
  {frm-midbound2}
  AnimationKey {
  2;
  2;
  1; 3; -0.019718, 0.017183, 1.162719;;,
  60; 3; -0.019718, 0.017183, 1.162719;;;
  }
 }
 Animation anim-midbound1 {
  {frm-midbound1}
  AnimationKey {
  0;
  2;
  1; 4; 0.987690, 0.000000, 0.000000, -0.156426;;,
  60; 4; 0.987690, 0.000000, 0.000000, -0.156426;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.008534, -0.634161;;,
  60; 3; 0.000000, 0.008534, -0.634161;;;
  }
 }
 Animation anim-fbound2 {
  {frm-fbound2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -1.093987;;,
  60; 3; 0.000000, 0.000000, -1.093987;;;
  }
 }
 Animation anim-fbound1 {
  {frm-fbound1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -1.772062;;,
  60; 3; 0.000000, 0.000000, -1.772062;;;
  }
 }
 Animation anim-bbound {
  {frm-bbound}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.885501, 1.028324;;,
  60; 3; 0.000000, -0.885501, 1.028324;;;
  }
 }
}