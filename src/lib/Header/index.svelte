<script>
	import { page } from '$app/stores';
</script>

<header>
	<nav>
		<ul>
			<li class:active={$page.path === '/'}><a sveltekit:prefetch href="/">Home</a></li>
			<li class:active={$page.path === '/portfolio'}>
				<a sveltekit:prefetch href="/portfolio">Stuff I've made</a>
			</li>
			<li class:active={$page.path === '/cv'}><a sveltekit:prefetch href="/cv">CV</a></li>
			<li class:active={$page.path === '/blog'}><a sveltekit:prefetch href="/blog">Blog</a></li>
			<li class:active={$page.path === '/codesandboxes'}>
				<a sveltekit:prefetch href="/codesandboxes">CodeSandboxes</a>
			</li>
			<li class:active={$page.path === '/about'}><a sveltekit:prefetch href="/about">About</a></li>
		</ul>
		<div class="gap" />
		<ul class="repo-links">
			<li><a href="https://github.com/midanosi" class="">github</a></li>
			<li><a href="https://gitlab.com/midanosi" class="">gitlab</a></li>
		</ul>
	</nav>

	<div class="corner">
		<div class="corner-triangle" />
	</div>
</header>

<style>
	header {
		display: flex;
		justify-content: space-between;
	}

	.corner {
		width: 3em;
		height: 3em;
	}

	nav {
		display: flex;
		justify-content: center;
		/* --background: rgba(255, 255, 255, 0.7); */
		padding-right: 5px;
	}

	.gap {
		width: 30px;
	}

	ul {
		position: relative;
		padding: 0;
		margin: 0;
		height: 3em;
		display: flex;
		justify-content: center;
		align-items: center;
		list-style: none;
		background: var(--background);
		background-size: contain;
	}

	li {
		position: relative;
		height: 100%;
	}

	ul.repo-links {
		background: none;
	}

	li.active::before {
		--size: 3px;
		content: '';
		width: 0;
		height: 0;
		position: absolute;
		bottom: 2px;
		left: 50%;
		transform: translateX(-50%);
		width: 20px;
		border: var(--size) solid transparent;
		border-top: var(--size) solid var(--accent-color);
	}

	nav a {
		display: flex;
		height: 100%;
		align-items: center;
		padding: 0 1em;
		color: var(--heading-color);
		font-weight: 700;
		font-size: 0.8rem;
		text-transform: uppercase;
		letter-spacing: 10%;
		text-decoration: none;
		transition: color 0.2s linear;
	}

	a:hover {
		color: var(--accent-color);
	}

	.corner-triangle {
		--width: 25px;
		--margin: 10px;

		position: absolute;
		top: var(--margin);
		right: var(--margin);

		max-height: var(--width);
		max-width: var(--width);
		border-top: var(--width) solid var(--accent-color);
		border-right: var(--width) solid var(--accent-color);

		border-left: var(--width) solid transparent;
		border-bottom: var(--width) solid transparent;
	}
</style>
