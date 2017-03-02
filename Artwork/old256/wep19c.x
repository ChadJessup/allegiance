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

Frame frm-wep19 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbas1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.058624,0.091771,1.000000;;
 }
Mesh wepbas1 {
 20;
 -0.120600;-0.058625;0.157450;,
 -0.120600;-0.058625;0.157450;,
 -0.120600;-0.058625;-0.157450;,
 -0.120600;0.058625;0.157450;,
 -0.120600;0.058625;-0.157450;,
 0.120600;-0.058625;0.157450;,
 0.120600;-0.058625;0.157450;,
 0.120600;-0.058625;-0.157450;,
 0.120600;0.058625;0.157450;,
 0.120600;0.058625;0.157450;,
 0.120600;0.058625;-0.157450;,
 0.120600;0.058625;-0.157450;,
 0.120600;0.058625;-0.157450;,
 0.120600;0.058625;0.157450;,
 0.120600;-0.058625;-0.157450;,
 0.120600;-0.058625;0.157450;,
 -0.120600;0.058625;-0.157450;,
 -0.120600;0.058625;0.157450;,
 -0.120600;-0.058625;-0.157450;,
 -0.120600;-0.058625;0.157450;;

 12;
 3;4,2,1;,
 3;3,4,1;,
 3;9,6,14;,
 3;10,9,14;,
 3;12,4,3;,
 3;13,12,3;,
 3;11,7,18;,
 3;16,11,18;,
 3;17,0,5;,
 3;8,17,5;,
 3;18,7,15;,
 3;19,18,15;;

 MeshMaterialList {
  4;
  12;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.200000;0.200000;0.200000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
}
 MeshNormals {
  20;
  -0.816497;-0.408248;0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.333333;-0.666667;-0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  0.333333;-0.666667;0.666667;,
  0.816497;-0.408248;-0.408248;,
  0.816497;0.408248;0.408248;,
  0.816497;0.408248;0.408248;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;0.666667;,
  -0.333333;-0.666667;-0.666667;,
  -0.816497;-0.408248;0.408248;;

  12;
  3;4,2,1;,
  3;3,4,1;,
  3;9,6,14;,
  3;10,9,14;,
  3;12,4,3;,
  3;13,12,3;,
  3;11,7,18;,
  3;16,11,18;,
  3;17,0,5;,
  3;8,17,5;,
  3;18,7,15;,
  3;19,18,15;;
 }
 MeshTextureCoords {
 20;
 0.601562;0.523438;,
 0.023438;0.984375;,
 0.453125;0.984375;,
 0.023438;0.820312;,
 0.453125;0.820312;,
 0.601562;0.820312;,
 0.453125;0.820312;,
 0.453125;0.820312;,
 0.453125;0.820312;,
 0.453125;0.984375;,
 0.023438;0.984375;,
 0.601562;0.820312;,
 0.453125;0.523438;,
 0.023438;0.523438;,
 0.023438;0.820312;,
 0.023438;0.820312;,
 0.601562;0.523438;,
 0.453125;0.523438;,
 0.453125;0.523438;,
 0.023438;0.523438;;
 }
}
Frame frm-wepbas2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.157684,1.000000;;
 }
