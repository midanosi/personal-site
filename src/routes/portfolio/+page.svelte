<h1 class="page-title">Stuff I've made</h1>

<nav class="menu">
	<p>
		TODO TODO TODO! shorten this list to a bunch of highlights, and move the rest to an exhaustive
		list page
	</p>
	<ul>
		<li>monumental</li>
		<li>MKRecords design</li>
		<li>time tracker</li>
		<li>recipe site (in progress)</li>
		<li>spyro animated (level, enter portal, level transition, land) (in progress)</li>
	</ul>
	<hr />
	<h2><a href="#ccinternal">Internal (Public) Projects whilst at Cambridge Consultants</a></h2>
	<ul>
		<li><a href="#monumental">Monumental</a></li>
		<li><a href="#complex-gsap-anim">WDS Demos GSAP</a></li>
		<li><a href="#netflix-menu-clone">Netflix clone (WDS Demos)</a></li>
	</ul>

	<h2><a href="#petproject">Pet Project Websites</a></h2>
	<ul>
		<li><a href="#recipe">TODO: recipe site</a></li>
		<li><a href="#spyro-scene">TODO: spyro scene </a></li>
		<li><a href="#time-tracker">Time Tracker</a></li>
		<li><a href="#mkrecords">MKRecords (designs and site)</a></li>
		<li><a href="#mapbox-test">TODO: mapbox test </a></li>
		<li><a href="#holiday-dashboard">Holiday Dashboard</a></li>
		<li><a href="#nonzzmt">NonZZMT Site</a></li>
	</ul>

	<h2><a href="#artyfarty">3D/Design Experiments</a></h2>
	<p>TODO change this into a compact square grid with very short caption</p>
	<ul>
		<li><a href="#threlte-outline-maze">threlte outline maze</a></li>
		<li><a href="#r3f-flexmenu">r3f flex-menu codesandbox</a></li>
		<li><a href="#r3f-obscurelabel">r3f obscuring label</a></li>
		<li><a href="#explodingcube">r3f exploding cube</a></li>
		<li><a href="#tabmenu">new tab colour-changing selector thing</a></li>
		<li><a href="#generativeartcourse">generative art (from frontendmasters course)</a></li>
		<li><a href="#cclogosanim">logo animations</a></li>
		<li><a href="#blobmenu">blob menu</a></li>
	</ul>
</nav>

