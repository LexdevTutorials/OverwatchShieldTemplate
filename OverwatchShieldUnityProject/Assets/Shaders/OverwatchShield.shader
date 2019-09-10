Shader "Lexdev/CaseStudies/OverwatchShield"
{
	Properties
	{
		
	}
	SubShader
	{
		Pass
		{
			HLSLPROGRAM

			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				//final output
				return fixed4(1.0f,0.5f,0.0f,1.0f);
			}

			ENDHLSL
		}
	}
}
