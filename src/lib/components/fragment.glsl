#include <premultiplied_alpha_fragment>

// float random(vec2 st)
// {
//     return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
// }
// float random2d = random(color.xy)

vec3 color = vec3(0.847,0.737,0.671);
// color.y += distanceToCenter * 0.01;

// float opacity = clamp(smoothstep(spawnRadius, spawnRadius * 0.9, distanceToCenter), 0.0, 1.0);
// gl_FragColor = vec4(gl_FragColor.rgb, gl_FragColor.a * opacity);
// gl_FragColor = vec4(red, gl_FragColor.a * opacity);
gl_FragColor = vec4(color, gl_FragColor.a);