Mesh wepbas2 {
 33;
 -0.044607;-0.028706;0.201615;,
 -0.044607;-0.028706;0.201615;,
 -0.091933;-0.058625;-0.002037;,
 -0.044607;0.025841;0.201615;,
 0.044607;-0.028706;0.201615;,
 0.044607;-0.028706;0.201615;,
 0.091933;-0.058625;-0.002037;,
 0.044607;0.025841;0.201615;,
 -0.044672;0.086403;0.201615;,
 -0.044672;0.086403;0.201615;,
 -0.044672;0.116207;0.012865;,
 0.044672;0.086403;0.201615;,
 0.044672;0.086403;0.201615;,
 0.044672;0.116207;0.012865;,
 -0.078257;0.058625;-0.208080;,
 0.078257;0.058625;-0.208080;,
 0.044672;0.119187;-0.176183;,
 0.044672;0.119187;-0.176183;,
 -0.044672;0.119187;-0.176183;,
 0.078257;0.058625;-0.208080;,
 -0.078257;0.058625;-0.208080;,
 0.044672;0.116207;0.012865;,
 0.044672;0.086403;0.201615;,
 -0.044672;0.116207;0.012865;,
 -0.044672;0.086403;0.201615;,
 0.091933;0.058625;-0.002037;,
 0.044607;0.025841;0.201615;,
 0.091933;-0.058625;-0.002037;,
 0.044607;-0.028706;0.201615;,
 -0.091933;0.058625;-0.002037;,
 -0.044607;0.025841;0.201615;,
 -0.091933;-0.058625;-0.002037;,
 -0.044607;-0.028706;0.201615;;

 24;
 3;29,2,1;,
 3;3,29,1;,
 3;29,3,9;,
 3;9,23,29;,
 3;18,20,29;,
 3;29,23,18;,
 3;15,16,25;,
 3;11,7,25;,
 3;21,11,25;,
 3;16,21,25;,
 3;7,5,6;,
 3;25,7,6;,
 3;22,24,26;,
 3;26,30,4;,
 3;30,0,4;,
 3;24,30,26;,
 3;31,27,28;,
 3;32,31,28;,
 3;18,17,14;,
 3;12,13,8;,
 3;13,10,8;,
 3;17,18,13;,
 3;18,10,13;,
 3;17,19,14;;

 MeshMaterialList {
  4;
  24;
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
  1,
  1,
  1,
  1,
  2,
  2,
  3,
  3,
  3,
  3,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.100000;0.100000;0.100000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
}
 MeshNormals {
  33;
  -0.719653;-0.365492;0.590352;,
  -0.719653;-0.365492;0.590352;,
  -0.429984;-0.873507;0.228255;,
  -0.491422;-0.000265;0.870921;,
  0.291053;-0.591271;0.752122;,
  0.291053;-0.591271;0.752122;,
  0.859967;-0.436753;0.264013;,
  0.621971;-0.000223;0.783041;,
  -0.404414;0.709474;0.577145;,
  -0.404414;0.709474;0.577145;,
  -0.399388;0.913526;0.077194;,
  0.602616;0.642293;0.473618;,
  0.602616;0.642293;0.473618;,
  0.255440;0.963403;0.081277;,
  -0.346885;0.580405;-0.736750;,
  0.536110;0.606532;-0.587115;,
  0.406824;0.807370;-0.427373;,
  0.406824;0.807370;-0.427373;,
  -0.369208;0.908091;-0.197626;,
  0.536110;0.606532;-0.587115;,
  -0.346885;0.580405;-0.736750;,
  0.255440;0.963403;0.081277;,
  0.602616;0.642293;0.473618;,
  -0.399388;0.913526;0.077194;,
  -0.404414;0.709474;0.577145;,
  0.914934;0.391238;0.099137;,
  0.621971;-0.000223;0.783041;,
  0.859967;-0.436753;0.264013;,
  0.291053;-0.591271;0.752122;,
  -0.935584;0.331645;0.121221;,
  -0.491422;-0.000265;0.870921;,
  -0.429984;-0.873507;0.228255;,
  -0.719653;-0.365492;0.590352;;

  24;
  3;29,2,1;,
  3;3,29,1;,
  3;29,3,9;,
  3;9,23,29;,
  3;18,20,29;,
  3;29,23,18;,
  3;15,16,25;,
  3;11,7,25;,
  3;21,11,25;,
  3;16,21,25;,
  3;7,5,6;,
  3;25,7,6;,
  3;22,24,26;,
  3;26,30,4;,
  3;30,0,4;,
  3;24,30,26;,
  3;31,27,28;,
  3;32,31,28;,
  3;18,17,14;,
  3;12,13,8;,
  3;13,10,8;,
  3;17,18,13;,
  3;18,10,13;,
  3;17,19,14;;
 }
 MeshTextureCoords {
 33;
 0.023438;0.070312;,
 0.187500;0.437500;,
 0.515625;0.500000;,
 0.195312;0.351562;,
 0.023438;0.210938;,
 0.187500;0.437500;,
 0.515625;0.500000;,
 0.195312;0.351562;,
 0.203125;0.210938;,
 0.195312;0.257812;,
 0.492188;0.210938;,
 0.195312;0.257812;,
 0.203125;0.070312;,
 0.492188;0.070312;,
 0.906250;0.265625;,
 0.843750;0.320312;,
 0.789062;0.210938;,
 0.789062;0.070312;,
 0.789062;0.210938;,
 0.906250;0.015625;,
 0.843750;0.320312;,
 0.492188;0.218750;,
 0.203125;0.210938;,
 0.492188;0.218750;,
 0.203125;0.070312;,
 0.523438;0.328125;,
 0.109375;0.210938;,
 0.179688;0.492188;,
 0.140625;0.296875;,
 0.523438;0.328125;,
 0.109375;0.070312;,
 0.007812;0.492188;,
 0.054688;0.296875;;
 }
}
}
Frame frm-lwepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.052077,0.000000,0.157455,1.000000;;
 }
