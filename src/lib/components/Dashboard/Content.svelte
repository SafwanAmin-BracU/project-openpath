<script lang="ts">
  let { children } = $props();
</script>

<div class="flex w-full h-full">
  {@render children()}
</div>

<style lang="postcss">
  @reference 'tailwindcss';
</style>
