#ifdef GL_OES_standard_derivatives
    #extension GL_OES_standard_derivatives : enable
#endif  

precision mediump float;
uniform float u_time;
uniform vec2 u_resolution;
uniform vec2 u_mouse;

mat2 rot( float a ){ return mat2( sin(a),  cos(a), -cos(a),  sin(a) ); }

float noise( in vec2 x ){ return smoothstep(0.,1.,sin(1.5*x.x)*sin(1.5*x.y)); }

float timeMod(in float timeOffset, in float speed){
    float t  = (1. + sin( (u_mouse.y / u_resolution.y + (u_time*.3) + timeOffset) * speed * .1 ));
    return t;
}

float fbm( vec2 p )
{
    mat2 m = rot(.4);
    float f = 0.0;
    f += 0.200000*(0.5+0.5*noise( p )); p = m*p*2.02;
    f += 0.150000*(0.5+0.5*noise( p )); p = m*p*2.03;
    f += 0.125000*(0.5+0.5*noise( p )); p = m*p*2.04;
    f += 0.021250*(0.2+1.5*noise( p )); p = m*p*2.05;
    f += 0.015625*(0.5+0.5*noise( p ));
    return f;
}


float pattern (in vec2 p, out vec2 q, out vec2 r, float t){
   
    
	q.x = fbm( p + vec2(0.0,0.0) + .2*t );
    q.y = fbm( p + vec2(2.2,1.3) + 1.*t );

    r.x = fbm( p + 10.0*q + vec2(1.7,9.2) + sin(t) );
    r.y = fbm( p + 12.0*q + vec2(12.3,2.8) + cos(t) );

    return fbm( p + 3.0*r );
    
}

vec4 C;



vec4 mainImage(){
    
    vec2 uv = (gl_FragCoord.xy - 0.0)/u_resolution.xy * 2.;
    //uv.x *= iResolution.x/iResolution.y;
	
    vec2 q,r;
    vec3 col1 = vec3( 1.4,1.4,1.4 + (sin(u_time)*.2));
    vec3 col2 = vec3( 0.4,0.3,2. + (sin(u_time*5.)*.5));
    vec3 c;
    
    float f = pattern(uv, q, r, 0.1*u_time*(1.0 ) );
   	vec2 df = vec2(dFdx(f) , dFdy(f));
    
    c = mix(col1, vec3(0), smoothstep(.0,.5,f));
    //c = mix(col2, c, smoothstep(0., .8, dot(q,r)));
    c += col2 * smoothstep(0., .8, dot(q,r)*0.9);
    //c *= dot(q,r);
    //c += smoothstep(0.,3.,pow(length(df),0.12));
    
    C = vec4( c, 1. );
    return C;
}

void main(){
    gl_FragColor = mainImage();
}