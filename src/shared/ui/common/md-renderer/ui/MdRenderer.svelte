<script lang="ts">
	import Markdown from 'svelte-exmarkdown';

	interface Props {
		content: string;
	}

	const { content }: Props = $props();
</script>

<Markdown md={content}>
	{#snippet h1(props)}
		{@const { children, style, class: className, ...rest } = props}
		<h1 class="text-foreground text-4xl font-bold {className}" {...rest}>
			{@render children?.()}
		</h1>
	{/snippet}

	{#snippet h2(props)}
		{@const { children, style, class: className, ...rest } = props}
		<h2 class="text-foreground text-3xl font-bold {className}" {...rest}>
			{@render children?.()}
		</h2>
	{/snippet}

	{#snippet h3(props)}
		{@const { children, style, class: className, ...rest } = props}
		<h3 class="text-foreground text-2xl font-bold {className}" {...rest}>
			{@render children?.()}
		</h3>
	{/snippet}

	{#snippet p(props)}
		{@const { children, style, class: className, ...rest } = props}
		<p class="text-foreground leading-relaxed {className}" {...rest}>
			{@render children?.()}
		</p>
	{/snippet}

	{#snippet a(props)}
		{@const { children, style, class: className, href, ...rest } = props}
		<a
			{href}
			class="text-primary hover:text-primary/80 font-medium underline underline-offset-2 transition-colors {className}"
			target="_blank"
			rel="noopener noreferrer"
			{...rest}
		>
			{@render children?.()}
		</a>
	{/snippet}

	{#snippet code(props)}
		{@const { children, style, class: className, ...rest } = props}
		<pre
			class="bg-default border-divider overflow-x-auto rounded-lg border p-4 {className}"
			{...rest}>
			<code class="font-mono text-sm"> {@render children?.()} </code>
		</pre>
	{/snippet}

	{#snippet blockquote(props)}
		{@const { children, style, class: className, ...rest } = props}
		<blockquote
			class="border-primary text-foreground/80 border-l-4 pl-4 italic {className}"
			{...rest}
		>
			{@render children?.()}
		</blockquote>
	{/snippet}

	{#snippet ul(props)}
		{@const { children, style, class: className, ...rest } = props}
		<ul class="text-foreground mb-2 list-inside list-disc space-y-1 {className}" {...rest}>
			{@render children?.()}
		</ul>
	{/snippet}

	{#snippet ol(props)}
		{@const { children, style, class: className, ...rest } = props}
		<ol class="text-foreground mb-2 list-inside list-decimal space-y-1 1{className}" {...rest}>
			{@render children?.()}
		</ol>
	{/snippet}

	{#snippet li(props)}
		{@const { children, style, class: className, ...rest } = props}
		<li class="pl-2 {className}" {...rest}>
			{@render children?.()}
		</li>
	{/snippet}

	{#snippet hr(props)}
		{@const { style, class: className, ...rest } = props}
		<hr class="border-divider border-t {className}" {...rest} />
	{/snippet}

	{#snippet img(props)}
		{@const { src, alt, style, class: className, ...rest } = props}
		<img {src} {alt} class="h-auto max-w-full rounded-lg {className}" loading="lazy" {...rest} />
	{/snippet}

	{#snippet table(props)}
		{@const { children, style, class: className, ...rest } = props}
		<div class="overflow-x-auto">
			<table class="border-divider w-full border-collapse rounded-lg border {className}" {...rest}>
				{@render children?.()}
			</table>
		</div>
	{/snippet}

	{#snippet th(props)}
		{@const { children, style, class: className, ...rest } = props}
		<th
			class="border-divider bg-default border px-4 py-2 text-left font-semibold {className}"
			{...rest}
		>
			{@render children?.()}
		</th>
	{/snippet}

	{#snippet td(props)}
		{@const { children, style, class: className, ...rest } = props}
		<td class="border-divider border px-4 py-2 {className}" {...rest}>
			{@render children?.()}
		</td>
	{/snippet}
</Markdown>
