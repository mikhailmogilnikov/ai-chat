<script lang="ts">
	import { ModeWatcher } from 'mode-watcher';
	import '~/app.css';
	import { Header } from '~/widgets/header';

	let { children } = $props();
</script>

<ModeWatcher />
<Header />

<main>
	{@render children()}
</main>
