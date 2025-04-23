<script lang="ts">
	import '$lib/app.tailwind.css';
	
	let { children } = $props();
</script>
<div class="flex flex-row justify-center w-full gap-3 h-fit">
	<a href="/">Home</a>
	<a href="/auth">Auth </a>
	<a href="/dashboard">Dashboard</a>
</div>
<div class="flex flex-col w-full h-full">

	{@render children()}
</div>
