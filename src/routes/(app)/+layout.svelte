<script lang="ts">
  let { children } = $props();
  import Header from "./Header.svelte";
  import Sidebar from "./Sidebar.svelte";
</script>

<div class="flex flex-row w-full h-full">
  <!-- side navigation bar -->
  <Sidebar />
  <!-- page content -->

  <div class="flex flex-col w-full h-full">
    <!-- header bar -->

    <Header />

    <!-- body block -->
    <div class="flex overflow-x-hidden p-4 border-gray-400 size-full border-t-1">
      {@render children()}
    </div>
  </div>
</div>
