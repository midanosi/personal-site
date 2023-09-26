<script>
	import Header from "../lib/components/Header.svelte";
	import { page } from "$app/stores";
	import "./reset.css";
	import "./app.css";
	import "./styles.css";
	import "bigger-picture/css";
	import { Canvas } from "@threlte/core";
	import OrbitingParticles from "$lib/components/OrbitingParticles.svelte";
</script>

{#if $page.url.search.includes("?embed")}
	<slot />
{:else}
	<div class="canvas">
		<Canvas>
			<OrbitingParticles />
		</Canvas>
		<div class="fadeout" />
	</div>
	<div class="app">
		<Header />

		<main>
			<slot />
		</main>

		<footer />
	</div>
{/if}

<style>
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 0;
		width: 100%;
		max-width: 55rem;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 12px;
	}

	@media (min-width: 480px) {
		footer {
			padding: 12px 0;
		}
	}

	.canvas {
		position: fixed;
		width: 100vw;
		height: 100vh;
		top: 0;
		left: -45vw;
		bottom: 0;
		z-index: -1;
		pointer-events: none;
	}
</style>
