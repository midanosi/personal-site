<script>
	import Chip from './Chip.svelte';
	import Divider from './Divider.svelte';
	// export const ssr = false;

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

<article class="cv">
	<!-- <article class="cv"> -->
	<section class="header">
		<h1 class="my-name">MICHAEL HUTCHINGS</h1>
		<h3 class="job-title">Frontend Developer</h3>
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
			<li class="has-icon icons-only">
				<a href="https://www.linkedin.com/in/michael-hutchings-64a884104/">
					<img alt="linkedin logo" src="icons/linkedin-brands.svg" class="list-icon" />
				</a>
				<a href="https://github.com/midanosi">
					<img alt="github logo" src="icons/github-brands.svg" class="list-icon" />
				</a>
				<a href="https://gitlab.com/midanosi">
					<img alt="gitlab logo" src="icons/gitlab-brands.svg" class="list-icon" />
				</a>
			</li>
		</ul>
		<p class="summary-paragraph">
			JavaScript developer with 4 years experience in building robust and slick user interfaces.
			Whilst I specialise in frontend development, I‘m both acquainted with and am comfortable
			bleeding into neighbouring disciplines; Backend Development, Automated Testing, DevOps, and
			UI/UX design. I’m looking to join a collaborative team to create great products.
		</p>
	</section>
	<section aria-label="left-hand column" class="lhs-col">
		<section>
			<h2>Experience</h2>
			<h3>Cambridge Consultants</h3>
			<h4>Senior Engineer</h4>
			<ul class="inline-data">
				<li class="has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Jan 2021 - Ongoing</p>
				</li>
				<li class="has-icon">
					<img alt="location marker icon" src="icons/map-marker-alt-solid.svg" class="list-icon" />
					<p>Cambridge, UK</p>
				</li>
			</ul>
			<h4>Engineer</h4>
			<ul class="inline-data">
				<li class="has-icon">
					<img alt="calendar icon" src="icons/calendar-regular.svg" class="list-icon" />
					<p>Jan 2019 - Jan 2021</p>
				</li>
			</ul>
			<ul>
				<li>
					Delivered customised and complex UI features to specification across several client and
					internal projects
				</li>
				<li>Sole frontend developer on 3 projects (team size: ~5, project length: 3-6 months)</li>
				<li>
					Contributed to early-stage meetings to discuss project goals and outline technical
					specifications and trade-offs
				</li>
				<li>Regularly presented new UI features to clients and project stakeholders</li>
				<li>
					Frequently collaborated with colleagues across different disciplines (Backend, Design,
					AI), often contributed to technical discussions outside of typical domain
				</li>
				<li>
					Researched & trialled new tools that had the potential to benefit the team, e.g. Cypress,
					Svelte, XState, TypeScript, Yarn, Snowpack, Vite, pnpm
				</li>
				<li>
					Created and maintained automated test suites for most projects, to give confidence in each
					release
				</li>
				<li>Acted as both buddy & mentor for a placement student in our team</li>
				<li>
					Assisted in the interview process; screening CVs, revamping outdated interview question
					content, conducting office tours for candidates, and co-running the interviews themselves
					(recently)
				</li>
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
			<!-- <p>
				Joined the Web team as a frontend developer. The application was written with Backbone.js,
				templating with Handlebars, styling with Less.css.
			</p> -->
			<ul>
				<li>Coded entirely new features of the web application</li>
				<li>Fixed a multitude of bugs</li>
				<li>Ticket management; updated descriptions, assigned priorities, closed old tickets</li>
				<li>Before a release, would collate relevant tickets into a team kanban board</li>
				<li>Pre-release manual testing (due to a lack of an automated test suite)</li>
				<li>Committed to and succeeded in meeting short deadlines often</li>
			</ul>
		</section>

		<Divider />

		<!-- <section>
			<div class="career-gap-title-line">
				<p class="title">Notable career gap:</p>
				<p class="period">Jan 2018 - Dec 2018</p>
			</div>
			<p>
				An interrupted ski season + serious accident that took many months to recover from. Happy to
				convey in broad strokes in confidentiality if requested.
			</p>
		</section> -->

		<section>
			<h3>CGI</h3>
			<h4>Manual Software Tester ("Analyst Programmer")</h4>
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
				<li>Worked on a large test team on the Galileo Satellite Navigation System project</li>
				<li>Instilled great technical communication skills, by need of precise bug reporting</li>
				<li>Performed a full test suite in front of clients over a two week period</li>
				<li>Mentored several new joiners and helped onboard them</li>
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
			<h2>Key Skills</h2>
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
				{#each skills.libraries.aesthetical as item}
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

		<section>
			<h2>Referees</h2>
			<ul>
				<li>Available on request</li>
			</ul>
		</section>
	</section>
	<footer>
		<p>Icons by <a href="https://fontawesome.com">Font Awesome</a></p>
	</footer>
</article>

<style lang="scss">
	:global {
		--accent-color: maroon;
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
		color: var(--heading-color);
	}

	p,
	li {
		font-size: 0.8rem;
		/* font-weight: 500; */
		font-variation-settings: var(--medium);
		color: hsla(0, 0%, 40%, 80%);
	}
	article.cv {
		position: relative;
		background: white;
		margin: 2rem auto; // remove this when saving to pdf with puppeteer
		padding: 2rem;

		width: 793px; // a4 dimensions
		height: 1122px; // a4 dimensions
		transform-origin: top left;

		display: grid;
		grid-template-areas:
			'header header'
			'lhs-col rhs-col';
		grid-template-columns: 5fr 2fr;
		grid-template-rows: auto 1fr;

		grid-gap: 1rem 2rem;

		/* aspect-ratio: 1/1.618; */
		color: black;
	}
	.header {
		grid-area: header;
	}
	.my-name {
		text-align: left;
		margin-bottom: 0.5rem;

		width: fit-content;
		border-bottom: 2px solid var(--accent-color);
	}
	ul.personal-info {
		margin: 0;
		margin-bottom: 0.25rem;
		padding: 0;

		display: flex;
		gap: 0 2.5rem;
		flex-wrap: wrap;

		li {
			font-size: 0.9rem;
			color: hsla(0, 0%, 40%, 80%);
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
		gap: 0.25rem;
	}

	.rhs-col {
		grid-area: rhs-col;

		display: flex;
		flex-direction: column;
		gap: 0.5rem;
	}
	.tags-row {
		font-size: 0.75rem;

		display: flex;
		flex-wrap: wrap;
		gap: 2px 0.25rem;
		margin-bottom: 0.25rem;
	}

	/* .career-gap-title-line {
		display: flex;
		align-items: center;
		gap: 0.5rem;

		.title {
			font-variation-settings: var(--bold);
			font-size: 1rem;
		}
	} */

	ul.inline-data {
		display: flex;
		gap: 0.5rem 5rem;
		flex-wrap: wrap;
	}
	ul.interests {
		display: flex;
		justify-content: space-between;
		gap: 0.125rem 2rem;
		flex-wrap: wrap;
		padding: 0;

		li {
			width: 40%;
		}
	}

	// list icons
	li.has-icon {
		display: flex;
		align-items: center;
		gap: 0.5rem;

		img.list-icon {
			width: 12px;
		}

		&.icons-only {
			gap: 1rem;

			img.list-icon {
				width: 16px;
			}
		}
	}

	footer {
		position: absolute;
		bottom: 2px;
		right: 5px;

		p {
			font-size: 0.5rem;
		}
	}
</style>
