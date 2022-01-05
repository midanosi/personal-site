<h1 class="page-title">Stuff I've made</h1>

<h2>Internal (Public) Projects from Work</h2>
<ul>
	<li>Monumental</li>
	<li>WDS Demos GSAP</li>
	<li>Netflix clone (WDS Demos)</li>
</ul>

<h2>Pet Project Websites</h2>

<ul>
	<li>Time Tracker</li>
	<li>Holiday Dashboard</li>
	<li>MKRecords (designs and site)</li>
	<li>NonZZMT Site</li>
</ul>

<h2>3D/Design Experiments</h2>
<ul>
	<li>r3f flex-menu codesandbox</li>
	<li>r3f obscuring label</li>
	<li>r3f exploding cube</li>
	<li>generative art (from frontendmasters course)</li>
	<li>new tab colour-changing selector thing</li>
	<li>logo animations</li>
</ul>

<div class="portfolio">
	<h1 class="section-title">Internal (Public) Projects from Work</h1>
	<article>
		<div class="item">
			<h2 class="name">Monumental</h2>
			<div class="desc">
				<p>
					This was a project to visualise the live inference of a Machine Learning algorithm,
					applied against a custom bridge-building game, trained on real-word physics. I was very
					happy with resulting look and functionality of the demo. The (fantastic) design was done
					by a coworker of mine. One of the images shows my first shoddy attempt, and also v1 of the
					demo, which was completed before.
				</p>
				<p>
					The animation is done directly with html5 canvas methods, and was quite a headache to
					figure out. I used the unusual combination of Svelte, and Mobx-State-Tree for state
					management. Exploring MST was worthwhile and fun, but I don't think I'll be using it
					again.
				</p>
				<p>
					Unfortunately the AI part of the project didn't meet the desired goals, so these several
					months of graft didn't gain much exposure.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">Complex GSAP Animation</h2>
			<div class="desc">
				<p>
					This was part of a small project to try and present some of the public-facing projects our
					division had completed in the past. I converted a static powerpoint presentation slide
					into a complex animation using GSAP and it's great "timeline" feature. It took quite a
					long while.
				</p>
				<p>
					What I learnt from this is that if you want to make a complex animation, and there's no
					need for interactivity, then just make a static video with video editing software. Only
					code it as a web animation if interactivity is required.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">Netflix Menu Clone</h2>
			<div class="desc">
				<p>
					I made this with a coworker as part of the same project to present past public-facing
					projects. It's controllable with keyboard or mouse. Some of the animations and behaviour
					were super hard to nail down to be bug-free. The web is not built to construct this kind
					of non-standard menu easily! We also aimed to see if we could run it on a Fire TV Stick.
				</p>
				<p>
					What I learnt: Old Fire TV Sticks are super under-powered, and full-screen fade
					transitions are expensive animations!
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>

	<h1 class="section-title">Pet Project Websites</h1>

	<article>
		<div class="item">
			<h2 class="name">Time Tracker</h2>
			<div class="desc">
				<p>Tracking time in consultancy is hard</p>
				<p>Svelte</p>
				<p>Not released. Few bugs, but I have been using this myself for the last 1.5 years.</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">Holiday Dashboard</h2>
			<div class="desc">
				<p>
					Made this out of frustration of visualising the amount of holiday I have taken/have
					remaining.
				</p>
				<p>Built from CRA, hence the React "blue"</p>
				<p>
					Once again, very custom to scrape data from company's internal data (plan was to make it
					usable by anyone in company, but turned out impossible), and super buggy, but once again,
					I've been using this myself for the last 2 years.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">"MKRecords" Site</h2>
			<div class="desc">
				<p>
					Growing up, using the Players Page sites a lot. When I heard a team was coming together to
					try revamp them, I really wanted to be part of it to try take it in a good direction.
				</p>
				<p>
					Made designs. Some of it I think is great, some of it overkill. Coded some of it too, but
					there was no momentum and no-one else actively working on the project, and real-life was
					kicking me in the bum without the stress of committing to doing this huge task on my own,
					so I left the project.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">NonZZMT Site</h2>
			<div class="desc">
				<p>
					I made this in 2015 and 2017. It's goddawful, but it's my first website. Made using
					JQuery, MySQL and PHP.
				</p>
				<p>
					I'm not ever sharing the code because it is genuinely horrendous. Bit of fun to share
					where I started from though.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>

	<h1 class="section-title">3D/Design Experiments</h1>
	<article>
		<div class="item">
			<h2 class="name">r3f flex-menu codesandbox</h2>
			<div class="desc">
				<p>
					I'm constantly interested and inspired by Paul Henschel's tweets about react-three-fiber
					(r3f) and what you can easily do with it. I'm generally interested in using r3f more,
					because I want to make 3d things in the web, but whenever I looked at three.js code in the
					past, it made me think "oh christ there's so much boilerplate, god no". (I have heard of
					svelte-cubed, am excited about that too!) This was a quick thing I made using flex library
				</p>
			</div>
			<div class="content">
				Put codesandbox here
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">r3f obscuring label</h2>
			<div class="desc">
				<p>
					Another experiment, basically copying what was done in this Earth demo: (sandbox link)
				</p>
			</div>
			<div class="content">
				Put codesandbox here
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">r3f exploding cube</h2>
			<div class="desc">
				<p>
					Making this lead me to discovering a bug in react-spring, which I raised a ticket for, and
					eventually fixed myself! First OSS contribution I think :D
				</p>
			</div>
			<div class="content">
				Put codesandbox here
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">r3f exploding cube</h2>
			<div class="desc">
				<p>Generative art, from this frontendmasters course: (link)</p>
				<p>
					Go do this course, it's fun and short, and shows how you can build up from nothing to
					something with few simple techniques.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">tab menu with changing colour underline</h2>
			<div class="desc">
				<p>
					I was trying to make a clone of the New Tab extension "moment", but got distracted and
					only made this animation and nothing much else.
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">CC logo animations</h2>
			<div class="desc">
				<p>
					When learning the differences and pros/cons of doing animations in CSS vs JS, I decided to
					use company's logo as a test subject!
				</p>
				<p>
					Quite happy with how these turned out, but I only showed these to my team, not the wider
					company. Was only an experiment.
				</p>
				<p>
					Code here: (code won't run as I haven't included the logo files for obvious reasons)
					(link)
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article>
		<div class="item">
			<h2 class="name">Blob Menu & Button Hover effect</h2>
			<div class="desc">
				<p>
					Two random effects I made once. Never used, but just wanted to document it so it's not
					lost to time!
				</p>
				<p>Code here: (link)</p>
			</div>
			<div class="content">
				<img src="pastprojects/first time tracker.png" />
			</div>
		</div>
	</article>