Mesh lwepbar1 {
 16;
 0.013330;-0.023088;0.000002;,
 0.013330;-0.023088;-0.052118;,
 -0.013330;0.023088;0.000002;,
 -0.013330;0.023088;-0.052118;,
 -0.013330;-0.023088;-0.052118;,
 -0.013330;-0.023088;0.000002;,
 -0.026660;0.000000;-0.052118;,
 -0.026660;0.000000;0.000002;,
 -0.013330;0.023088;-0.052118;,
 -0.013330;0.023088;0.000002;,
 0.013330;0.023088;-0.052118;,
 0.013330;0.023088;0.000002;,
 0.026660;0.000000;-0.052118;,
 0.026660;0.000000;0.000002;,
 0.013330;-0.023088;-0.052118;,
 0.013330;-0.023088;0.000002;;

 12;
 3;4,5,7;,
 3;6,4,7;,
 3;6,7,2;,
 3;3,6,2;,
 3;14,15,5;,
 3;4,14,5;,
 3;10,11,13;,
 3;12,10,13;,
 3;8,9,11;,
 3;10,8,11;,
 3;12,13,0;,
 3;1,12,0;;

 MeshMaterialList {
  1;
  12;
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
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
}
 MeshNormals {
  16;
  0.654654;-0.755929;0.000000;,
  0.327327;-0.944911;0.000000;,
  -0.654654;0.755929;0.000000;,
  -0.327327;0.944911;0.000000;,
  -0.654653;-0.755929;0.000000;,
  -0.327327;-0.944911;0.000000;,
  -0.981980;0.188982;0.000000;,
  -0.981980;-0.188982;0.000000;,
  -0.327327;0.944911;0.000000;,
  -0.654654;0.755929;0.000000;,
  0.654654;0.755929;0.000000;,
  0.327327;0.944911;0.000000;,
  0.981981;-0.188982;0.000000;,
  0.981980;0.188982;0.000000;,
  0.327327;-0.944911;0.000000;,
  0.654654;-0.755929;0.000000;;

  12;
  3;4,5,7;,
  3;6,4,7;,
  3;6,7,2;,
  3;3,6,2;,
  3;14,15,5;,
  3;4,14,5;,
  3;10,11,13;,
  3;12,10,13;,
  3;8,9,11;,
  3;10,8,11;,
  3;12,13,0;,
  3;1,12,0;;
 }
 MeshTextureCoords {
 16;
 0.617188;0.781250;,
 0.617188;0.601562;,
 0.617188;0.781250;,
 0.617188;0.601562;,
 0.703125;0.601562;,
 0.703125;0.781250;,
 0.664062;0.601562;,
 0.664062;0.781250;,
 0.750000;0.601562;,
 0.750000;0.781250;,
 0.703125;0.601562;,
 0.703125;0.781250;,
 0.664062;0.601562;,
 0.664062;0.781250;,
 0.750000;0.601562;,
 0.750000;0.781250;;
 }
}
Frame frm-lwepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.052090,1.000000;;
 }
