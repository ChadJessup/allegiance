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

Frame frm-sphere7 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh sphere7 {
 26;
 0.269441;-3.448891;0.099633;,
 0.269441;-3.448891;0.099633;,
 0.269441;-3.448891;0.099633;,
 0.269441;3.515640;0.099633;,
 0.269441;3.515640;0.099633;,
 0.269441;3.515640;0.099633;,
 0.269441;-2.428959;2.561966;,
 0.269441;-2.428959;2.561966;,
 0.269441;0.033375;3.581898;,
 0.269441;0.033375;3.581898;,
 0.269441;2.495708;2.561966;,
 0.269441;2.495708;2.561966;,
 0.269442;2.495708;-2.362701;,
 0.269442;0.033375;-3.382633;,
 0.269442;-2.428959;-2.362701;,
 -2.192892;2.495708;0.099632;,
 -3.212825;0.033375;0.099632;,
 -2.192892;-2.428959;0.099632;,
 0.269441;2.495708;2.561966;,
 0.269441;0.033375;3.581898;,
 0.269441;-2.428959;2.561966;,
 2.731775;2.495708;0.099633;,
 3.751707;0.033375;0.099633;,
 2.731775;-2.428959;0.099633;,
 0.269441;3.515640;0.099633;,
 0.269441;-3.448891;0.099633;;

 16;
 3;2,23,7;,
 4;22,9,6,23;,
 4;21,11,8,22;,
 3;5,10,21;,
 3;1,20,17;,
 4;19,16,17,20;,
 4;18,15,16,19;,
 3;4,15,18;,
 3;0,17,14;,
 4;16,13,14,17;,
 4;15,12,13,16;,
 3;3,12,15;,
 3;25,14,23;,
 4;13,22,23,14;,
 4;12,21,22,13;,
 3;24,21,12;;

 MeshMaterialList {
  1;
  16;
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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "bgrnd51.ppm";
 }
 }
}
 MeshNormals {
  26;
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.000000;-0.741210;0.671273;,
  -0.000000;-0.741210;0.671273;,
  -0.000000;0.000000;1.000000;,
  -0.000000;0.000000;1.000000;,
  -0.000000;0.741210;0.671273;,
  -0.000000;0.741210;0.671273;,
  0.000000;0.741210;-0.671273;,
  0.000000;0.000000;-1.000000;,
  0.000000;-0.741210;-0.671273;,
  -0.671273;0.741210;-0.000000;,
  -1.000000;0.000000;-0.000000;,
  -0.671273;-0.741210;-0.000000;,
  -0.000000;0.741210;0.671273;,
  -0.000000;0.000000;1.000000;,
  -0.000000;-0.741210;0.671273;,
  0.671273;0.741210;0.000000;,
  1.000000;0.000000;0.000000;,
  0.671273;-0.741210;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  16;
  3;2,23,7;,
  4;22,9,6,23;,
  4;21,11,8,22;,
  3;5,10,21;,
  3;1,20,17;,
  4;19,16,17,20;,
  4;18,15,16,19;,
  3;4,15,18;,
  3;0,17,14;,
  4;16,13,14,17;,
  4;15,12,13,16;,
  3;3,12,15;,
  3;25,14,23;,
  4;13,22,23,14;,
  4;12,21,22,13;,
  3;24,21,12;;
 }
 MeshTextureCoords { 
 26;
 0.343750;0.984375;,
 0.132813;0.988281;,
 0.843750;0.972656;,
 0.378906;0.015625;,
 0.132813;0.019531;,
 0.871094;0.027344;,
 0.980469;0.738281;,
 0.980469;0.738281;,
 0.980469;0.496094;,
 0.980469;0.496094;,
 0.980469;0.253906;,
 0.980469;0.253906;,
 0.500000;0.253906;,
 0.500000;0.496094;,
 0.500000;0.738281;,
 0.259766;0.253906;,
 0.259766;0.496094;,
 0.259766;0.738281;,
 0.019531;0.253906;,
 0.019531;0.496094;,
 0.019531;0.738281;,
 0.740234;0.253906;,
 0.740234;0.496094;,
 0.740234;0.738281;,
 0.625000;0.027344;,
 0.605469;0.988281;;
 }
}
}
