<script lang="ts">
	let value = $state('');

	function handleSubmit() {
		console.log(value);
		value = '';
	}
</script>

<div class="bg-default flex w-full items-center gap-2 overflow-hidden rounded-full p-2">
	<input
		bind:value
		type="text"
		class="h-9 w-full rounded-full px-2"
		placeholder="Введите сообщение..."
	/>
	<button
		class="bg-primary hover:bg-primary/80 text-primary-foreground aspect-square w-10 rounded-full transition-[background-color,scale] active:scale-95"
		onclick={handleSubmit}>Send</button
	>
</div>
