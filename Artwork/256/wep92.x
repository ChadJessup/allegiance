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

Frame frm-cyl9 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cyl9 {
 10;
 0.309017;-0.951057;-10.237499;,
 0.309017;-0.951056;10.237499;,
 -0.809017;-0.587786;-10.237499;,
 -0.809017;-0.587785;10.237499;,
 -0.809017;0.587785;-10.237499;,
 -0.809017;0.587786;10.237499;,
 0.309017;0.951056;-10.237499;,
 0.309017;0.951057;10.237499;,
 1.000000;-0.000000;-10.237499;,
 1.000000;0.000000;10.237499;;

 6;
 4;0,8,9,1;,
 4;8,6,7,9;,
 5;4,6,8,0,2;,
 4;2,0,1,3;,
 4;6,4,5,7;,
 4;4,2,3,5;;

 MeshMaterialList {
  1;
  6;
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
}
 MeshNormals {
  10;
  0.262866;-0.809017;-0.525731;,
  0.309017;-0.951056;0.000000;,
  -0.688191;-0.500000;-0.525731;,
  -0.809017;-0.587785;0.000000;,
  -0.688191;0.500000;-0.525731;,
  -0.809017;0.587785;-0.000000;,
  0.262866;0.809017;-0.525731;,
  0.309017;0.951057;-0.000000;,
  0.850651;0.000000;-0.525731;,
  1.000000;0.000000;-0.000000;;

  6;
  4;0,8,9,1;,
  4;8,6,7,9;,
  5;4,6,8,0,2;,
  4;2,0,1,3;,
  4;6,4,5,7;,
  4;4,2,3,5;;
 }
 MeshTextureCoords { 
 10;
 0.983459;0.459901;,
 0.015046;0.459901;,
 0.983459;0.442392;,
 0.015046;0.442392;,
 0.983459;0.385733;,
 0.015046;0.385733;,
 0.983459;0.368224;,
 0.015046;0.368224;,
 0.983459;0.414063;,
 0.015046;0.414063;;
 }
}
Frame frm-cyl11 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-2.897358,12.612031,1.000000;;
 }
