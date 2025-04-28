<script lang="ts">
  import "$lib/app.tailwind.css";
  let { children } = $props();
</script>

<div class="flex flex-col w-full h-full">
  {@render children()}
</div>

<style lang="postcss">
  @reference '$lib/app.tailwind.css';
  body {
    @apply flex h-[100dvh] w-[100dvw] box-border p-0 m-0 flex-col;
    @apply bg-slate-200 text-slate-900 dark:bg-slate-900 dark:text-slate-200;
  }
</style>
