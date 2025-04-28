<script lang="ts">
  let { children } = $props();
</script>

<div class="flex flex-row w-full h-full">
  <div class="flex max-w-[240px] h-full bg-slate-200 min-w-fit">
    <div class="flex flex-col gap-2 p-4">
      <div class="flex flex-col gap-2 justify-center">
        <a
          href="/"
          class="text-slate-600 font-medium"
        >
          <span class="icon-[mdi--home] size-6"></span>
          <span>Home</span>
        </a>
        <a
          href="/projects"
          class="text-slate-600 font-medium"
        >
          <span class="icon-[mdi--code-tags] size-6"></span>
          <span>Projects</span>
        </a>
        <a
          href="/dashboard"
          class="text-slate-600 font-medium"
        >
          <span class="icon-[mdi--account-multiple] size-6"></span>
          <span>Dashboard</span>
        </a>
      </div>
    </div>
  </div>
  <div class="flex w-full h-full bg-slate-100">
    {@render children()}
  </div>
</div>

<style lang="postcss">
  @reference 'tailwindcss';
</style>
