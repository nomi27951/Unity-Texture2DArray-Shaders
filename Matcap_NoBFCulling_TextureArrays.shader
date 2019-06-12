// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33072,y:32695,varname:node_3138,prsc:2|emission-6042-RGB,custl-8879-OUT;n:type:ShaderForge.SFN_NormalVector,id:8844,x:30381,y:32665,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:6385,x:30812,y:32666,varname:node_6385,prsc:2,tffrom:0,tfto:3|IN-8844-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8294,x:31085,y:32670,varname:node_8294,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6385-XYZ;n:type:ShaderForge.SFN_RemapRange,id:2872,x:31354,y:32671,varname:node_2872,prsc:2,frmn:-1,frmx:1,tomn:0.1,tomx:0.8|IN-8294-OUT;n:type:ShaderForge.SFN_Tex2d,id:4822,x:31601,y:32782,ptovrint:False,ptlb:matcap,ptin:_matcap,varname:_matcap,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2872-OUT;n:type:ShaderForge.SFN_Multiply,id:5360,x:32106,y:32917,varname:node_5360,prsc:2|A-4822-RGB,B-6042-A;n:type:ShaderForge.SFN_ComponentMask,id:5801,x:30799,y:33329,varname:node_5801,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8844-OUT;n:type:ShaderForge.SFN_RemapRange,id:2621,x:31943,y:33177,varname:node_2621,prsc:2,frmn:0,frmx:1,tomn:0.7,tomx:0.5|IN-5801-OUT;n:type:ShaderForge.SFN_Tex2d,id:6042,x:32029,y:32582,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:167,x:32257,y:33627,varname:node_167,prsc:2|NRM-8844-OUT,EXP-2039-OUT;n:type:ShaderForge.SFN_Add,id:2619,x:32424,y:32940,varname:node_2619,prsc:2|A-5360-OUT,B-8184-OUT;n:type:ShaderForge.SFN_Multiply,id:2047,x:32624,y:32940,cmnt:final composite,varname:node_2047,prsc:2|A-2619-OUT,B-2621-OUT;n:type:ShaderForge.SFN_Vector1,id:2039,x:32041,y:33679,varname:node_2039,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:8184,x:32527,y:33628,varname:node_8184,prsc:2|A-167-OUT,B-9511-RGB;n:type:ShaderForge.SFN_Color,id:9511,x:32257,y:33798,ptovrint:False,ptlb:rim light color,ptin:_rimlightcolor,varname:_rimlightcolor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8879,x:32825,y:32987,varname:node_8879,prsc:2|A-2047-OUT,B-1489-OUT;n:type:ShaderForge.SFN_Vector1,id:1489,x:32922,y:33356,varname:node_1489,prsc:2,v1:0.5;proporder:4822-6042-9511;pass:END;sub:END;*/

Shader "Nauman/Matcap_NoBFCulling_TextureArrays" {
    Properties {
        _matcap ("matcap", 2D) = "white" {}
        //_color ("color", 2D) = "white" {}
		_rimlightcolor ("rim light color", Color) = (1,1,1,1)
		//texture array properties - nauman
		_textureArray("Texture Array", 2DArray) = "white" {}
		_Slice("Array Element", Float) = 0
		_Lod("Lod", Float) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase_fullshadows
            //#pragma only_renderers d3d9 d3d11 glcore gles gles3 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _matcap; uniform float4 _matcap_ST;
            //uniform sampler2D _color; uniform float4 _color_ST;
            uniform fixed4 _rimlightcolor;
            struct VertexInput {
                half4 vertex : POSITION;
				half3 normal : NORMAL;
				half2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
				half4 pos : SV_POSITION;
				half2 uv0 : TEXCOORD0;
				half4 posWorld : TEXCOORD1;
				half3 normalDir : TEXCOORD2;
            };

			UNITY_DECLARE_TEX2DARRAY(_textureArray);
			int _Slice;
			float _Lod;
			float4 _textureArray_ST;

            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;

                //o.uv0 = v.texcoord0;
				

                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
				o.uv0 = TRANSFORM_TEX(v.texcoord0, _textureArray);
                return o;
            }
			fixed4 frag(VertexOutput i, float facing : VFACE) : COLOR {
				//half isFrontFace = ( facing >= 0 ? 1 : 0 );
                half faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
				half3 viewDirection = normalize(((half3)_WorldSpaceCameraPos.xyz) - i.posWorld.xyz);
				//half3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
				//half4 _color_var = tex2D(_color,TRANSFORM_TEX(i.uv0, _color));
				half4 _color_var = UNITY_SAMPLE_TEX2DARRAY_LOD(_textureArray, float3(i.uv0, _Slice), _Lod);

				half3 emissive = _color_var.rgb;
				half2 node_2872 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg*0.35+0.45);
                fixed4 _matcap_var = tex2D(_matcap,TRANSFORM_TEX(node_2872, _matcap));
				half3 finalColor = emissive + ((((_matcap_var.rgb*_color_var.a)+(pow(1.0-max(0,dot(i.normalDir, viewDirection)),4.0)*_rimlightcolor.rgb))*(i.normalDir.g*-0.2+0.7))*0.5);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