Mesh cyl11 {
 41;
 -3.595110;0.000000;2.454000;,
 3.595110;-0.000000;2.454000;,
 3.595110;-0.000000;2.454000;,
 -3.595110;1.735240;1.735240;,
 3.595110;1.735240;1.735240;,
 3.595110;1.735240;1.735240;,
 -3.595110;2.454000;-0.000000;,
 3.595110;2.454000;0.000000;,
 3.595110;2.454000;0.000000;,
 -3.595110;1.735240;-1.735240;,
 3.595110;1.735240;-1.735240;,
 3.595110;1.735240;-1.735240;,
 -3.595110;0.000000;-2.454000;,
 3.595110;-0.000000;-2.454000;,
 3.595110;-0.000000;-2.454000;,
 -3.595110;-1.735240;-1.735240;,
 3.595110;-1.735240;-1.735240;,
 3.595110;-1.735240;-1.735240;,
 -3.595110;-2.454000;-0.000000;,
 3.595110;-2.454000;0.000000;,
 3.595110;-2.454000;0.000000;,
 -3.595110;-1.735240;1.735240;,
 -3.595110;-1.735240;1.735240;,
 3.595110;-1.735240;1.735240;,
 3.595110;-1.735240;1.735240;,
 3.595110;-1.735240;1.735240;,
 -3.595110;-1.735240;1.735240;,
 3.595110;-2.454000;0.000000;,
 -3.595110;-2.454000;-0.000000;,
 3.595110;-1.735240;-1.735240;,
 -3.595110;-1.735240;-1.735240;,
 3.595110;-0.000000;-2.454000;,
 -3.595110;0.000000;-2.454000;,
 3.595110;1.735240;-1.735240;,
 -3.595110;1.735240;-1.735240;,
 3.595110;2.454000;0.000000;,
 -3.595110;2.454000;-0.000000;,
 3.595110;1.735240;1.735240;,
 -3.595110;1.735240;1.735240;,
 3.595110;-0.000000;2.454000;,
 -3.595110;0.000000;2.454000;;

 10;
 8;18,22,0,3,6,9,12,15;,
 4;2,5,38,40;,
 4;4,8,36,38;,
 4;7,11,34,36;,
 4;10,14,32,34;,
 4;13,17,30,32;,
 4;16,20,28,30;,
 4;19,24,21,28;,
 8;31,33,35,37,1,23,27,29;,
 4;25,39,40,26;;

 MeshMaterialList {
  2;
  10;
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  0,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
}
 MeshNormals {
  41;
  -0.447214;-0.000000;0.894427;,
  0.447214;-0.000000;0.894427;,
  0.447214;-0.000000;0.894427;,
  -0.447214;0.632456;0.632456;,
  0.447214;0.632456;0.632456;,
  0.447214;0.632456;0.632456;,
  -0.447214;0.894427;-0.000000;,
  0.447214;0.894427;-0.000000;,
  0.447214;0.894427;-0.000000;,
  -0.447214;0.632456;-0.632456;,
  0.447214;0.632456;-0.632456;,
  0.447214;0.632456;-0.632456;,
  -0.447214;0.000000;-0.894427;,
  0.447214;-0.000000;-0.894427;,
  0.447214;-0.000000;-0.894427;,
  -0.447214;-0.632456;-0.632456;,
  0.447214;-0.632456;-0.632456;,
  0.447214;-0.632456;-0.632456;,
  -0.447214;-0.894427;-0.000000;,
  0.447214;-0.894427;0.000000;,
  0.447214;-0.894427;0.000000;,
  -0.447214;-0.632456;0.632455;,
  -0.447214;-0.632456;0.632455;,
  0.447214;-0.632456;0.632456;,
  0.447214;-0.632456;0.632456;,
  0.447214;-0.632456;0.632456;,
  -0.447214;-0.632456;0.632455;,
  0.447214;-0.894427;0.000000;,
  -0.447214;-0.894427;-0.000000;,
  0.447214;-0.632456;-0.632456;,
  -0.447214;-0.632456;-0.632456;,
  0.447214;-0.000000;-0.894427;,
  -0.447214;0.000000;-0.894427;,
  0.447214;0.632456;-0.632456;,
  -0.447214;0.632456;-0.632456;,
  0.447214;0.894427;-0.000000;,
  -0.447214;0.894427;-0.000000;,
  0.447214;0.632456;0.632456;,
  -0.447214;0.632456;0.632456;,
  0.447214;-0.000000;0.894427;,
  -0.447214;-0.000000;0.894427;;

  10;
  8;18,22,0,3,6,9,12,15;,
  4;2,5,38,40;,
  4;4,8,36,38;,
  4;7,11,34,36;,
  4;10,14,32,34;,
  4;13,17,30,32;,
  4;16,20,28,30;,
  4;19,24,21,28;,
  8;31,33,35,37,1,23,27,29;,
  4;25,39,40,26;;
 }
 MeshTextureCoords { 
 41;
 0.157150;0.855469;,
 0.157150;0.855469;,
 0.969897;0.205002;,
 0.198074;0.753931;,
 0.969781;0.224012;,
 0.969781;0.224012;,
 0.296875;0.711872;,
 0.969665;0.243022;,
 0.969665;0.243022;,
 0.395676;0.753931;,
 0.969549;0.262033;,
 0.969549;0.262033;,
 0.436600;0.855469;,
 0.969433;0.281043;,
 0.969433;0.281043;,
 0.395676;0.957007;,
 0.969318;0.300053;,
 0.969318;0.300053;,
 0.296875;0.999065;,
 0.969202;0.319064;,
 0.969202;0.319064;,
 0.354206;0.337446;,
 0.198074;0.957007;,
 0.198074;0.957007;,
 0.969086;0.338074;,
 0.970012;0.185991;,
 0.355133;0.185363;,
 0.296875;0.999065;,
 0.354322;0.318436;,
 0.395676;0.957007;,
 0.354438;0.299425;,
 0.436600;0.855469;,
 0.354554;0.280415;,
 0.395676;0.753931;,
 0.354670;0.261405;,
 0.296875;0.711872;,
 0.354785;0.242394;,
 0.198074;0.753931;,
 0.354901;0.223384;,
 0.969897;0.205002;,
 0.355017;0.204373;;
 }
}
}
Frame frm-cube1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.047550,10.400671,1.000000;;
 }
