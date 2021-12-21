<script>
</script>

<article>
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
	<section class="lhs-col" />
</article>

<style lang="scss">
	:global {
		--accent-color: maroon;
	}
	article {
		background: white;
		margin: 2rem auto;
		width: 500px;

		padding: 2rem;

		display: grid;
		grid-template-areas:
			'header header'
			'lhs-col rhs-col';
		grid-template-columns: '3fr 2fr';
		grid-template-rows: auto;

		grid-gap: 1rem 2rem;

		aspect-ratio: 1/1.618;
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
	}

	.section-title {
		text-transform: uppercase;
		border-bottom: 3px solid var(--primary-color);
		font-size: bold;
	}
</style>
