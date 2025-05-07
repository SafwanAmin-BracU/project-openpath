<script lang="ts">
  let { children } = $props();
</script>

<div class="flex p-4 w-full h-full">
  {@render children()}
</div>

<style lang="postcss">
  @reference 'tailwindcss';
</style>
