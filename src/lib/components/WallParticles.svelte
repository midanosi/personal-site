<script lang="ts">
	import { T, useFrame } from '@threlte/core';
	import { OrbitControls, Grid } from '@threlte/extras';
	import {
		BufferGeometry,
		Float32BufferAttribute,
		PointsMaterial,
		WebGLRenderer,
		type Shader
	} from 'three';

	// const vertices = [
	// 	[0, 1, -3],
	// 	[0, 1, 1.5],
	// 	[4.7, 1, 1.5],
	// 	[4.7, 1, 5],
	// 	[2, 1, 5],
	// 	[2, 1, 9],
	// 	[8, 1, 9],
	// 	[8, 1, -3]
	// ];
	const geometry = new BufferGeometry();
	// geometry.setAttribute('position', new Float32BufferAttribute(vertices.flat(), 3));
	const color = '#d8bcab';
	const size = 0.1;
	const material = new PointsMaterial();
	const opacity = 1;

	const radius = 10;
	const diameter = radius * 2;
	const amount = 1000;
	const speed = 10;
	const direction = [1, 1, 1];
	const vertices = [];
    const loopTime = 15
	for (let i = 0; i < amount; i++) {
		const x = Math.random() * diameter - radius;
		const y = Math.random() * diameter - radius;
		const z = Math.random() * diameter - radius;
		vertices.push(x, y, z);
	}
	geometry.setAttribute('position', new Float32BufferAttribute(vertices, 3));

	const settings = {
		elapsedTime: 0
		// direction: new Vector3(direction[0], direction[1], direction[2]).normalize()
	};

	const onBeforeCompile = (shader: Shader, renderer: WebGLRenderer) => {
		shader.uniforms.elapsedTime = {
			get value() {
				return settings.elapsedTime;
			}
		};
		shader.uniforms.spawnRadius = {
			get value() {
				return radius;
			}
		};
		shader.uniforms.speed = {
			get value() {
				return speed;
			}
		};
		shader.uniforms.direction = {
			get value() {
				return direction;
			}
		};
		shader.uniforms.loopTime = {
			get value() {
				return loopTime;
			}
		};

		shader.vertexShader = 'uniform float elapsedTime;' + shader.vertexShader;
		shader.fragmentShader = 'uniform float elapsedTime;' + shader.fragmentShader;
		shader.vertexShader = 'uniform float loopTime;' + shader.vertexShader;
		shader.fragmentShader = 'uniform float loopTime;' + shader.fragmentShader;
		shader.vertexShader = 'uniform float spawnRadius;' + shader.vertexShader;
		shader.fragmentShader = 'uniform float spawnRadius;' + shader.fragmentShader;
		shader.vertexShader = 'uniform vec3 direction;' + shader.vertexShader;
		shader.vertexShader = 'uniform float speed;' + shader.vertexShader;
		shader.vertexShader = 'varying float distanceToCenter;' + shader.vertexShader;
		shader.fragmentShader = 'varying float distanceToCenter;' + shader.fragmentShader;

		shader.vertexShader = shader.vertexShader.replace(
			'#include <project_vertex>',
			`
				// move stars in one direction
                // #define M_PI 3.1415926535897932384626433832795
				transformed.x =  sin((elapsedTime / loopTime)* 3.14159) * direction.x;
				// transformed.y =  elapsedTime * direction.y;
				// transformed.z += speed * elapsedTime * direction.z;
                // transformed.y = direction.y;
                // transformed.z = direction.z;

				// constrain stars inside cube
				// (ex: if a star goes to far on one side, it'll be put back to the other side)
				// transformed.xyz = mod(transformed.xyz, spawnRadius * 2.0) - spawnRadius;

				#include <project_vertex>
			`
		);

		// shader.vertexShader = shader.vertexShader.replace(
		// 	'gl_PointSize = size;',
		// 	`
		// 		// hide points that are outside sphere shape
		// 		distanceToCenter = distance(vec3(0.0, 0.0, 0.0), transformed);
		// 		gl_PointSize = size * step(distanceToCenter, spawnRadius);
		// 	`
		// );

		shader.fragmentShader = shader.fragmentShader.replace(
			'#include <premultiplied_alpha_fragment>',
			`
				#include <premultiplied_alpha_fragment>
				float	opacity = clamp(smoothstep(spawnRadius, spawnRadius * 0.9, distanceToCenter), 0.0, 1.0);
				gl_FragColor = vec4(gl_FragColor.rgb, gl_FragColor.a * opacity);
			`
		);
	};

	material.onBeforeCompile = onBeforeCompile;

	useFrame(() => {
		settings.elapsedTime += 0.01;

	});
</script>

<T.Points>
	<T is={geometry} />
	<T is={material} {size} {color} {opacity} />
</T.Points>

<T.PerspectiveCamera makeDefault position={[0, 6, -10]} fov={15} zoom={0.2}>
	<OrbitControls enableZoom={true} enableDamping target={[0, 0, 5]} />
</T.PerspectiveCamera>

<!-- <T.DirectionalLight intensity={0.8} position.x={5} position.y={10} />
<T.AmbientLight intensity={0.2} /> -->
