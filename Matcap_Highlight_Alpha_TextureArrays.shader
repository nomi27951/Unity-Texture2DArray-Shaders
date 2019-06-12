// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33072,y:32695,varname:node_3138,prsc:2|emission-6042-RGB,custl-1530-OUT;n:type:ShaderForge.SFN_NormalVector,id:8844,x:30074,y:32622,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:6385,x:30546,y:32617,varname:node_6385,prsc:2,tffrom:0,tfto:3|IN-8844-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8294,x:30819,y:32621,varname:node_8294,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6385-XYZ;n:type:ShaderForge.SFN_RemapRange,id:2872,x:31088,y:32622,varname:node_2872,prsc:2,frmn:-1,frmx:1,tomn:0.1,tomx:0.8|IN-8294-OUT;n:type:ShaderForge.SFN_Tex2d,id:4822,x:31335,y:32733,ptovrint:False,ptlb:matcap,ptin:_matcap,varname:_matcap,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2872-OUT;n:type:ShaderForge.SFN_Multiply,id:5360,x:31840,y:32868,varname:node_5360,prsc:2|A-4822-RGB,B-6042-A;n:type:ShaderForge.SFN_ComponentMask,id:5801,x:30492,y:33286,varname:node_5801,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8844-OUT;n:type:ShaderForge.SFN_RemapRange,id:2621,x:31636,y:33134,varname:node_2621,prsc:2,frmn:0,frmx:1,tomn:0.4,tomx:0.7|IN-5801-OUT;n:type:ShaderForge.SFN_Tex2d,id:6042,x:31384,y:32578,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:167,x:31991,y:33578,varname:node_167,prsc:2|NRM-8844-OUT,EXP-2039-OUT;n:type:ShaderForge.SFN_Add,id:2619,x:32158,y:32891,varname:node_2619,prsc:2|A-5360-OUT,B-8184-OUT;n:type:ShaderForge.SFN_Multiply,id:2047,x:32358,y:32891,cmnt:final composite,varname:node_2047,prsc:2|A-2619-OUT,B-2621-OUT;n:type:ShaderForge.SFN_Vector1,id:2039,x:31775,y:33630,varname:node_2039,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:8184,x:32261,y:33579,varname:node_8184,prsc:2|A-167-OUT,B-9511-RGB;n:type:ShaderForge.SFN_Color,id:9511,x:31991,y:33749,ptovrint:False,ptlb:rim light color,ptin:_rimlightcolor,varname:_rimlightcolor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8879,x:32559,y:32938,varname:node_8879,prsc:2|A-2047-OUT,B-1489-OUT;n:type:ShaderForge.SFN_Vector1,id:1489,x:32363,y:33010,varname:node_1489,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Fresnel,id:779,x:32253,y:32164,varname:node_779,prsc:2|NRM-566-OUT,EXP-8812-OUT;n:type:ShaderForge.SFN_NormalVector,id:566,x:31860,y:32084,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1061,x:32567,y:32319,varname:node_1061,prsc:2|A-779-OUT,B-4107-RGB;n:type:ShaderForge.SFN_Color,id:4107,x:32218,y:32375,ptovrint:False,ptlb:node_4107,ptin:_node_4107,varname:_node_4107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7655172,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:1530,x:32886,y:32985,varname:node_1530,prsc:2|A-1337-OUT,B-8879-OUT;n:type:ShaderForge.SFN_Vector1,id:8812,x:31901,y:32267,varname:node_8812,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:1337,x:32837,y:32354,varname:node_1337,prsc:2|A-1061-OUT,B-4314-OUT;n:type:ShaderForge.SFN_Slider,id:4314,x:32351,y:32555,ptovrint:False,ptlb:HighLight,ptin:_HighLight,varname:_HighLight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:4822-6042-9511-4107-4314;pass:END;sub:END;*/

Shader "Nauman/Matcap_Highlight_Alpha_TextureArrays_SPS" {
    Properties {
        _matcap ("matcap", 2D) = "white" {}
		_node_4107("node_4107", Color) = (0.188,0.635,0.952,1)
		_HighLight("HighLight", Range(0, 1)) = 0
			_Alpha("Alpha", Range(0, 1)) = 0.45

		//texture array properties - nauman
		_textureArray("Texture Array", 2DArray) = "white" {}
		_Slice("Array Element", Float) = 0
		_Lod("Lod", Float) = 0
    }
    SubShader {
			Tags{ "Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "Transparent" }
			ZWrite On
			Blend SrcAlpha OneMinusSrcAlpha
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase_fullshadows
            //#pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.5
            uniform sampler2D _matcap; uniform float4 _matcap_ST;
            uniform float4 _node_4107;
            uniform float _HighLight;
			uniform float _Alpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
				UNITY_VERTEX_OUTPUT_STEREO
            };

			UNITY_DECLARE_TEX2DARRAY(_textureArray);
			int _Slice;
			float _Lod;
			float4 _textureArray_ST;

            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                //o.uv0 = v.texcoord0;
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				o.uv0 = TRANSFORM_TEX(v.texcoord0, _textureArray);
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
				half4 _color_var = UNITY_SAMPLE_TEX2DARRAY_LOD(_textureArray, float3(i.uv0, _Slice), _Lod);
                float3 emissive = _color_var.rgb * _node_4107;
                float node_779 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),1.0);
                float2 node_2872 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg*0.35+0.45);
                fixed4 _matcap_var = tex2D(_matcap,TRANSFORM_TEX(node_2872, _matcap));
                float3 finalColor = emissive + (((node_779*_node_4107.rgb)*_HighLight)+((((_matcap_var.rgb*_color_var.a)+(pow(1.0-max(0,dot(i.normalDir, viewDirection)),4.0)))*(i.normalDir.g*0.3+0.4))*0.5));
                return fixed4(finalColor,_Alpha);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