Mesh lwepbar2 {
 28;
 0.021500;-0.037239;-0.000003;,
 0.021500;-0.037239;-0.365502;,
 0.043000;0.000000;-0.000003;,
 0.043000;0.000000;-0.365502;,
 0.021500;0.037239;-0.000003;,
 0.021500;0.037239;-0.000003;,
 0.021500;0.037239;-0.365502;,
 0.021500;0.037239;-0.365502;,
 -0.021500;0.037239;-0.000003;,
 -0.021500;0.037239;-0.365502;,
 -0.043000;0.000000;-0.000003;,
 -0.043000;0.000000;-0.365502;,
 -0.021500;-0.037239;-0.000003;,
 -0.021500;-0.037239;-0.000003;,
 -0.021500;-0.037239;-0.365502;,
 -0.021500;-0.037239;-0.365502;,
 -0.021500;-0.037239;-0.365502;,
 -0.021500;-0.037239;-0.000003;,
 -0.043000;0.000000;-0.365502;,
 -0.043000;0.000000;-0.000003;,
 -0.021500;0.037239;-0.365502;,
 -0.021500;0.037239;-0.000003;,
 0.021500;0.037239;-0.365502;,
 0.021500;0.037239;-0.000003;,
 0.043000;0.000000;-0.365502;,
 0.043000;0.000000;-0.000003;,
 0.021500;-0.037239;-0.365502;,
 0.021500;-0.037239;-0.000003;;

 20;
 3;15,13,10;,
 3;11,15,10;,
 3;11,10,8;,
 3;9,11,8;,
 3;9,8,4;,
 3;6,9,4;,
 3;7,5,2;,
 3;3,7,2;,
 3;3,2,0;,
 3;1,3,0;,
 3;1,0,12;,
 3;14,1,12;,
 3;22,24,26;,
 3;20,22,26;,
 3;18,20,26;,
 3;16,18,26;,
 3;23,21,19;,
 3;25,23,19;,
 3;27,25,19;,
 3;17,27,19;;

 MeshMaterialList {
  1;
  20;
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
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
}
 MeshNormals {
  28;
  0.544705;-0.628971;0.554700;,
  0.196396;-0.566947;-0.800000;,
  0.783349;0.150756;0.603023;,
  0.918559;-0.176776;-0.353553;,
  0.272352;0.786214;0.554700;,
  0.272352;0.786214;0.554700;,
  0.544705;0.628971;-0.554700;,
  0.544705;0.628971;-0.554700;,
  -0.621059;0.717137;0.316228;,
  -0.272352;0.786214;-0.554700;,
  -0.541736;-0.104257;0.834058;,
  -0.783349;0.150756;-0.603023;,
  -0.306186;-0.883884;0.353553;,
  -0.306186;-0.883884;0.353553;,
  -0.612372;-0.707107;-0.353553;,
  -0.612372;-0.707107;-0.353553;,
  -0.612372;-0.707107;-0.353553;,
  -0.306186;-0.883884;0.353553;,
  -0.783349;0.150756;-0.603023;,
  -0.541736;-0.104257;0.834058;,
  -0.272352;0.786214;-0.554700;,
  -0.621059;0.717137;0.316228;,
  0.544705;0.628971;-0.554700;,
  0.272352;0.786214;0.554700;,
  0.918559;-0.176776;-0.353553;,
  0.783349;0.150756;0.603023;,
  0.196396;-0.566947;-0.800000;,
  0.544705;-0.628971;0.554700;;

  20;
  3;15,13,10;,
  3;11,15,10;,
  3;11,10,8;,
  3;9,11,8;,
  3;9,8,4;,
  3;6,9,4;,
  3;7,5,2;,
  3;3,7,2;,
  3;3,2,0;,
  3;1,3,0;,
  3;1,0,12;,
  3;14,1,12;,
  3;22,24,26;,
  3;20,22,26;,
  3;18,20,26;,
  3;16,18,26;,
  3;23,21,19;,
  3;25,23,19;,
  3;27,25,19;,
  3;17,27,19;;
 }
 MeshTextureCoords {
 28;
 0.898438;0.398438;,
 0.898438;0.976562;,
 0.835938;0.398438;,
 0.835938;0.976562;,
 0.968750;0.398438;,
 0.765625;0.398438;,
 0.968750;0.976562;,
 0.765625;0.976562;,
 0.898438;0.398438;,
 0.898438;0.976562;,
 0.835938;0.398438;,
 0.835938;0.976562;,
 0.968750;0.398438;,
 0.765625;0.398438;,
 0.968750;0.976562;,
 0.765625;0.976562;,
 0.601562;0.343750;,
 0.617188;0.843750;,
 0.554688;0.421875;,
 0.585938;0.898438;,
 0.601562;0.507812;,
 0.617188;0.960938;,
 0.703125;0.507812;,
 0.687500;0.960938;,
 0.750000;0.421875;,
 0.718750;0.898438;,
 0.703125;0.343750;,
 0.687500;0.843750;;
 }
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.051643,-0.000033,0.365427,1.000000;;
 }
}
}
}
Frame frm-bwepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.051869,0.000000,0.157455,1.000000;;
 }
