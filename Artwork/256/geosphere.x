xof 0302txt 0064
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

Mesh GeoSphere0 {
 261;
 0.000000;90.730423;0.000000;,
 24.793589;87.277077;0.000000;,
 24.793589;87.277077;0.000000;,
 24.793589;87.277077;0.000000;,
 47.699806;77.179909;0.000000;,
 47.699806;77.179909;0.000000;,
 47.699806;77.179909;0.000000;,
 66.974960;61.207554;0.000000;,
 66.974960;61.207554;0.000000;,
 66.974960;61.207554;0.000000;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 81.151756;40.575878;0.000000;,
 81.151756;40.575878;0.000000;,
 81.151756;40.575878;0.000000;,
 81.151756;40.575878;0.000000;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 62.439857;47.699806;45.365211;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -31.237600;67.176636;52.378639;,
 -31.237600;67.176636;52.378639;,
 -31.237600;67.176636;52.378639;,
 -54.183884;61.207554;39.366890;,
 -65.653152;40.575878;47.699799;,
 -65.653152;40.575878;47.699799;,
 -65.653152;40.575878;47.699799;,
 -65.653152;40.575878;47.699799;,
 -20.058434;87.277077;-14.573308;,
 -20.058434;87.277077;-14.573308;,
 -20.058434;87.277077;-14.573308;,
 -20.058434;87.277077;-14.573308;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -59.468002;67.176636;13.522821;,
 -59.468002;67.176636;13.522821;,
 -59.468002;67.176636;13.522821;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 40.162102;67.176628;-45.894608;,
 87.033394;21.090687;-14.573302;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 86.679504;-23.147491;13.522831;,
 86.679504;-23.147491;13.522831;,
 86.679504;-23.147491;13.522831;,
 86.679504;-23.147491;13.522831;,
 77.179909;-47.699802;0.000007;,
 77.179909;-47.699802;0.000007;,
 77.179909;-47.699802;0.000007;,
 77.179909;-47.699802;0.000007;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 78.073715;23.147490;-40.008728;,
 78.073715;23.147490;-40.008728;,
 78.073715;23.147490;-40.008728;,
 62.176674;23.147490;-61.889122;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 38.589958;-77.179909;-28.037237;,
 40.575882;-81.151756;0.000004;,
 40.575882;-81.151756;0.000004;,
 40.575882;-81.151756;0.000004;,
 40.575882;-81.151756;0.000004;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.468002;-67.176628;-13.522822;,
 59.467995;-67.176628;13.522829;,
 40.575882;-81.151756;0.000004;,
 5.515657;-67.176636;-60.736214;,
 31.237608;-67.176636;-52.378647;,
 54.183891;-61.207554;-39.366890;,
 12.538641;-81.151756;-38.589951;,
 38.589958;-77.179909;-28.037237;,
 20.058437;-87.277077;-14.573302;,
 -56.059143;-67.176636;-24.014221;,
 -40.162102;-67.176636;-45.894615;,
 -20.696394;-61.207554;-63.696976;,
 -32.826572;-81.151756;-23.849907;,
 -14.740047;-77.179909;-45.365219;,
 -7.661638;-87.277077;-23.580105;,
 -40.162109;-67.176636;45.894608;,
 -56.059143;-67.176636;24.014212;,
 -66.974960;-61.207554;-0.000006;,
 -32.826576;-81.151756;23.849901;,
 -47.699806;-77.179909;-0.000004;,
 -24.793589;-87.277077;-0.000002;,
 54.183884;-61.207554;39.366890;,
 31.237597;-67.176636;52.378647;,
 5.515646;-67.176636;60.736214;,
 -20.696405;-61.207554;63.696976;,
 38.589958;-77.179909;28.037245;,
 12.538637;-81.151756;38.589958;,
 -14.740054;-77.179909;45.365211;,
 20.058435;-87.277077;14.573305;,
 -7.661642;-87.277077;23.580105;,
 0.000000;-90.730423;0.000000;,
 62.176674;23.147490;-61.889122;,
 78.073715;23.147490;-40.008728;,
 73.402458;0.000000;-53.329994;,
 -39.646408;23.147491;-78.258331;,
 -13.924457;23.147491;-86.615898;,
 -28.037231;0.000000;-86.289764;,
 -86.679504;23.147491;13.522821;,
 -86.679504;23.147491;-13.522835;,
 -90.730415;0.000000;-0.000008;,
 -13.924471;23.147490;86.615891;,
 -39.646423;23.147491;78.258324;,
 -28.037249;0.000000;86.289764;,
 78.073715;23.147491;40.008736;,
 62.176674;23.147491;61.889137;,
 73.402458;0.000000;53.330009;,
 46.522247;-45.884274;-62.946991;,
 23.849915;-47.699806;-73.402451;,
 -0.637956;-45.884274;-78.270271;,
 61.845528;-21.090685;-62.946983;,
 39.646423;-23.147490;-78.258316;,
 13.924477;-23.147491;-86.615891;,
 -13.034750;-21.090687;-87.277077;,
 53.330009;0.000000;-73.402443;,
 28.037256;0.000000;-86.289757;,
 0.000011;0.000000;-90.730423;,
 40.754845;21.090685;-78.270264;,
 13.034773;21.090687;-87.277077;,
 -25.077263;-40.575878;-77.179909;,
 -45.489983;-45.884274;-63.696976;,
 -62.439857;-47.699806;-45.365219;,
 -74.636597;-45.884274;-23.580111;,
 -40.754829;-21.090687;-78.270287;,
 -62.176674;-23.147491;-61.889145;,
 -78.073708;-23.147491;-40.008751;,
 -87.033394;-21.090687;-14.573315;,
 -53.330002;0.000000;-73.402466;,
 -73.402443;0.000000;-53.330017;,
 -86.289757;0.000000;-28.037252;,
 -61.845520;21.090687;-62.947006;,
 -78.977463;21.090687;-39.366905;,
 -81.151756;-40.575878;-0.000007;,
 -74.636604;-45.884274;23.580099;,
 -62.439865;-47.699806;45.365211;,
 -45.489998;-45.884274;63.696968;,
 -87.033394;-21.090687;14.573299;,
 -78.073715;-23.147491;40.008728;,
 -62.176682;-23.147491;61.889130;,
 -40.754845;-21.090687;78.270279;,
 -86.289764;0.000000;28.037237;,
 -73.402458;0.000000;53.330002;,
 -53.330009;0.000000;73.402458;,
 -78.977470;21.090687;39.366890;,
 -61.845528;21.090687;62.946991;,
 -25.077276;-40.575878;77.179909;,
 -0.637969;-45.884274;78.270279;,
 23.849903;-47.699806;73.402458;,
 46.522240;-45.884274;62.946999;,
 -13.034764;-21.090685;87.277069;,
 13.924467;-23.147491;86.615891;,
 39.646416;-23.147491;78.258324;,
 61.845520;-21.090687;62.946999;,
 -0.000004;0.000000;90.730423;,
 28.037241;0.000000;86.289764;,
 53.330002;0.000000;73.402458;,
 13.034756;21.090685;87.277069;,
 40.754829;21.090687;78.270279;,
 65.653152;-40.575878;47.699806;,
 74.242310;-45.884270;24.793591;,
 77.179909;-47.699802;0.000007;,
 74.242317;-45.884270;-24.793577;,
 65.653160;-40.575878;-47.699799;,
 78.977470;-21.090687;39.366890;,
 86.679504;-23.147491;13.522831;,
 86.679512;-23.147491;-13.522822;,
 78.977478;-21.090687;-39.366890;,
 86.289764;0.000000;28.037245;,
 90.730423;0.000000;0.000004;,
 86.289764;0.000000;-28.037237;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;-14.573302;,
 74.636597;45.884270;-23.580099;,
 62.439857;47.699802;-45.365204;,
 45.489990;45.884270;-63.696960;,
 56.059143;67.176628;-24.014212;,
 40.162102;67.176628;-45.894608;,
 32.826576;81.151756;-23.849901;,
 25.077282;40.575878;-77.179901;,
 0.637976;45.884274;-78.270279;,
 -23.849895;47.699806;-73.402458;,
 -46.522232;45.884274;-62.947006;,
 20.696409;61.207554;-63.696968;,
 -5.515640;67.176636;-60.736214;,
 -31.237591;67.176636;-52.378654;,
 14.740057;77.179909;-45.365211;,
 -12.538630;81.151756;-38.589958;,
 7.661644;87.277077;-23.580103;,
 -65.653145;40.575878;-47.699814;,
 -74.242310;45.884274;-24.793594;,
 -77.179901;47.699806;-0.000007;,
 -74.242310;45.884274;24.793581;,
 -54.183876;61.207554;-39.366905;,
 -59.467995;67.176636;-13.522835;,
 -59.468002;67.176636;13.522821;,
 -38.589951;77.179909;-28.037249;,
 -40.575882;81.151756;-0.000004;,
 -20.058434;87.277077;-14.573308;,
 -65.653152;40.575878;47.699799;,
 -46.522247;45.884274;62.946991;,
 -23.849907;47.699806;73.402458;,
 0.637963;45.884274;78.270279;,
 -54.183884;61.207554;39.366890;,
 -31.237600;67.176636;52.378639;,
 -5.515652;67.176636;60.736214;,
 -38.589958;77.179909;28.037241;,
 -12.538638;81.151756;38.589951;,
 -20.058435;87.277077;14.573305;,
 25.077269;40.575878;77.179909;,
 45.489983;45.884274;63.696976;,
 62.439857;47.699806;45.365211;,
 74.636597;45.884274;23.580105;,
 81.151756;40.575878;0.000000;,
 20.696398;61.207554;63.696976;,
 40.162102;67.176636;45.894608;,
 56.059135;67.176636;24.014215;,
 66.974960;61.207554;0.000000;,
 14.740049;77.179909;45.365211;,
 32.826569;81.151756;23.849903;,
 47.699806;77.179909;0.000000;,
 7.661639;87.277077;23.580105;,
 24.793589;87.277077;0.000000;,
 0.000000;90.730423;0.000000;;

 320;
 3;258,3,0;,
 3;256,6,2;,
 3;258,256,1;,
 3;255,256,258;,
 3;14,9,5;,
 3;256,13,4;,
 3;252,12,256;,
 3;255,252,256;,
 3;251,252,255;,
 3;23,18,8;,
 3;11,22,7;,
 3;24,21,10;,
 3;252,248,253;,
 3;247,248,252;,
 3;251,247,252;,
 3;246,247,251;,
 3;245,258,260;,
 3;244,255,258;,
 3;245,244,258;,
 3;243,244,245;,
 3;29,251,255;,
 3;244,28,255;,
 3;32,27,244;,
 3;243,31,244;,
 3;33,30,243;,
 3;239,246,251;,
 3;26,239,251;,
 3;238,239,25;,
 3;241,238,242;,
 3;237,238,241;,
 3;240,237,241;,
 3;37,237,240;,
 3;41,245,260;,
 3;46,243,245;,
 3;40,45,245;,
 3;233,44,39;,
 3;49,240,243;,
 3;43,48,243;,
 3;231,47,42;,
 3;233,231,234;,
 3;230,231,233;,
 3;54,36,240;,
 3;232,53,240;,
 3;228,52,232;,
 3;231,228,232;,
 3;227,228,231;,
 3;230,227,231;,
 3;226,227,230;,
 3;225,38,260;,
 3;224,233,235;,
 3;225,224,235;,
 3;223,224,225;,
 3;222,230,233;,
 3;224,222,233;,
 3;221,222,224;,
 3;223,221,224;,
 3;220,221,223;,
 3;219,226,230;,
 3;222,219,230;,
 3;218,219,222;,
 3;221,218,222;,
 3;217,218,221;,
 3;220,217,221;,
 3;216,217,220;,
 3;259,225,260;,
 3;215,223,225;,
 3;259,215,225;,
 3;257,215,259;,
 3;55,220,223;,
 3;215,214,223;,
 3;213,214,215;,
 3;257,213,215;,
 3;254,213,257;,
 3;212,216,220;,
 3;214,212,220;,
 3;211,212,214;,
 3;213,211,214;,
 3;210,211,213;,
 3;254,210,213;,
 3;17,210,254;,
 3;61,56,16;,
 3;66,207,209;,
 3;60,65,209;,
 3;205,64,59;,
 3;203,204,207;,
 3;63,203,207;,
 3;70,203,62;,
 3;205,69,206;,
 3;201,68,205;,
 3;199,200,204;,
 3;203,199,204;,
 3;74,199,203;,
 3;67,73,203;,
 3;197,72,202;,
 3;201,197,202;,
 3;196,197,201;,
 3;194,195,246;,
 3;192,193,195;,
 3;194,192,195;,
 3;191,192,194;,
 3;189,190,193;,
 3;192,189,193;,
 3;188,189,192;,
 3;191,188,192;,
 3;187,188,191;,
 3;186,196,190;,
 3;189,186,190;,
 3;185,186,189;,
 3;188,185,189;,
 3;184,185,188;,
 3;187,184,188;,
 3;183,184,187;,
 3;79,182,35;,
 3;179,180,182;,
 3;78,179,182;,
 3;178,179,77;,
 3;176,177,180;,
 3;179,176,180;,
 3;175,176,179;,
 3;178,175,179;,
 3;174,175,178;,
 3;173,183,177;,
 3;176,173,177;,
 3;172,173,176;,
 3;175,172,176;,
 3;171,172,175;,
 3;174,171,175;,
 3;170,171,174;,
 3;168,169,226;,
 3;166,167,169;,
 3;168,166,169;,
 3;165,166,168;,
 3;163,164,167;,
 3;166,163,167;,
 3;162,163,166;,
 3;165,162,166;,
 3;161,162,165;,
 3;160,170,164;,
 3;163,160,164;,
 3;159,160,163;,
 3;162,159,163;,
 3;158,159,162;,
 3;161,158,162;,
 3;157,158,161;,
 3;155,156,216;,
 3;153,154,156;,
 3;155,153,156;,
 3;152,153,155;,
 3;150,151,154;,
 3;153,150,154;,
 3;149,150,153;,
 3;152,149,153;,
 3;148,149,152;,
 3;147,157,151;,
 3;150,147,151;,
 3;146,147,150;,
 3;149,146,150;,
 3;145,146,149;,
 3;148,145,149;,
 3;200,145,148;,
 3;201,190,196;,
 3;144,193,190;,
 3;201,144,190;,
 3;205,144,201;,
 3;143,195,193;,
 3;144,143,193;,
 3;142,143,144;,
 3;205,142,144;,
 3;58,142,205;,
 3;247,246,195;,
 3;143,247,195;,
 3;248,247,143;,
 3;142,248,143;,
 3;20,248,142;,
 3;57,19,142;,
 3;15,249,208;,
 3;187,177,183;,
 3;141,180,177;,
 3;187,141,177;,
 3;191,141,187;,
 3;140,182,180;,
 3;141,140,180;,
 3;139,140,141;,
 3;191,139,141;,
 3;194,139,191;,
 3;237,34,182;,
 3;140,237,182;,
 3;238,237,140;,
 3;139,238,140;,
 3;239,238,139;,
 3;194,239,139;,
 3;246,239,194;,
 3;174,164,170;,
 3;138,167,164;,
 3;174,138,164;,
 3;178,138,174;,
 3;137,169,167;,
 3;138,137,167;,
 3;136,137,138;,
 3;178,136,138;,
 3;76,136,178;,
 3;227,226,169;,
 3;137,227,169;,
 3;228,227,137;,
 3;136,228,137;,
 3;51,228,136;,
 3;75,50,136;,
 3;236,229,181;,
 3;161,151,157;,
 3;135,154,151;,
 3;161,135,151;,
 3;165,135,161;,
 3;134,156,154;,
 3;135,134,154;,
 3;133,134,135;,
 3;165,133,135;,
 3;168,133,165;,
 3;217,216,156;,
 3;134,217,156;,
 3;218,217,134;,
 3;133,218,134;,
 3;219,218,133;,
 3;168,219,133;,
 3;226,219,168;,
 3;148,204,200;,
 3;132,207,204;,
 3;148,132,204;,
 3;152,132,148;,
 3;82,209,207;,
 3;132,81,207;,
 3;83,80,132;,
 3;152,130,132;,
 3;155,130,152;,
 3;210,250,209;,
 3;131,210,209;,
 3;211,210,131;,
 3;130,211,131;,
 3;212,211,130;,
 3;155,212,130;,
 3;216,212,155;,
 3;88,128,129;,
 3;125,126,128;,
 3;87,125,128;,
 3;124,125,86;,
 3;122,123,126;,
 3;125,122,126;,
 3;121,122,125;,
 3;124,121,125;,
 3;120,121,124;,
 3;184,183,123;,
 3;122,184,123;,
 3;185,184,122;,
 3;121,185,122;,
 3;186,185,121;,
 3;120,186,121;,
 3;196,186,120;,
 3;128,119,129;,
 3;117,118,119;,
 3;128,117,119;,
 3;126,117,128;,
 3;115,116,118;,
 3;117,115,118;,
 3;114,115,117;,
 3;126,114,117;,
 3;123,114,126;,
 3;171,170,116;,
 3;115,171,116;,
 3;172,171,115;,
 3;114,172,115;,
 3;173,172,114;,
 3;123,173,114;,
 3;183,173,123;,
 3;119,113,129;,
 3;111,112,113;,
 3;119,111,113;,
 3;118,111,119;,
 3;109,110,112;,
 3;111,109,112;,
 3;108,109,111;,
 3;118,108,111;,
 3;116,108,118;,
 3;158,157,110;,
 3;109,158,110;,
 3;159,158,109;,
 3;108,159,109;,
 3;160,159,108;,
 3;116,160,108;,
 3;170,160,116;,
 3;113,107,129;,
 3;105,89,107;,
 3;113,105,107;,
 3;112,105,113;,
 3;103,104,106;,
 3;105,103,106;,
 3;102,103,105;,
 3;112,102,105;,
 3;110,102,112;,
 3;145,200,104;,
 3;103,145,104;,
 3;146,145,103;,
 3;102,146,103;,
 3;147,146,102;,
 3;110,147,102;,
 3;157,147,110;,
 3;107,85,129;,
 3;93,124,84;,
 3;107,92,127;,
 3;106,91,107;,
 3;98,120,124;,
 3;90,97,124;,
 3;99,96,101;,
 3;106,99,101;,
 3;104,99,106;,
 3;197,196,120;,
 3;95,197,120;,
 3;71,197,94;,
 3;99,198,100;,
 3;199,198,99;,
 3;104,199,99;,
 3;200,199,104;;

 MeshMaterialList {
  1;
  320;
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
 0.0; 0.0; 0.0;;

 }
}
 MeshNormals {
  261;
  0.000000;1.000000;0.000000;,
  0.260485;0.965478;0.000000;,
  0.260485;0.965478;0.000000;,
  0.260485;0.965478;0.000000;,
  0.522014;0.852937;0.000000;,
  0.522014;0.852937;0.000000;,
  0.522014;0.852937;0.000000;,
  0.743938;0.668248;0.000000;,
  0.743938;0.668248;0.000000;,
  0.743938;0.668248;0.000000;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.894427;0.447214;0.000000;,
  0.894427;0.447214;0.000000;,
  0.894427;0.447214;0.000000;,
  0.894427;0.447214;0.000000;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.688191;0.525731;0.500000;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.345912;0.735618;0.582418;,
  -0.345912;0.735618;0.582418;,
  -0.345912;0.735618;0.582418;,
  -0.601859;0.668248;0.437276;,
  -0.723607;0.447214;0.525731;,
  -0.723607;0.447214;0.525731;,
  -0.723607;0.447214;0.525731;,
  -0.723607;0.447214;0.525731;,
  -0.210737;0.965478;-0.153109;,
  -0.210737;0.965478;-0.153109;,
  -0.210737;0.965478;-0.153109;,
  -0.210737;0.965478;-0.153109;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.660806;0.735618;0.149005;,
  -0.660806;0.735618;0.149005;,
  -0.660806;0.735618;0.149005;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  0.447020;0.735618;-0.508959;,
  0.957665;0.242173;-0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;0.149005;,
  0.850651;-0.525731;0.000000;,
  0.850651;-0.525731;0.000000;,
  0.850651;-0.525731;0.000000;,
  0.850651;-0.525731;0.000000;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  0.858963;0.262064;-0.439893;,
  0.858963;0.262064;-0.439893;,
  0.858963;0.262064;-0.439893;,
  0.683797;0.262064;-0.680988;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.422318;-0.852937;-0.306832;,
  0.452096;-0.891970;0.000000;,
  0.452096;-0.891970;0.000000;,
  0.452096;-0.891970;0.000000;,
  0.452096;-0.891970;0.000000;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;-0.149005;,
  0.660806;-0.735618;0.149005;,
  0.452096;-0.891970;0.000000;,
  0.062488;-0.735618;-0.674508;,
  0.345912;-0.735618;-0.582418;,
  0.601859;-0.668248;-0.437276;,
  0.139705;-0.891970;-0.429968;,
  0.422318;-0.852937;-0.306832;,
  0.210737;-0.965478;-0.153109;,
  -0.622186;-0.735618;-0.267864;,
  -0.447020;-0.735618;-0.508959;,
  -0.229890;-0.668248;-0.707528;,
  -0.365753;-0.891970;-0.265735;,
  -0.161311;-0.852937;-0.496465;,
  -0.080494;-0.965478;-0.247736;,
  -0.447020;-0.735618;0.508959;,
  -0.622186;-0.735618;0.267864;,
  -0.743938;-0.668248;0.000000;,
  -0.365753;-0.891970;0.265735;,
  -0.522014;-0.852937;0.000000;,
  -0.260485;-0.965478;0.000000;,
  0.601859;-0.668248;0.437276;,
  0.345912;-0.735618;0.582418;,
  0.062488;-0.735618;0.674508;,
  -0.229890;-0.668248;0.707528;,
  0.422318;-0.852937;0.306832;,
  0.139705;-0.891970;0.429968;,
  -0.161311;-0.852937;0.496465;,
  0.210737;-0.965478;0.153109;,
  -0.080494;-0.965478;0.247736;,
  0.000000;-1.000000;0.000000;,
  0.683797;0.262064;-0.680988;,
  0.858963;0.262064;-0.439893;,
  0.809005;0.005466;-0.587777;,
  -0.436353;0.262064;-0.860766;,
  -0.152929;0.262064;-0.952856;,
  -0.309012;0.005466;-0.951042;,
  -0.953478;0.262064;0.149005;,
  -0.953478;0.262064;-0.149005;,
  -0.999985;0.005466;0.000000;,
  -0.152929;0.262064;0.952856;,
  -0.436353;0.262064;0.860766;,
  -0.309012;0.005465;0.951042;,
  0.858963;0.262064;0.439893;,
  0.683797;0.262064;0.680988;,
  0.809005;0.005465;0.587777;,
  0.520030;-0.504458;-0.689268;,
  0.262866;-0.525731;-0.809017;,
  -0.015571;-0.504458;-0.863296;,
  0.683274;-0.242172;-0.688831;,
  0.436353;-0.262064;-0.860766;,
  0.152929;-0.262064;-0.952856;,
  -0.147895;-0.242173;-0.958895;,
  0.587785;0.000000;-0.809017;,
  0.309013;-0.005466;-0.951042;,
  0.000000;0.000000;-1.000000;,
  0.443974;0.242173;-0.862693;,
  0.147896;0.242172;-0.958895;,
  -0.276393;-0.447214;-0.850651;,
  -0.494835;-0.504459;-0.707573;,
  -0.688191;-0.525731;-0.500000;,
  -0.825855;-0.504458;-0.251964;,
  -0.443974;-0.242173;-0.862693;,
  -0.683797;-0.262064;-0.680988;,
  -0.858963;-0.262064;-0.439893;,
  -0.957666;-0.242172;-0.155658;,
  -0.587785;0.000000;-0.809017;,
  -0.809005;-0.005465;-0.587776;,
  -0.951057;0.000000;-0.309017;,
  -0.683274;0.242172;-0.688831;,
  -0.866261;0.242172;-0.436972;,
  -0.894427;-0.447214;0.000000;,
  -0.825855;-0.504458;0.251964;,
  -0.688191;-0.525731;0.500000;,
  -0.494835;-0.504458;0.707573;,
  -0.957666;-0.242172;0.155658;,
  -0.858963;-0.262064;0.439893;,
  -0.683797;-0.262064;0.680988;,
  -0.443974;-0.242173;0.862693;,
  -0.951057;0.000000;0.309017;,
  -0.809005;-0.005466;0.587776;,
  -0.587785;0.000000;0.809017;,
  -0.866261;0.242173;0.436972;,
  -0.683274;0.242173;0.688831;,
  -0.276393;-0.447214;0.850651;,
  -0.015571;-0.504458;0.863296;,
  0.262866;-0.525731;0.809017;,
  0.520030;-0.504458;0.689268;,
  -0.147896;-0.242172;0.958895;,
  0.152929;-0.262064;0.952856;,
  0.436353;-0.262064;0.860766;,
  0.683274;-0.242173;0.688831;,
  0.000000;0.000000;1.000000;,
  0.309012;-0.005465;0.951042;,
  0.587785;0.000000;0.809017;,
  0.147896;0.242172;0.958895;,
  0.443974;0.242173;0.862693;,
  0.723607;-0.447214;0.525731;,
  0.816231;-0.504459;0.281582;,
  0.850651;-0.525731;0.000000;,
  0.816231;-0.504459;-0.281582;,
  0.723607;-0.447214;-0.525731;,
  0.866261;-0.242173;0.436972;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;-0.149005;,
  0.866261;-0.242172;-0.436972;,
  0.951057;0.000000;0.309017;,
  0.999985;-0.005465;0.000000;,
  0.951057;0.000000;-0.309017;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;-0.155658;,
  0.825855;0.504459;-0.251964;,
  0.688191;0.525731;-0.500000;,
  0.494835;0.504458;-0.707573;,
  0.622186;0.735618;-0.267864;,
  0.447020;0.735618;-0.508959;,
  0.365753;0.891970;-0.265735;,
  0.276394;0.447214;-0.850651;,
  0.015572;0.504459;-0.863296;,
  -0.262865;0.525731;-0.809017;,
  -0.520030;0.504458;-0.689268;,
  0.229890;0.668248;-0.707527;,
  -0.062488;0.735618;-0.674508;,
  -0.345912;0.735618;-0.582418;,
  0.161311;0.852937;-0.496465;,
  -0.139705;0.891970;-0.429968;,
  0.080494;0.965478;-0.247736;,
  -0.723607;0.447214;-0.525731;,
  -0.816231;0.504458;-0.281582;,
  -0.850651;0.525731;0.000000;,
  -0.816231;0.504458;0.281582;,
  -0.601859;0.668248;-0.437276;,
  -0.660806;0.735618;-0.149005;,
  -0.660806;0.735618;0.149005;,
  -0.422318;0.852937;-0.306832;,
  -0.452095;0.891970;0.000000;,
  -0.210737;0.965478;-0.153109;,
  -0.723607;0.447214;0.525731;,
  -0.520030;0.504459;0.689268;,
  -0.262866;0.525731;0.809017;,
  0.015571;0.504458;0.863296;,
  -0.601859;0.668248;0.437276;,
  -0.345912;0.735618;0.582418;,
  -0.062488;0.735618;0.674508;,
  -0.422318;0.852937;0.306832;,
  -0.139705;0.891970;0.429968;,
  -0.210737;0.965478;0.153109;,
  0.276393;0.447214;0.850651;,
  0.494835;0.504459;0.707573;,
  0.688191;0.525731;0.500000;,
  0.825855;0.504459;0.251964;,
  0.894427;0.447214;0.000000;,
  0.229890;0.668248;0.707528;,
  0.447020;0.735618;0.508959;,
  0.622186;0.735618;0.267864;,
  0.743938;0.668248;0.000000;,
  0.161311;0.852937;0.496465;,
  0.365753;0.891970;0.265735;,
  0.522014;0.852937;0.000000;,
  0.080494;0.965478;0.247736;,
  0.260485;0.965478;0.000000;,
  0.000000;1.000000;0.000000;;

  320;
  3;258,3,0;,
  3;256,6,2;,
  3;258,256,1;,
  3;255,256,258;,
  3;14,9,5;,
  3;256,13,4;,
  3;252,12,256;,
  3;255,252,256;,
  3;251,252,255;,
  3;23,18,8;,
  3;11,22,7;,
  3;24,21,10;,
  3;252,248,253;,
  3;247,248,252;,
  3;251,247,252;,
  3;246,247,251;,
  3;245,258,260;,
  3;244,255,258;,
  3;245,244,258;,
  3;243,244,245;,
  3;29,251,255;,
  3;244,28,255;,
  3;32,27,244;,
  3;243,31,244;,
  3;33,30,243;,
  3;239,246,251;,
  3;26,239,251;,
  3;238,239,25;,
  3;241,238,242;,
  3;237,238,241;,
  3;240,237,241;,
  3;37,237,240;,
  3;41,245,260;,
  3;46,243,245;,
  3;40,45,245;,
  3;233,44,39;,
  3;49,240,243;,
  3;43,48,243;,
  3;231,47,42;,
  3;233,231,234;,
  3;230,231,233;,
  3;54,36,240;,
  3;232,53,240;,
  3;228,52,232;,
  3;231,228,232;,
  3;227,228,231;,
  3;230,227,231;,
  3;226,227,230;,
  3;225,38,260;,
  3;224,233,235;,
  3;225,224,235;,
  3;223,224,225;,
  3;222,230,233;,
  3;224,222,233;,
  3;221,222,224;,
  3;223,221,224;,
  3;220,221,223;,
  3;219,226,230;,
  3;222,219,230;,
  3;218,219,222;,
  3;221,218,222;,
  3;217,218,221;,
  3;220,217,221;,
  3;216,217,220;,
  3;259,225,260;,
  3;215,223,225;,
  3;259,215,225;,
  3;257,215,259;,
  3;55,220,223;,
  3;215,214,223;,
  3;213,214,215;,
  3;257,213,215;,
  3;254,213,257;,
  3;212,216,220;,
  3;214,212,220;,
  3;211,212,214;,
  3;213,211,214;,
  3;210,211,213;,
  3;254,210,213;,
  3;17,210,254;,
  3;61,56,16;,
  3;66,207,209;,
  3;60,65,209;,
  3;205,64,59;,
  3;203,204,207;,
  3;63,203,207;,
  3;70,203,62;,
  3;205,69,206;,
  3;201,68,205;,
  3;199,200,204;,
  3;203,199,204;,
  3;74,199,203;,
  3;67,73,203;,
  3;197,72,202;,
  3;201,197,202;,
  3;196,197,201;,
  3;194,195,246;,
  3;192,193,195;,
  3;194,192,195;,
  3;191,192,194;,
  3;189,190,193;,
  3;192,189,193;,
  3;188,189,192;,
  3;191,188,192;,
  3;187,188,191;,
  3;186,196,190;,
  3;189,186,190;,
  3;185,186,189;,
  3;188,185,189;,
  3;184,185,188;,
  3;187,184,188;,
  3;183,184,187;,
  3;79,182,35;,
  3;179,180,182;,
  3;78,179,182;,
  3;178,179,77;,
  3;176,177,180;,
  3;179,176,180;,
  3;175,176,179;,
  3;178,175,179;,
  3;174,175,178;,
  3;173,183,177;,
  3;176,173,177;,
  3;172,173,176;,
  3;175,172,176;,
  3;171,172,175;,
  3;174,171,175;,
  3;170,171,174;,
  3;168,169,226;,
  3;166,167,169;,
  3;168,166,169;,
  3;165,166,168;,
  3;163,164,167;,
  3;166,163,167;,
  3;162,163,166;,
  3;165,162,166;,
  3;161,162,165;,
  3;160,170,164;,
  3;163,160,164;,
  3;159,160,163;,
  3;162,159,163;,
  3;158,159,162;,
  3;161,158,162;,
  3;157,158,161;,
  3;155,156,216;,
  3;153,154,156;,
  3;155,153,156;,
  3;152,153,155;,
  3;150,151,154;,
  3;153,150,154;,
  3;149,150,153;,
  3;152,149,153;,
  3;148,149,152;,
  3;147,157,151;,
  3;150,147,151;,
  3;146,147,150;,
  3;149,146,150;,
  3;145,146,149;,
  3;148,145,149;,
  3;200,145,148;,
  3;201,190,196;,
  3;144,193,190;,
  3;201,144,190;,
  3;205,144,201;,
  3;143,195,193;,
  3;144,143,193;,
  3;142,143,144;,
  3;205,142,144;,
  3;58,142,205;,
  3;247,246,195;,
  3;143,247,195;,
  3;248,247,143;,
  3;142,248,143;,
  3;20,248,142;,
  3;57,19,142;,
  3;15,249,208;,
  3;187,177,183;,
  3;141,180,177;,
  3;187,141,177;,
  3;191,141,187;,
  3;140,182,180;,
  3;141,140,180;,
  3;139,140,141;,
  3;191,139,141;,
  3;194,139,191;,
  3;237,34,182;,
  3;140,237,182;,
  3;238,237,140;,
  3;139,238,140;,
  3;239,238,139;,
  3;194,239,139;,
  3;246,239,194;,
  3;174,164,170;,
  3;138,167,164;,
  3;174,138,164;,
  3;178,138,174;,
  3;137,169,167;,
  3;138,137,167;,
  3;136,137,138;,
  3;178,136,138;,
  3;76,136,178;,
  3;227,226,169;,
  3;137,227,169;,
  3;228,227,137;,
  3;136,228,137;,
  3;51,228,136;,
  3;75,50,136;,
  3;236,229,181;,
  3;161,151,157;,
  3;135,154,151;,
  3;161,135,151;,
  3;165,135,161;,
  3;134,156,154;,
  3;135,134,154;,
  3;133,134,135;,
  3;165,133,135;,
  3;168,133,165;,
  3;217,216,156;,
  3;134,217,156;,
  3;218,217,134;,
  3;133,218,134;,
  3;219,218,133;,
  3;168,219,133;,
  3;226,219,168;,
  3;148,204,200;,
  3;132,207,204;,
  3;148,132,204;,
  3;152,132,148;,
  3;82,209,207;,
  3;132,81,207;,
  3;83,80,132;,
  3;152,130,132;,
  3;155,130,152;,
  3;210,250,209;,
  3;131,210,209;,
  3;211,210,131;,
  3;130,211,131;,
  3;212,211,130;,
  3;155,212,130;,
  3;216,212,155;,
  3;88,128,129;,
  3;125,126,128;,
  3;87,125,128;,
  3;124,125,86;,
  3;122,123,126;,
  3;125,122,126;,
  3;121,122,125;,
  3;124,121,125;,
  3;120,121,124;,
  3;184,183,123;,
  3;122,184,123;,
  3;185,184,122;,
  3;121,185,122;,
  3;186,185,121;,
  3;120,186,121;,
  3;196,186,120;,
  3;128,119,129;,
  3;117,118,119;,
  3;128,117,119;,
  3;126,117,128;,
  3;115,116,118;,
  3;117,115,118;,
  3;114,115,117;,
  3;126,114,117;,
  3;123,114,126;,
  3;171,170,116;,
  3;115,171,116;,
  3;172,171,115;,
  3;114,172,115;,
  3;173,172,114;,
  3;123,173,114;,
  3;183,173,123;,
  3;119,113,129;,
  3;111,112,113;,
  3;119,111,113;,
  3;118,111,119;,
  3;109,110,112;,
  3;111,109,112;,
  3;108,109,111;,
  3;118,108,111;,
  3;116,108,118;,
  3;158,157,110;,
  3;109,158,110;,
  3;159,158,109;,
  3;108,159,109;,
  3;160,159,108;,
  3;116,160,108;,
  3;170,160,116;,
  3;113,107,129;,
  3;105,89,107;,
  3;113,105,107;,
  3;112,105,113;,
  3;103,104,106;,
  3;105,103,106;,
  3;102,103,105;,
  3;112,102,105;,
  3;110,102,112;,
  3;145,200,104;,
  3;103,145,104;,
  3;146,145,103;,
  3;102,146,103;,
  3;147,146,102;,
  3;110,147,102;,
  3;157,147,110;,
  3;107,85,129;,
  3;93,124,84;,
  3;107,92,127;,
  3;106,91,107;,
  3;98,120,124;,
  3;90,97,124;,
  3;99,96,101;,
  3;106,99,101;,
  3;104,99,106;,
  3;197,196,120;,
  3;95,197,120;,
  3;71,197,94;,
  3;99,198,100;,
  3;199,198,99;,
  3;104,199,99;,
  3;200,199,104;;
 }
 MeshTextureCoords { 
 261;
 1.014843;0.000488;,
 0.499398;0.000702;,
 0.499398;0.000702;,
 0.499398;0.000702;,
 0.000000;0.000427;,
 0.000000;0.000427;,
 0.000000;0.000427;,
 0.007813;0.186187;,
 0.007813;0.186187;,
 0.007813;0.186187;,
 0.124747;0.122604;,
 0.123664;0.121790;,
 0.123445;0.121952;,
 0.123664;0.121790;,
 0.123664;0.121790;,
 0.013687;0.311075;,
 2.002313;0.311173;,
 2.001532;0.311271;,
 0.013687;0.311075;,
 0.074201;0.296721;,
 0.074201;0.296721;,
 0.078107;0.295745;,
 0.074857;0.296721;,
 0.074857;0.296721;,
 0.165104;0.282776;,
 0.535247;0.211851;,
 0.533945;0.212176;,
 0.533945;0.212176;,
 0.533945;0.212176;,
 0.533945;0.212176;,
 0.636367;0.211525;,
 0.636367;0.212176;,
 0.636367;0.212176;,
 0.763281;0.216461;,
 0.681250;0.297729;,
 0.681250;0.297729;,
 0.681250;0.297729;,
 0.681250;0.297729;,
 1.248437;0.062713;,
 1.178125;0.064667;,
 1.178125;0.064667;,
 1.178125;0.064667;,
 1.003706;0.134062;,
 1.003906;0.133912;,
 1.003906;0.133912;,
 1.003906;0.133912;,
 1.003906;0.133912;,
 0.907222;0.194598;,
 0.905820;0.194598;,
 0.905820;0.194598;,
 0.819797;0.282398;,
 0.819797;0.282398;,
 0.819797;0.282398;,
 0.819797;0.282398;,
 0.819797;0.282398;,
 1.693027;0.174090;,
 1.903934;0.398827;,
 0.017752;0.379426;,
 0.017752;0.379426;,
 0.017752;0.379426;,
 2.012999;0.380077;,
 2.012999;0.379556;,
 2.001513;0.500781;,
 2.001513;0.500781;,
 0.000000;0.500000;,
 2.001122;0.501855;,
 2.001513;0.500781;,
 2.003310;0.594226;,
 0.002584;0.592663;,
 0.002584;0.592663;,
 2.003310;0.594226;,
 0.001575;0.685193;,
 0.001575;0.685193;,
 2.001513;0.687927;,
 2.001513;0.687927;,
 0.723280;0.392121;,
 0.723280;0.392299;,
 0.723280;0.392121;,
 0.723280;0.392121;,
 0.723280;0.392121;,
 1.813303;0.386145;,
 1.813024;0.386215;,
 1.813024;0.386215;,
 1.710469;0.394656;,
 0.517889;1.000958;,
 1.621647;0.999982;,
 0.517889;1.000958;,
 0.517889;1.000958;,
 0.517889;1.000958;,
 1.751563;0.872425;,
 0.003937;0.999291;,
 2.005450;0.994604;,
 2.005450;0.994604;,
 0.003937;0.999291;,
 0.000547;0.874152;,
 0.000547;0.874152;,
 2.000879;0.875910;,
 0.000547;0.874152;,
 0.000547;0.874152;,
 1.847226;0.825910;,
 2.000879;0.875910;,
 2.005450;0.994604;,
 1.424570;0.757550;,
 1.593399;0.750715;,
 1.720313;0.766938;,
 1.546094;0.834838;,
 1.751563;0.872620;,
 1.622656;0.912872;,
 1.025351;0.761457;,
 1.143399;0.762433;,
 1.289844;0.756196;,
 1.166406;0.839721;,
 1.344531;0.839417;,
 1.305469;0.913849;,
 0.606601;0.758527;,
 0.767617;0.766340;,
 0.894531;0.758149;,
 0.755469;0.840698;,
 0.968750;0.837464;,
 0.988281;0.911896;,
 0.136786;0.807953;,
 0.267699;0.790754;,
 0.352774;0.762433;,
 0.479688;0.749360;,
 0.254005;0.922425;,
 0.379688;0.874877;,
 0.585156;0.843323;,
 1.621647;0.999982;,
 0.628125;0.915802;,
 1.011719;0.999023;,
 1.711306;0.394446;,
 1.813024;0.386215;,
 1.782813;0.503906;,
 1.288650;0.393470;,
 1.376975;0.394446;,
 1.309375;0.505859;,
 0.823025;0.384681;,
 0.950412;0.389563;,
 0.882812;0.506836;,
 0.415994;0.388587;,
 0.519944;0.391517;,
 0.510938;0.503906;,
 0.122244;0.392493;,
 0.183225;0.392493;,
 0.178125;0.506836;,
 1.632547;0.672680;,
 1.495312;0.680114;,
 1.373703;0.675609;,
 1.717345;0.582488;,
 1.605881;0.586022;,
 1.470681;0.586022;,
 1.367030;0.580535;,
 1.678125;0.501953;,
 1.534375;0.505859;,
 1.421875;0.505859;,
 1.599842;0.397981;,
 1.484533;0.397981;,
 1.278125;0.668091;,
 1.194266;0.667797;,
 1.084375;0.670349;,
 0.997922;0.670727;,
 1.259533;0.573699;,
 1.140256;0.579186;,
 1.012869;0.585046;,
 0.889686;0.581512;,
 1.196875;0.507812;,
 1.111719;0.505859;,
 0.995313;0.508789;,
 1.181092;0.397981;,
 1.073595;0.394074;,
 0.898438;0.668091;,
 0.748172;0.669750;,
 0.626562;0.674255;,
 0.540109;0.674633;,
 0.782189;0.585418;,
 0.709787;0.591882;,
 0.601931;0.589929;,
 0.509999;0.585418;,
 0.785938;0.505859;,
 0.677344;0.504883;,
 0.592188;0.503906;,
 0.722333;0.392535;,
 0.623595;0.395051;,
 0.487500;0.659302;,
 0.407547;0.663891;,
 0.328906;0.676208;,
 0.250265;0.675609;,
 0.425939;0.580535;,
 0.361350;0.586999;,
 0.288650;0.586999;,
 0.204530;0.580535;,
 0.406250;0.507812;,
 0.332813;0.506836;,
 0.259375;0.503906;,
 0.331873;0.396027;,
 0.247814;0.400910;,
 0.189844;0.660279;,
 0.090360;0.700023;,
 2.001513;0.687927;,
 1.862765;0.688305;,
 1.743750;0.655396;,
 0.104845;0.583465;,
 0.002584;0.592663;,
 1.928494;0.587976;,
 1.824842;0.570769;,
 0.087217;0.504557;,
 0.000000;0.500000;,
 1.910938;0.496094;,
 0.018408;0.379426;,
 1.903283;0.398818;,
 1.888797;0.283375;,
 1.790625;0.287659;,
 1.676828;0.289234;,
 1.857461;0.125262;,
 1.692539;0.174090;,
 1.751563;0.046021;,
 1.561719;0.307495;,
 1.446610;0.285328;,
 1.328906;0.282776;,
 1.207297;0.279469;,
 1.563672;0.232574;,
 1.419180;0.201434;,
 1.265976;0.198504;,
 1.550000;0.150818;,
 1.371875;0.134888;,
 1.456250;0.062713;,
 1.103906;0.299682;,
 1.039578;0.289234;,
 0.925781;0.286682;,
 0.822401;0.282398;,
 1.162500;0.209625;,
 1.039411;0.195941;,
 0.905820;0.194598;,
 1.185938;0.141052;,
 1.003906;0.133912;,
 1.178125;0.064667;,
 0.681250;0.295776;,
 0.570047;0.290211;,
 0.460156;0.282776;,
 0.373703;0.284352;,
 0.763281;0.214508;,
 0.636367;0.212176;,
 0.533945;0.212176;,
 0.806250;0.144958;,
 0.612500;0.142701;,
 0.802344;0.062714;,
 0.289844;0.305541;,
 0.209891;0.295094;,
 0.166406;0.283753;,
 0.074857;0.296721;,
 2.001532;0.311271;,
 0.344531;0.228179;,
 0.260197;0.172679;,
 0.123445;0.121952;,
 1.997607;0.185992;,
 0.426563;0.146911;,
 0.229403;0.053136;,
 2.000363;-0.000550;,
 0.498751;0.063132;,
 1.504460;0.000702;,
 1.015124;0.000697;;
 }
}
}
AnimationSet {
 Animation anim-GeoSphere0 {
  {frm-GeoSphere0}
  AnimationKey {
  2;
  2;
  1; 3; -212.270706, 0.000000, 2.407000;;,
  200; 3; -212.270706, 0.000000, 2.407000;;;
  }
 }
}
