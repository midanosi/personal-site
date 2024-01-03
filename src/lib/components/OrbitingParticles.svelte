<script lang="ts">
	import { T, useFrame } from '@threlte/core';
	import { OrbitControls } from '@threlte/extras';
	import vertexShader from './vertex.glsl?raw';
	import fragmentShader from './fragment.glsl?raw';
	import {
		BufferGeometry,
		Float32BufferAttribute,
		PointsMaterial,
		type Shader,
		Vector3,
	} from 'three';

	const geometry = new BufferGeometry();
	const color = '#d8bcab';
	const colorvec3 = 'vec3(0.847,0.737,0.671)';
	const size = 0.05;
	const material = new PointsMaterial();

	const radius = 20;
	const diameter = radius * 2;
	const amount = 1000;
	const speed = 0.5;
	const direction = [0, 0, 1];
	const vertices = [];
	const loopTime = 3;
	for (let i = 0; i < amount; i++) {
		const x = (Math.random() * diameter - radius) / 100; // current being ignored in glsl
		const y = Math.random() * diameter - radius;
		const z = Math.random() * diameter - radius;
		vertices.push(x, y, z);
	}
	geometry.setAttribute('position', new Float32BufferAttribute(vertices, 3));

	const settings = {
		elapsedTime: 0,
		direction: new Vector3(direction[0], direction[1], direction[2]).normalize(),
	};

	const onBeforeCompile = (shader: Shader) => {
		shader.uniforms.elapsedTime = {
			get value() {
				return settings.elapsedTime;
			},
		};
		shader.uniforms.spawnRadius = {
			get value() {
				return radius;
			},
		};
		shader.uniforms.speed = {
			get value() {
				return speed;
			},
		};
		shader.uniforms.direction = {
			get value() {
				return direction;
			},
		};
		shader.uniforms.loopTime = {
			get value() {
				return loopTime;
			},
		};
		shader.uniforms.color = {
			get value() {
				return colorvec3;
			},
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
		// shader.vertexShader = 'attribute vec3 color;' + shader.vertexShader;
		shader.fragmentShader = 'varying vec3 color;' + shader.fragmentShader;

		shader.vertexShader = shader.vertexShader.replace('#include <project_vertex>', vertexShader);

		shader.fragmentShader = shader.fragmentShader.replace(
			'#include <premultiplied_alpha_fragment>',
			fragmentShader,
		);
	};

	material.onBeforeCompile = onBeforeCompile;

	useFrame(() => {
		settings.elapsedTime += 0.01;
	});
</script>

<T.Points>
	<T is={geometry} />
	<T is={material} {size} {color}/>
</T.Points>

<T.PerspectiveCamera makeDefault position={[0, 6, -10]} fov={15} zoom={0.2}>
	<OrbitControls enableZoom={true} enableDamping target={[0, 0, 5]} />
</T.PerspectiveCamera>

<!-- <T.DirectionalLight intensity={0.8} position.x={5} position.y={10} />
<T.AmbientLight intensity={0.2} /> -->
