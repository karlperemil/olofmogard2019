mat2 rot( float a ){ return mat2( sin(a),  cos(a), -cos(a),  sin(a) ); }

float noise( in vec2 x ){ return smoothstep(0.,1.,sin(1.5*x.x)*sin(1.5*x.y)); }

float fbm( vec2 p )
{
    mat2 m = rot(.4);
    float f = 0.0;
    f += 0.200000*(0.5+0.5*noise( p )); p = m*p*2.02;
    f += 0.150000*(0.5+0.5*noise( p )); p = m*p*2.03;
    f += 0.125000*(0.5+0.5*noise( p )); p = m*p*2.01;
    f += 0.021250*(0.2+0.6*noise( p )); p = m*p*.5 + sin(iTime*0.5)*0.4;
    f += 0.015625*(0.5+0.5*noise( p ));
    return f/0.96875;
}


float pattern (in vec2 p, out vec2 q, out vec2 r, float t){
   
    
	q.x = fbm( p + vec2(0.0,0.0) + .3*t );
    q.y = fbm( p + vec2(2.2,1.3) + 1.*t );

    r.x = fbm( p + 10.0*q + vec2(1.7,9.2) + sin(t) );
    r.y = fbm( p + 12.0*q + vec2(12.3,2.8) + cos(t) );

    return fbm( p + 3.0*r );
    
}

void mainImage(out vec4 C, in vec2 U){
    
    vec2 uv = (U.xy - 0.0)/iResolution.xy * 2.;
    //uv.x *= iResolution.x/iResolution.y;
	
    vec2 q,r;
    vec3 col1 = vec3( 1. + sin(iTime),sin(iTime*0.5)*.5,sin(iTime*0.3)*1.5);
    vec3 col2 = vec3(sin(iTime*0.1)*1.2,sin(iTime*0.4)*1.2,.5 + sin(iTime*0.5)*0.4);
    vec3 c;
    
    float f = pattern(uv, q, r, 0.1*iTime*(1.0 + (iMouse.x / iResolution.x)) );
   	vec2 df = vec2(dFdx(f) , dFdy(f));
    
    c = mix(col1, vec3(0), smoothstep(.0,.5,f));
    //c = mix(col2, c, smoothstep(0., .8, dot(q,r)));
    c += col2 * smoothstep(0., .8, dot(q,r)*0.9);
    //c *= dot(q,r);
    //c += smoothstep(0.,3.,pow(length(df),0.12));
    

    C = vec4( c, 1. );
}
