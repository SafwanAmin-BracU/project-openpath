<script lang="ts">
	import "$lib/app.tailwind.css";

	let { children } = $props();
</script>

<div class="flex flex-col w-full h-full">
	{@render children()}
</div>
