<script lang="ts">
  let { children } = $props();
</script>

<div class="flex w-full h-full bg-slate-100">
  {@render children()}
</div>

<style lang="postcss">
  @reference 'tailwindcss';
</style>
