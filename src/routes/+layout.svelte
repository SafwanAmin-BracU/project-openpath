<script lang="ts">
  import "$lib/app.tailwind.css";
  let { children } = $props();
</script>

<div class="flex w-full h-full">
  {@render children()}
</div>

<style lang="postcss">
  :global(::-webkit-scrollbar) {
    display: none;
  }
</style>