<div class="portfolio">
	<h1 class="section-title" id="ccinternal">Internal (Public) Projects from Work</h1>
	<article id="monumental">
		<div class="item">
			<div class="desc">
				<h2 class="name">Monumental</h2>
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
				<!-- <img src="pastprojects/good bridge.png" /> -->
				<video controls width="100%">
					<source src="/pastprojects/monumental/24thSep-JustBridge-28s.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="complex-gsap-anim">
		<div class="item">
			<div class="desc">
				<h2 class="name">Complex GSAP Animation</h2>
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
				<video controls width="100%">
					<source
						src="/pastprojects/wdsdemos/solace gsap animation screencap.mov"
						type="video/mp4"
					/>
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="netflix-menu-clone">
		<div class="item">
			<div class="desc">
				<h2 class="name">Netflix Menu Clone</h2>
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
				<video controls width="100%">
					<source src="/pastprojects/wdsdemos/wds demos menu screencap.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<h1 class="section-title" id="petproject">Pet Project Websites</h1>

	<article id="time-tracker">
		<div class="item">
			<div class="desc">
				<h2 class="name">Time Tracker</h2>
				<p>
					In consultancy, tracking time across multiple projects is hard, especially when the
					timesheet software is Windows-only and I'm on a Macbook.
				</p>
				<p>Made with Svelte, and tried out Snowpack (before Vite won).</p>
				<p>
					Not released. Few bugs, but I have been using this myself every week and liking it for the
					last 1.5 years.
				</p>
			</div>
			<figure class="content">
				<img src="pastprojects/timetracker/timetracker.png" />
			</figure>
		</div>
	</article>
	<div class="divider" />
	<article id="holiday-dashboard">
		<div class="item">
			<div class="desc">
				<h2 class="name">Holiday Dashboard</h2>
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
				<img src="pastprojects/holidaydashboard/2021.png" />
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="mkrecords">
		<div class="item">
			<div class="desc">
				<h2 class="name">"MKRecords"</h2>
				<p>
					Growing up, I used the Mario Kart "Players Page" sites a lot (community time trial
					rankings). When I heard a team was coming together to try revamp them, I asked to be part
					of the team to help give the UI some good direction.
				</p>
				<p>
					I made some designs in Framer for different pages. Some of it was great, some of it was
					overkill. I coded some of it too, but there was no momentum and no-one else actively
					working on the project. On top of that, real-life was kicking me in the bum without the
					stress of committing to doing this huge task on my own, so I left the project :(
				</p>
			</div>
			<figure class="content">
				<img src="pastprojects/mkrecords/mkrecords submission page ideas.png" />
				<figcaption>Designs I made in Framer for a submission page</figcaption>
			</figure>
		</div>
	</article>
	<div class="divider" />
	<article id="nonzzmt">
		<div class="item">
			<div class="desc">
				<h2 class="name">NonZZMT Rankings Site</h2>
				<p>
					My first website, made in 2014, and 2017. Made using JQuery, MySQL and PHP (no longer live
					due to server costs).
				</p>
			</div>
			<div class="content">
				<img src="pastprojects/nonzzmt/rankingspage.png" />
			</div>
		</div>
	</article>

	<h1 class="section-title" id="artyfarty">3D/Design/Animation Experiments</h1>
	<article id="r3f-flexmenu">
		<div class="item">
			<div class="desc">
				<h2 class="name">r3f flex-menu codesandbox</h2>
				<p>
					I'm constantly interested and inspired by Paul Henschel's tweets about react-three-fiber
					(r3f) and what you can easily do with it. I'm generally interested in using r3f more,
					because I want to make 3d things in the web, but whenever I looked at three.js code in the
					past, it made me think "oh christ there's so much boilerplate, god no". (I have heard of
					svelte-cubed, am excited about that too!) This was a quick thing I made using flex library
				</p>
			</div>
			<div class="content">
				<video controls width="100%">
					<source src="/pastprojects/r3f/flex menu of geometry shapes.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="r3f-obscurelabel">
		<div class="item">
			<div class="desc">
				<h2 class="name">r3f obscuring label</h2>
				<p>
					Another experiment, basically copying what was done in this Earth demo: (sandbox link)
				</p>
			</div>
			<div class="content">
				<video controls width="100%">
					<source src="/pastprojects/r3f/html tooltips.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="explodingcube">
		<div class="item">
			<div class="desc">
				<h2 class="name">r3f exploding cube</h2>
				<p>
					Making this lead me to discovering a bug in react-spring, which I raised a ticket for, and
					eventually fixed myself! First OSS contribution I think :D
				</p>
			</div>
			<div class="content">
				<iframe
					src="https://codesandbox.io/embed/exploding-square-sine-forked-20qdf?fontsize=14&hidenavigation=1&theme=dark"
					style="width:100%; height:500px; border:0; border-radius: 4px; overflow:hidden;"
					title="exploding square (sine) (forked)"
					allow="accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; hid; microphone; midi; payment; usb; vr; xr-spatial-tracking"
					sandbox="allow-forms allow-modals allow-popups allow-presentation allow-same-origin allow-scripts"
				/>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="generativeartcourse">
		<div class="item">
			<div class="desc">
				<h2 class="name">Generative art thing</h2>
				<p>Generative art, from this frontendmasters course: (link)</p>
				<p>
					Go do this course, it's fun and short, and shows how you can build up from nothing to
					something with few simple techniques.
				</p>
			</div>
			<div class="content">image soon?</div>
		</div>
	</article>
	<div class="divider" />
	<article id="tabmenu">
		<div class="item">
			<div class="desc">
				<h2 class="name">tab menu with changing colour underline</h2>
				<p>
					I was trying to make a clone of the New Tab extension "moment", but got distracted and
					only made this animation and nothing much else.
				</p>
			</div>
			<div class="content">
				<video controls width="100%">
					<source src="/pastprojects/noseynewtab/noseynewtab.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="cclogo">
		<div class="item">
			<div class="desc">
				<h2 class="name">CC logo animations</h2>
				<p>
					When learning the differences and pros/cons of doing animations in CSS vs JS, I decided to
					use company's logo as a test subject!
				</p>
				<p>
					Quite happy with how these turned out, but I only showed these to my team, not the wider
					company. Was only an experiment.
				</p>
				<!-- <p>
					Code here: (code won't run as I haven't included the logo files for obvious reasons)
					(link)
				</p> -->
			</div>
			<div class="content">
				<video controls width="100%">
					<source src="/pastprojects/cclogosanim/anims.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
	<div class="divider" />
	<article id="blobmenu">
		<div class="item">
			<div class="desc">
				<h2 class="name">Blob Menu & Button Hover effect</h2>
				<p>
					Two random effects I made once. Never used, but just wanted to document it so it's not
					lost to time!
				</p>
				<!-- <p>Code here: (link)</p> -->
			</div>
			<div class="content">
				<video controls width="100%">
					<source src="/pastprojects/bitsandbobs/blob menu.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
</div>

<style>
	nav.menu h2 > a {
		color: var(--accent-color);
	}
	nav.menu li > a {
		color: white;
	}
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

	article {
		margin-bottom: 5rem;
	}

	.item {
		display: grid;
		padding: 1rem 0;

		grid-template-areas:
			'desc'
			'content';
		grid-template-columns: 600px;
		grid-gap: 0.5rem 3rem;
	}

	.item.desc {
		grid-area: desc;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	h2.name {
		font-size: 2rem;
		margin-top: 0.5rem;
	}
	p {
		margin-bottom: 1rem;
	}
	.content {
		grid-area: content;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	figcaption {
		margin-top: 0.25rem;
		font-size: 0.8rem;
		opacity: 0.9;
	}
	@media screen and (min-width: 1200px) {
		.item {
			grid-template-areas:
				'desc content'
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