Mesh bwepbar1 {
 16;
 -0.013538;0.023088;0.000003;,
 -0.013538;0.023088;-0.052118;,
 0.013122;-0.023088;0.000003;,
 0.013122;-0.023088;-0.052118;,
 0.013122;-0.023088;-0.052118;,
 0.013122;-0.023088;0.000003;,
 0.026452;0.000000;-0.052118;,
 0.026452;0.000000;0.000003;,
 0.013122;0.023088;-0.052118;,
 0.013122;0.023088;0.000003;,
 -0.013538;0.023088;-0.052118;,
 -0.013538;0.023088;0.000003;,
 -0.026868;0.000000;-0.052118;,
 -0.026868;0.000000;0.000003;,
 -0.013538;-0.023088;-0.052118;,
 -0.013538;-0.023088;0.000003;;

 12;
 3;7,2,3;,
 3;7,3,6;,
 3;9,7,6;,
 3;9,6,8;,
 3;11,9,8;,
 3;11,8,10;,
 3;13,0,1;,
 3;13,1,12;,
 3;15,13,12;,
 3;15,12,14;,
 3;5,15,14;,
 3;5,14,4;;

 MeshMaterialList {
  1;
  12;
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
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
}
 MeshNormals {
  16;
  -0.327327;0.944911;0.000000;,
  -0.654654;0.755929;0.000000;,
  0.327327;-0.944911;0.000000;,
  0.654653;-0.755929;0.000000;,
  0.654653;-0.755929;0.000000;,
  0.327327;-0.944911;0.000000;,
  0.981980;0.188982;0.000000;,
  0.981980;-0.188982;0.000000;,
  0.327327;0.944911;0.000000;,
  0.654654;0.755929;0.000000;,
  -0.654654;0.755929;0.000000;,
  -0.327327;0.944911;0.000000;,
  -0.981981;-0.188982;0.000000;,
  -0.981980;0.188982;0.000000;,
  -0.327327;-0.944911;0.000000;,
  -0.654654;-0.755929;0.000000;;

  12;
  3;7,2,3;,
  3;7,3,6;,
  3;9,7,6;,
  3;9,6,8;,
  3;11,9,8;,
  3;11,8,10;,
  3;13,0,1;,
  3;13,1,12;,
  3;15,13,12;,
  3;15,12,14;,
  3;5,15,14;,
  3;5,14,4;;
 }
 MeshTextureCoords {
 16;
 0.750000;0.781250;,
 0.750000;0.601562;,
 0.750000;0.781250;,
 0.750000;0.601562;,
 0.617188;0.601562;,
 0.617188;0.781250;,
 0.703125;0.601562;,
 0.703125;0.781250;,
 0.664062;0.601562;,
 0.664062;0.781250;,
 0.617188;0.601562;,
 0.617188;0.781250;,
 0.703125;0.601562;,
 0.703125;0.781250;,
 0.664062;0.601562;,
 0.664062;0.781250;;
 }
}
Frame frm-bwepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000208,0.000000,0.052090,1.000000;;
 }
