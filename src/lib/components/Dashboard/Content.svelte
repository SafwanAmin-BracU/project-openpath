<script lang="ts">
  let { children } = $props();
</script>

<div class="flex overflow-hidden p-4 border-gray-400 size-full border-t-1">
  {@render children()}
</div>

<style lang="postcss">
  @reference 'tailwindcss';
</style>
