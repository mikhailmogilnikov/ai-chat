<script lang="ts">
	import '~/app.css';
	import { Header } from '~/widgets/header';

	let { children } = $props();
</script>

<Header />

<main>
	{@render children()}
</main>