Mesh bwepbar2 {
 28;
 -0.021500;-0.037239;-0.000003;,
 -0.021500;-0.037239;-0.000003;,
 -0.021500;-0.037239;-0.365502;,
 -0.021500;-0.037239;-0.365502;,
 -0.043000;0.000000;-0.000003;,
 -0.043000;0.000000;-0.365502;,
 -0.021500;0.037239;-0.000003;,
 -0.021500;0.037239;-0.365502;,
 0.021500;0.037239;-0.000003;,
 0.021500;0.037239;-0.000003;,
 0.021500;0.037239;-0.365502;,
 0.021500;0.037239;-0.365502;,
 0.043000;0.000000;-0.000003;,
 0.043000;0.000000;-0.365502;,
 0.021500;-0.037239;-0.000003;,
 0.021500;-0.037239;-0.365502;,
 0.021500;-0.037239;-0.365502;,
 0.021500;-0.037239;-0.000003;,
 0.043000;0.000000;-0.365502;,
 0.043000;0.000000;-0.000003;,
 0.021500;0.037239;-0.365502;,
 0.021500;0.037239;-0.000003;,
 -0.021500;0.037239;-0.365502;,
 -0.021500;0.037239;-0.000003;,
 -0.043000;0.000000;-0.365502;,
 -0.043000;0.000000;-0.000003;,
 -0.021500;-0.037239;-0.365502;,
 -0.021500;-0.037239;-0.000003;;

 20;
 3;12,14,15;,
 3;12,15,13;,
 3;9,12,13;,
 3;9,13,11;,
 3;14,0,2;,
 3;14,2,15;,
 3;4,6,7;,
 3;4,7,5;,
 3;6,8,10;,
 3;6,10,7;,
 3;1,4,5;,
 3;1,5,3;,
 3;26,24,22;,
 3;26,22,20;,
 3;26,20,18;,
 3;26,18,16;,
 3;19,21,23;,
 3;19,23,25;,
 3;19,25,27;,
 3;19,27,17;;

 MeshMaterialList {
  1;
  20;
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
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep19c.bmp";
 }
 }
}
 MeshNormals {
  28;
  -0.522233;-0.603023;0.603023;,
  -0.522233;-0.603023;0.603023;,
  -0.180579;-0.521286;-0.834058;,
  -0.180579;-0.521286;-0.834058;,
  -0.817057;0.157243;0.554700;,
  -0.931589;-0.179284;-0.316228;,
  -0.272352;0.786214;0.554700;,
  -0.544705;0.628971;-0.554700;,
  0.621059;0.717137;0.316228;,
  0.621059;0.717137;0.316228;,
  0.272352;0.786214;-0.554700;,
  0.272352;0.786214;-0.554700;,
  0.541736;-0.104257;0.834058;,
  0.783349;0.150756;-0.603023;,
  0.310529;-0.896422;0.316228;,
  0.621059;-0.717137;-0.316228;,
  0.621059;-0.717137;-0.316228;,
  0.310529;-0.896422;0.316228;,
  0.783349;0.150756;-0.603023;,
  0.541736;-0.104257;0.834058;,
  0.272352;0.786214;-0.554700;,
  0.621059;0.717137;0.316228;,
  -0.544705;0.628971;-0.554700;,
  -0.272352;0.786214;0.554700;,
  -0.931589;-0.179284;-0.316228;,
  -0.817057;0.157243;0.554700;,
  -0.180579;-0.521286;-0.834058;,
  -0.522233;-0.603023;0.603023;;

  20;
  3;12,14,15;,
  3;12,15,13;,
  3;9,12,13;,
  3;9,13,11;,
  3;14,0,2;,
  3;14,2,15;,
  3;4,6,7;,
  3;4,7,5;,
  3;6,8,10;,
  3;6,10,7;,
  3;1,4,5;,
  3;1,5,3;,
  3;26,24,22;,
  3;26,22,20;,
  3;26,20,18;,
  3;26,18,16;,
  3;19,21,23;,
  3;19,23,25;,
  3;19,25,27;,
  3;19,27,17;;
 }
 MeshTextureCoords {
 28;
 0.968750;0.398438;,
 0.765625;0.398438;,
 0.968750;0.976562;,
 0.765625;0.976562;,
 0.835938;0.398438;,
 0.835938;0.976562;,
 0.898438;0.398438;,
 0.898438;0.976562;,
 0.968750;0.398438;,
 0.765625;0.398438;,
 0.968750;0.976562;,
 0.765625;0.976562;,
 0.835938;0.398438;,
 0.835938;0.976562;,
 0.898438;0.398438;,
 0.898438;0.976562;,
 0.601562;0.343750;,
 0.617188;0.960938;,
 0.554688;0.421875;,
 0.585938;0.898438;,
 0.601562;0.507812;,
 0.617188;0.843750;,
 0.703125;0.507812;,
 0.687500;0.843750;,
 0.750000;0.421875;,
 0.718750;0.898438;,
 0.703125;0.343750;,
 0.687500;0.960938;;
 }
}
}
}
}
}
AnimationSet {
 Animation anim-wepbas1 {
  {frm-wepbas1}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.058624, -0.091771;;,
  15; 3; 0.000000, 0.058624, -0.091771;;;
  }
 }
 Animation anim-wepbas2 {
  {frm-wepbas2}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000000, 0.157684;;,
  15; 3; 0.000000, 0.000000, 0.157684;;;
  }
 }
 Animation anim-lwepbar1 {
  {frm-lwepbar1}
  AnimationKey {
  2;
  7;
  0; 3; 0.052077, 0.000000, -0.157455;;,
  1; 3; 0.052077, 0.000000, -0.157455;;,
  2; 3; 0.052077, 0.000000, -0.109047;;,
  3; 3; 0.052077, 0.000000, -0.125183;;,
  4; 3; 0.052077, 0.000000, -0.141319;;,
  5; 3; 0.052077, 0.000000, -0.157455;;,
  15; 3; 0.052077, 0.000000, -0.157455;;;
  }
 }
 Animation anim-lwepbar2 {
  {frm-lwepbar2}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000000, -0.052090;;,
  15; 3; 0.000000, 0.000000, -0.052090;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  0; 3; -0.051643, -0.000033, -0.365427;;,
  15; 3; -0.051643, -0.000033, -0.365427;;;
  }
 }
 Animation anim-bwepbar1 {
  {frm-bwepbar1}
  AnimationKey {
  2;
  7;
  0; 3; -0.051869, 0.000000, -0.157455;;,
  2; 3; -0.051869, 0.000000, -0.157455;;,
  3; 3; -0.051869, 0.000000, -0.146407;;,
  4; 3; -0.051869, 0.000000, -0.112730;;,
  6; 3; -0.051869, 0.000000, -0.145002;;,
  7; 3; -0.051869, 0.000000, -0.157455;;,
  15; 3; -0.051869, 0.000000, -0.157455;;;
  }
 }
 Animation anim-bwepbar2 {
  {frm-bwepbar2}
  AnimationKey {
  2;
  2;
  0; 3; -0.000208, 0.000000, -0.052090;;,
  15; 3; -0.000208, 0.000000, -0.052090;;;
  }
 }
  }