Mesh cube1 {
 36;
 -2.770000;-2.770000;13.844095;,
 -2.770000;-2.770000;13.844095;,
 -2.770000;-2.770000;0.638657;,
 -1.900220;3.281299;12.224984;,
 -1.900220;3.281299;12.224984;,
 -1.900220;2.770000;-2.770000;,
 -1.900220;2.770000;-2.770000;,
 2.770000;-2.770000;13.844095;,
 2.770000;-2.770000;13.844095;,
 2.770000;-2.770000;0.638657;,
 1.900220;3.281299;12.224984;,
 1.900220;3.281299;12.224984;,
 1.900220;2.770000;-2.770000;,
 1.900220;2.770000;-2.770000;,
 -2.770000;-1.193030;-2.770000;,
 -2.770000;-1.193030;-2.770000;,
 2.770000;-1.193030;-2.770000;,
 2.770000;-1.193030;-2.770000;,
 1.900220;3.281299;9.797870;,
 -1.900220;3.281299;9.797870;,
 1.900220;2.770000;7.348673;,
 -1.900220;2.770000;7.348673;,
 -1.900220;2.770000;7.348673;,
 1.900220;2.770000;7.348673;,
 -1.900220;3.281299;9.797870;,
 1.900220;3.281299;9.797870;,
 2.770000;-1.193030;-2.770000;,
 -2.770000;-1.193030;-2.770000;,
 1.900220;2.770000;-2.770000;,
 1.900220;3.281299;12.224984;,
 2.770000;-2.770000;0.638657;,
 2.770000;-2.770000;13.844095;,
 -1.900220;2.770000;-2.770000;,
 -1.900220;3.281299;12.224984;,
 -2.770000;-2.770000;0.638657;,
 -2.770000;-2.770000;13.844095;;

 9;
 7;4,19,21,6,15,2,1;,
 4;14,5,13,17;,
 7;16,12,20,18,11,8,9;,
 4;10,3,0,7;,
 4;35,34,30,31;,
 4;23,28,32,22;,
 4;26,30,34,27;,
 4;24,33,29,25;,
 4;22,24,25,23;;

 MeshMaterialList {
  3;
  9;
  0,
  1,
  0,
  1,
  2,
  2,
  2,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
}
 MeshNormals {
  36;
  -0.656747;-0.389434;0.645775;,
  -0.656747;-0.389434;0.645775;,
  -0.471609;-0.858180;-0.202761;,
  -0.498949;0.714386;0.490614;,
  -0.498949;0.714386;0.490614;,
  -0.543661;0.636143;-0.547499;,
  -0.543661;0.636143;-0.547499;,
  0.656747;-0.389434;0.645775;,
  0.656747;-0.389434;0.645775;,
  0.471609;-0.858180;-0.202761;,
  0.498949;0.714386;0.490614;,
  0.498949;0.714386;0.490614;,
  0.543661;0.636143;-0.547499;,
  0.543661;0.636143;-0.547499;,
  -0.524845;-0.399450;-0.751650;,
  -0.524845;-0.399450;-0.751650;,
  0.524845;-0.399450;-0.751650;,
  0.524845;-0.399450;-0.751650;,
  0.416750;0.905089;-0.084462;,
  -0.416750;0.905089;-0.084462;,
  0.416750;0.905089;-0.084462;,
  -0.416750;0.905089;-0.084462;,
  -0.416750;0.905089;-0.084462;,
  0.416750;0.905089;-0.084462;,
  -0.416750;0.905089;-0.084462;,
  0.416750;0.905089;-0.084462;,
  0.524845;-0.399450;-0.751650;,
  -0.524845;-0.399450;-0.751650;,
  0.543661;0.636143;-0.547499;,
  0.498949;0.714386;0.490614;,
  0.471609;-0.858180;-0.202761;,
  0.656747;-0.389434;0.645775;,
  -0.543661;0.636143;-0.547499;,
  -0.498949;0.714386;0.490614;,
  -0.471609;-0.858180;-0.202761;,
  -0.656747;-0.389434;0.645775;;

  9;
  7;4,19,21,6,15,2,1;,
  4;14,5,13,17;,
  7;16,12,20,18,11,8,9;,
  4;10,3,0,7;,
  4;35,34,30,31;,
  4;23,28,32,22;,
  4;26,30,34,27;,
  4;24,33,29,25;,
  4;22,24,25,23;;
 }
 MeshTextureCoords { 
 36;
 0.185332;0.337881;,
 0.984352;0.899837;,
 0.210872;0.899837;,
 0.203184;0.187127;,
 0.889515;0.559047;,
 0.041422;0.183543;,
 0.011218;0.587842;,
 0.299043;0.337881;,
 0.984352;0.899837;,
 0.210872;0.899837;,
 0.281191;0.187127;,
 0.889515;0.559047;,
 0.011218;0.587842;,
 0.138265;0.183543;,
 0.019258;0.341906;,
 0.011218;0.811027;,
 0.011218;0.811027;,
 0.160429;0.341906;,
 0.747352;0.559047;,
 0.747352;0.559047;,
 0.603897;0.587842;,
 0.603897;0.587842;,
 0.340820;0.165039;,
 0.340820;0.002930;,
 0.422852;0.165039;,
 0.422852;0.002930;,
 0.530273;0.002930;,
 0.530273;0.163086;,
 0.002930;0.000977;,
 0.508789;0.002930;,
 0.627930;0.002930;,
 0.997070;0.002930;,
 0.002930;0.165039;,
 0.508789;0.165039;,
 0.627930;0.163086;,
 0.997070;0.163086;;
 }
}
}
Frame frm-cyl10 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.467403,3.744408,1.000000;;
 }
