<script lang="ts">
	import { Canvas } from '@threlte/core';
	import OrbitingParticles from './OrbitingParticles.svelte';
	import { Github, Gitlab } from 'lucide-svelte';
</script>

<div class="canvas">
	<Canvas>
		<!-- <OrbitingParticles /> -->
	</Canvas>
</div>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<section>
	<h1>Michael Hutchings</h1>
	<br />

	<p>Hello, welcome to my website!</p>
	<p>Please follow either of the following links to learn more about me</p>
	<br />

	<div class="buttons">
		<a href="/cv"><button>CV</button></a>
		<a href="/portfolio"><button>Portfolio</button></a>
	</div>
</section>

<style>
	.canvas {
		position: fixed;
		width: 100vw;
		height: 100vh;
		top: 0;
		left: 0;
		z-index: -1;
		pointer-events: none;
	}
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 0.6;
	}

	h1 {
		width: 100%;
	}

	p {
		font-size: 1.2rem;
	}

	.buttons {
		display: flex;
		gap: 4rem;
	}

	button {
		border: 2px solid;
		border-color: var(--color-text);
		border-radius: 5px;
		padding: 6px;
		background: transparent;
		transition: filter 300ms;
		cursor: pointer;
		color: var(--color-text);
		width: 120px;
		font-size: 1.4rem;
	}
	button:hover {
		filter: brightness(1.5);
	}
</style>
