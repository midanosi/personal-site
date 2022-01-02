<script>
	import Chip from './Chip.svelte';
	import Divider from './Divider.svelte';
	// export const ssr = false;

	import html2pdf from 'html2pdf.js';
	console.log(`html2pdf`, html2pdf);
	let pdfRef;

	function saveAsPdf() {
		if (!pdfRef) return;
		console.log(`pdfRef`, pdfRef);
		console.log(`pdfRef.innerHTML`, pdfRef.innerHTML);

		html2pdf(pdfRef);
	}

	const skills = {
		language: ['JavaScript', 'TypeScript', 'HTML/CSS', 'Python'],
		frameworks: ['React', 'Svelte', 'Next.js', 'SvelteKit', '(open to using Vue)'],
		devops: ['git', 'GitLab CI/CD', 'Firebase', 'AWS', 'Azure'],
		libraries: {
			state: ['Zustand', 'XState', 'Redux + Toolkit', 'Jotai'],
			aesthetical: ['Three.js', 'React Three Fiber', 'GSAP', 'Framer', 'react-spring'],
			test: ['Jest', 'Testing Library', 'Cypress']
		},
		os: ['MacOS', 'Linux', 'Windows']
	};
</script>

<svelte:head>
	<title>CV</title>
</svelte:head>

<button on:click={saveAsPdf}>Save to pdf</button>
<article class="cv" bind:this={pdfRef}>
	<!-- <article class="cv"> -->
	<section class="header">
		<h1 class="name">MICHAEL HUTCHINGS</h1>
		<h3 class="job-title">Frontend Web Developer</h3>
		<ul class="contact-info">
			<li class="email">mdhutchings94@gmail.com</li>
			<li class="phone">+447504605355</li>
			<li class="location">Cambridge, UK</li>
			<li class="github">midanosi</li>
			<li class="gitlab">midanosi</li>
		</ul>
	</section>
	<section aria-label="left-hand column" class="lhs-col">
		<h2>Experience</h2>

		<h2>Education</h2>
		<p>B.Sc Mathematics (copy wording from old cv?)</p>
	</section>

	<section aria-label="right-hand column" class="rhs-col">
		<h2>Key Skills</h2>
		<div class="tags-row">
			{#each skills.language as item}
				<Chip text={item} />
			{/each}
		</div>
		<div class="divider" />
		<Divider />
		<div class="tags-row" />
		<div class="divider" />
		<div class="tags-row" />

		<h2>Interests</h2>
		<ul>
			<li>stuff</li>
		</ul>

		<h2>Referees</h2>
		<ul>
			<li>one</li>
			<li>two</li>
		</ul>
	</section>
</article>

<style lang="scss">
	:global {
		--accent-color: maroon;
	}
	article.cv {
		background: white;
		margin: 2rem auto;

		--devicePixelRatio: 2;
		/* width: 2480px; // a4 dimensions
		height: 3508px;// a4 dimensions */
		width: 793px; // a4 dimensions
		height: 1122px; // a4 dimensions

		/* width: 21cm; // a4 dimensions
		height: 29.7cm; // a4 dimensions */
		--scale-down: 2;
		/* transform: scale(1/(var(--devicePixelRatio)*var(--scale-down))); */
		/* transform: scale(0.5); */

		transform-origin: top left;

		padding: 2rem;

		display: grid;
		grid-template-areas:
			'header header'
			'lhs-col rhs-col';
		grid-template-columns: '3fr 2fr';
		grid-template-rows: auto;

		grid-gap: 1rem 2rem;

		/* aspect-ratio: 1/1.618; */
		color: black;
	}
	.header {
		grid-area: header;

		.name {
			text-align: left;
			font-size: 1.2rem;
			border: none;
			color: hsla(0, 0%, 40%, 60%);
			font-weight: light;
		}

		ul {
			display: flex;
			gap: 0.5rem 2.5rem;
			flex-wrap: wrap;
			margin: 0;
			padding-left: 1rem;
		}
		ul li {
			color: hsla(0, 0%, 40%, 60%);
			/* font-style: italic; */
			&::marker {
				color: var(--accent-color);
				color: maroon;
			}
		}
	}

	.lhs-col {
		grid-area: lhs-col;

		display: flex;
		flex-direction: column;
		gap: 0.5rem;
	}

	.rhs-col {
		grid-area: rhs-col;

		display: flex;
		flex-direction: column;
		gap: 0.5rem;

		.tags-row {
			display: flex;
			flex-wrap: wrap;
			gap: 0.25rem;
		}
	}

	.section-title {
		text-transform: uppercase;
		border-bottom: 3px solid var(--primary-color);
		font-size: bold;
	}
</style>
