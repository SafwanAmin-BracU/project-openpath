<script lang="ts">
  let { children } = $props();
  import Sidebar from "$lib/components/Dashboard/Sidebar.svelte";
  import Header from "$lib/components/Dashboard/Header.svelte";
  import Content from "$lib/components/Dashboard/Content.svelte";
</script>

<div class="flex flex-row w-full h-full">
  <!-- side navigation bar -->
  <Sidebar />
  <!-- page content -->
  <div class="flex flex-col w-full h-full">
    <!-- header bar -->
    <Header />
    <!-- body block -->
    <Content>
      {@render children()}
    </Content>
  </div>
</div>

<style lang="postcss">
  @reference 'tailwindcss';
</style>
