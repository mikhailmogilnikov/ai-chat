<script lang="ts">
	import { CaretRight } from 'phosphor-svelte';

	let value = $state('');
	let inputElement: HTMLInputElement;

	function handleSubmit(event: Event) {
		event.preventDefault();
		console.log(value);
		value = '';
		inputElement.focus();
	}
</script>

<div class="bg-default w-full overflow-hidden rounded-full p-2">
	<form onsubmit={handleSubmit} class="flex w-full items-center gap-2">
		<label for="message" class="sr-only">Введите сообщение</label>
		<input
			id="message"
			bind:value
			bind:this={inputElement}
			type="text"
			class="h-9 w-full rounded-full px-2"
			placeholder="Введите сообщение..."
		/>
		<button
			class="bg-primary hover:bg-primary/80 text-primary-foreground group flex aspect-square w-10 items-center justify-center rounded-full transition-[background-color,scale] active:scale-95"
			onclick={handleSubmit}
			type="submit"
			disabled={!value}
			aria-label="Отправить сообщение"
			aria-disabled={!value}
		>
			<CaretRight
				class="size-5 transition-transform group-hover:scale-110 group-hover:-rotate-90"
				weight="bold"
			/>
		</button>
	</form>
</div>
