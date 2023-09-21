<script>
	import { Link } from 'lucide-svelte';
	import Chip from '../../lib/components/Chip.svelte';
	import Divider from '../../lib/components/Divider.svelte';

	const skills = {
		language: ['JavaScript', 'TypeScript', 'HTML/CSS', 'Python'],
		frameworks: ['React', 'Svelte', 'SvelteKit', 'Next.js', 'open to other frameworks'],
		devops: ['git', 'GitLab CI/CD', 'Firebase', 'AWS', 'Azure'],
		libraries: {
			state: ['Zustand', 'XState', 'Redux + Toolkit', 'Jotai', 'react-query'],
			animation_3d: ['React Three Fiber', 'GSAP', 'Threlte', 'Three.js', 'react-spring'],
			test: ['Playwright', 'Vitest', 'Jest', 'Testing Library', 'Cypress'],
			design: ['Framer', 'Figma'],
		},
		os: ['MacOS', 'Linux', 'Windows'],
	};
	const pdf = false;
</script>

<svelte:head>
	<title>CV</title>
</svelte:head>

<div class="mobile-disclaimer">
	This page is not optimised for mobile! Best viewed on desktop. If you need this in pdf format,
	please email me at mdhutchings94@gmail.com
</div>

<article class="cv" class:pdf>
	<section class="top-section">
		<h1 class="my-name">MICHAEL HUTCHINGS</h1>
		<div class="my-lists">
			<ul class="personal-info">
				<li class="has-icon">
					<img alt="at symbol" src="icons/at-solid.svg" class="list-icon" />mdhutchings94@gmail.com
				</li>
				<li class="has-icon">
					<img alt="phone" src="icons/phone-solid.svg" class="list-icon" />+447504605355
				</li>
				<li class="has-icon">
					<img
						alt="location-marker"
						src="icons/map-marker-alt-solid.svg"
						class="list-icon"
					/>Cambridge, UK
				</li>
			</ul>
			<ul class="personal-info">
				<li class="has-icon show-text-in-pdf">
					<a href="https://main--midanosi.netlify.app">
						<Link color="black" class="list-icon w-[12px]" />
						<p>main--midanosi.netlify.app</p>
					</a>
				</li>
				<li class="has-icon show-text-in-pdf">
					<a href="https://github.com/midanosi">
						<img alt="github logo" src="icons/github-brands.svg" class="list-icon" />
						<p>midanosi</p>
					</a>
				</li>
				<li class="has-icon show-text-in-pdf">
					<a href="https://gitlab.com/midanosi">
						<img alt="gitlab logo" src="icons/gitlab-brands.svg" class="list-icon w-6" />
						<p>midanosi</p>
					</a>
				</li>
			</ul>
		</div>
	</section>

	<section class="summary">
		<h3 class="job-title">Frontend TS/JS Developer</h3>
		<p class="summary-paragraph">
			with <b>5 years</b> experience in building robust and slick user interfaces.
			<!-- <br /> -->
			I specialise in frontend development, and also work in neighbouring disciplines;
			<b>backend development, UI/UX design,</b> and <b>automated testing</b>.
			<br />
			I’m looking to join a collaborative team to build functional and engaging applications!
		</p>
	</section>

	<section aria-label="left-hand column" class="lhs-col">
		<h2>Experience</h2>
		<section>
			<h3>Evonetix</h3>
			<h4>Senior Engineer</h4>
			<ul class="inline-data">
				<li class="has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Apr 2022 - Mar 2023</p>
				</li>
				<li class="has-icon">
					<img alt="location marker icon" src="icons/map-marker-alt-solid.svg" class="list-icon" />
					<p>Cambridge, UK</p>
				</li>
			</ul>
			<ul>
				<li>
					Developed in-house "recipe" generation website used in the DNA synthesis process
				</li>
				<li>
					Created feature mockups and wireframes, and iterated on designs with scientists and
					software engineers
				</li>
				<li>Mentored junior team members in programming and team-working skills</li>
				<li>
					Fostered a team habit of pragmatic documentation
				</li>
				<li>
					Evaluated current browser automation tools and created a Playwright test suite
				</li>
			</ul>
		</section>

		<Divider />

		<section>
			<h3>Cambridge Consultants</h3>
			<h4>Senior Engineer</h4>
			<ul class="inline-data">
				<li class="has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Jan 2021 - Apr 2022</p>
				</li>
				<li class="has-icon">
					<img alt="location marker icon" src="icons/map-marker-alt-solid.svg" class="list-icon" />
					<p>Cambridge, UK</p>
				</li>
			</ul>
			<ul>
				<li>
					Sole frontend developer on 3 client projects (team size: ~5, each project length: 3-6
					months)
				</li>
				<li>Proposed and developed new features for clients</li>
				<li>Stepped in to also develop the backend for one project when it was required</li>
				<li>
					Greater involvement in interview process; screening CVs, revamping outdated interview
					question content, conducting office tours for candidates, and co-running some interviews
				</li>
			</ul>
			<div style="height: 6px" />
			<h4>Engineer</h4>
			<ul class="inline-data">
				<li class="has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Jan 2019 - Jan 2021</p>
				</li>
				<li class="has-icon">
					<img alt="location marker icon" src="icons/map-marker-alt-solid.svg" class="list-icon" />
					<p>Cambridge, UK</p>
				</li>
			</ul>
			<ul>
				<li>
					Delivered customised and complex UI features across several client and internal projects
				</li>
				<li>Regular presentations of UI work to clients and project stakeholders</li>
				<li>
					Collaborated across different disciplines (Backend, Design, AI), contributed to technical
					discussions outside of my typical domain
				</li>
				<li>
					Trialled emerging tools; e.g. Cypress, Svelte, XState, TypeScript, Yarn, Vite,
					pnpm
				</li>
				<li>Created and maintained automated test suites for numerous projects</li>
				<li>Acted as both buddy & mentor for a placement student in our team</li>
			</ul>
		</section>

		<Divider />

		<section>
			<h3>Luminance</h3>
			<h4>Web Developer</h4>
			<ul class="inline-data">
				<li class="has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Jan 2018 - Dec 2018</p>
				</li>
				<li class="has-icon">
					<img alt="location marker icon" src="icons/map-marker-alt-solid.svg" class="list-icon" />
					<p>Cambridge, UK</p>
				</li>
			</ul>
			<ul>
				<li>Coded many new features of the web application, committed many bug fixes</li>
				<li>Successfully met numerous short and intense deadlines</li>
				<li>
					Organised and prioritised tickets onto a kanban board for each release
				</li>
			</ul>
		</section>

		<Divider />

		<section>
			<h3>CGI</h3>
			<h4>Manual Software Tester</h4>
			<ul class="inline-data">
				<li class="period has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Aug 2014 - Aug 2015</p>
				</li>
				<li class="location has-icon">
					<img alt="location marker icon" src="icons/map-marker-alt-solid.svg" class="list-icon" />
					<p>Leatherhead, UK</p>
				</li>
			</ul>
			<ul>
				<li>Worked on the Galileo Satellite Navigation System project</li>
				<li>
					Became a thorough and exact manual software tester. At end of year, performed a full test
					suite in front of clients over a two week period
				</li>
				<li>
					Improved technical communication skills, driven by necessarily precise bug reports
				</li>
			</ul>
		</section>
	</section>

	<section aria-label="right-hand column" class="rhs-col">
		<section>
			<h2>Education</h2>
			<h3>University of Bath</h3>
			<li class="period has-icon">
				<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
				<p>Sept 2012 - June 2016</p>
			</li>
			<h4>
				BSc (Hons) Mathematics <p>(with Sandwich Placement)</p>
			</h4>
			<ul>
				<li>
					Classification: <b>1st</b>
				</li>
			</ul>
		</section>
		<section>
			<h2>Skills</h2>
			<div class="tags-row">
				{#each skills.language as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.frameworks as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.devops as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.libraries.state as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.libraries.animation_3d as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.libraries.design as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.libraries.test as item}
					<Chip text={item} />
				{/each}
			</div>
			<Divider />
			<div class="tags-row">
				{#each skills.os as item}
					<Chip text={item} />
				{/each}
			</div>
		</section>
		<section>
			<h2>Interests</h2>
			<ul class="interests">
				<li class="has-icon">
					<img alt="skier icon" src="icons/skiing-solid.svg" class="list-icon" />Skiing
				</li>
				<li class="has-icon">
					<img alt="jogging icon" src="icons/running-solid.svg" class="list-icon" />Running
				</li>
				<li class="has-icon">
					<img
						alt="headphones icon"
						src="icons/headphones-alt-solid.svg"
						class="list-icon"
					/>Synthwave
				</li>
				<li class="has-icon">
					<img
						alt="headphones icon"
						src="icons/headphones-alt-solid.svg"
						class="list-icon"
					/>Electronic
				</li>
			</ul>
		</section>

		<!-- <section>
			<h2>Referees</h2>
			<ul>
				<li>Available on request</li>
			</ul>
		</section> -->
	</section>
	<footer>
		<p>Icons by <a href="https://fontawesome.com">Font Awesome</a></p>
	</footer>
</article>

<style lang="scss">
	:root {
		--accent-color: #a4243b99;
	}
	h1,
	h2,
	h3,
	h4 {
		color: black;
		font-variation-settings: var(--bold);
	}
	h1 {
		font-size: 1.5rem;
		font-variation-settings: var(--regular);
	}
	h2 {
		text-transform: uppercase;
		font-size: 2rem;
		border-bottom: 4px solid var(--accent-color);
		margin-bottom: 0.75rem;
	}
	h4 {
		color: var(--accent-color);
	}

	p,
	li {
		font-size: 0.7rem;
		/* font-weight: 500; */
		font-variation-settings: var(--medium);
		color: hsla(0, 0%, 40%, 90%);
	}
	p b {
		color: hsl(0, 0%, 40%);
	}
	article.cv {
		position: relative;
		background: white;
		padding: 2rem;

		/* aspect-ratio: 1/1.618; */
		width: 793px; /** a4 dimensions */
		// height: 1122px; /** a4 dimensions */
		transform-origin: top left;

		display: grid;
		grid-template-areas:
			'header header'
			'summary summary'
			'lhs-col rhs-col';
		grid-template-columns: 6fr 2fr;
		grid-template-rows: auto 1fr;

		grid-gap: 1.5rem 2rem;

		color: black;
	}
	.mobile-disclaimer {
		font-size: 1.5rem;
		padding: 2rem;
		display: none;
	}
	@media (min-width: 800px) {
		.mobile-disclaimer {
			display: none;
		}
	}
	section.top-section {
		grid-area: header;
		display: flex;
		justify-content: space-between;
	}
	.my-lists {
		display: flex;
		gap: 2rem;
	}
	.my-name {
		text-align: left;
		margin-bottom: 0.5rem;

		width: fit-content;
		height: fit-content;
		border-bottom: 2px solid var(--accent-color);
	}
	ul.personal-info {
		margin: 0;
		margin-bottom: 0.25rem;
		padding: 0;
	}
	ul.personal-info li {
		font-size: 0.9rem;
		color: hsla(0, 0%, 40%, 80%);
		&::marker {
			color: var(--accent-color);
			color: maroon;
		}
	}
	section.summary {
		grid-area: summary;
		margin-top: -2.5rem; // hack I know, deal with it
	}
	.summary-paragraph {
		text-wrap: balance;
	}
	// span.job-title {
	// 	color: black;
	// 	font-variation-settings: var(--bold);
	// 	font-size: 1.2rem;
	// 	margin-right: 0.4rem;
	// }

	.lhs-col {
		grid-area: lhs-col;

		display: flex;
		flex-direction: column;
		gap: 0.25rem;
	}

	.rhs-col {
		grid-area: rhs-col;

		display: flex;
		flex-direction: column;
		gap: 1rem;
	}
	.tags-row {
		font-size: 0.75rem;

		display: flex;
		flex-wrap: wrap;
		gap: 4px 0.25rem;
		margin-bottom: 0.25rem;
	}
	ul {
		padding-left: 1rem;
	}
	ul.inline-data {
		display: flex;
		gap: 0.5rem 5rem;
		flex-wrap: wrap;
		padding-left: 1rem;
		margin-bottom: 0.2rem;
	}
	ul.interests {
		display: flex;
		justify-content: space-between;
		gap: 0.125rem 2rem;
		flex-wrap: wrap;
		padding: 0;
	}
	ul.interests li {
		width: 40%;
	}

	/** list icons */
	li.has-icon, li.has-icon a {
		display: flex;
		align-items: center;
		gap: 0.5rem;
	}
	li.has-icon .list-icon {
		width: 12px;
	}

	footer {
		position: absolute;
		bottom: 2px;
		right: 5px;
	}
	footer p {
		font-size: 0.5rem;
	}

	:not(.pdf) li.show-text-in-pdf {
		height: 22px;
	}
</style>
