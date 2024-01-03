transformed.z = transformed.z + (elapsedTime * direction.z) * speed;

// reset z once go too far away
transformed.z = mod(transformed.z, spawnRadius * 2.0) - spawnRadius * 0.5;

distanceToCenter = distance(vec3(0.0, 0.0, 0.0), transformed);
gl_PointSize = size * step(distanceToCenter, spawnRadius);

// vec3 color = vec3(0.847,0.737,0.671);

#include <project_vertex>