</div>

<style lang="scss">
	.portfolio {
		width: fit-content;
		margin: 0 auto;
	}
	h1.page-title {
		text-decoration: underline;
		margin-bottom: 2rem;
	}
	h1.section-title {
		margin-bottom: 1rem;
		text-decoration: underline;
	}

	.item {
		display: grid;

		grid-template-areas:
			'name'
			'desc'
			'content';
		grid-template-columns: 600px;
		grid-template-rows: 2.5rem auto auto;
		grid-gap: 0.5rem 3rem;

		h2.name {
			grid-area: name;
			font-size: 1.5rem;
		}
		.desc {
			grid-area: desc;

			p {
				margin-bottom: 1rem;
			}
		}
		.content {
			grid-area: content;
			/* padding: 5rem; */
			padding-top: 1rem;
			padding-bottom: 5rem;
		}
	}
	@media screen and (min-width: 1200px) {
		.item {
			grid-template-areas:
				'name content'
				'desc content';
			grid-template-columns: 500px 600px;
			grid-template-rows: 2.5rem auto;
		}
	}
	img {
		width: 100%;
	}
	.divider {
		width: 300px;
		height: 2px;
		background: var(--accent-color);
		opacity: 0.2;
		margin: 0.5rem auto 3rem;
	}
</style>
