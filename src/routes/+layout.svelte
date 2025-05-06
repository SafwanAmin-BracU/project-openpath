<script lang="ts">
  import "$lib/app.tailwind.css";
  let { children } = $props();
</script>


<div class="flex w-full h-full bg-slate-100 text-slate-900">
  {@render children()}
</div>