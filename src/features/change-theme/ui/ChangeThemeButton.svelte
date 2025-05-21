<script lang="ts">
	import { toggleMode } from 'mode-watcher';
	import { Moon, Sun } from 'phosphor-svelte';
</script>

<button onclick={toggleMode} class="text-foreground bg-default relative size-8 rounded-full">
	<Sun
		class="absolute top-1/2 left-1/2 size-5 -translate-x-1/2 -translate-y-1/2 opacity-100 dark:opacity-0"
	/>
	<Moon
		class="absolute top-1/2 left-1/2 size-5 -translate-x-1/2 -translate-y-1/2 opacity-0 dark:opacity-100"
	/>
	<span class="sr-only">Переключить тему</span>
</button>