Mesh cyl10 {
 10;
 0.196535;-0.604872;-6.511051;,
 0.196535;-0.604872;6.511050;,
 -0.514535;-0.373832;-6.511051;,
 -0.514535;-0.373831;6.511050;,
 -0.514535;0.373831;-6.511051;,
 -0.514535;0.373832;6.511050;,
 0.196535;0.604872;-6.511051;,
 0.196535;0.604872;6.511050;,
 0.636000;-0.000000;-6.511051;,
 0.636000;0.000000;6.511050;;

 6;
 4;0,8,9,1;,
 4;8,6,7,9;,
 5;2,4,6,8,0;,
 4;6,4,5,7;,
 4;2,0,1,3;,
 4;4,2,3,5;;

 MeshMaterialList {
  1;
  6;
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep92.ppm";
 }
 }
}
 MeshNormals {
  10;
  0.262866;-0.809017;-0.525731;,
  0.309017;-0.951056;0.000000;,
  -0.688191;-0.500000;-0.525731;,
  -0.809017;-0.587785;0.000000;,
  -0.688191;0.500000;-0.525731;,
  -0.809017;0.587785;-0.000000;,
  0.262866;0.809017;-0.525731;,
  0.309017;0.951057;-0.000000;,
  0.850651;0.000000;-0.525731;,
  1.000000;0.000000;-0.000000;;

  6;
  4;0,8,9,1;,
  4;8,6,7,9;,
  5;2,4,6,8,0;,
  4;6,4,5,7;,
  4;2,0,1,3;,
  4;4,2,3,5;;
 }
 MeshTextureCoords { 
 10;
 0.984886;0.521898;,
 0.432828;0.521898;,
 0.984886;0.510550;,
 0.432828;0.510549;,
 0.984886;0.473826;,
 0.432828;0.473826;,
 0.984886;0.462477;,
 0.432828;0.462477;,
 0.984886;0.492188;,
 0.432828;0.492188;;
 }
}
}
}
AnimationSet {
 Animation anim-cyl11 {
  {frm-cyl11}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -2.897358, 12.612031;;,
  100; 3; 0.000000, -2.897358, 12.612031;;;
  }
 }
 Animation anim-cube1 {
  {frm-cube1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -1.047550, 10.400671;;,
  100; 3; 0.000000, -1.047550, 10.400671;;;
  }
 }
 Animation anim-cyl10 {
  {frm-cyl10}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -1.467403, 3.744408;;,
  100; 3; 0.000000, -1.467403, 3.744408;;;
  }
 }
}