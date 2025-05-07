<script lang="ts">
  import Icon from "@iconify/svelte";
  import { goto } from "$app/navigation";
</script>

<div class="flex gap-3 justify-between items-center p-3 w-full h-16">
  <input
    class="flex h-10 w-[25rem] rounded-full border-gray-400 border-1 px-3 focus:ring-2 focus:ring-emerald-600 focus:outline-none"
    placeholder="Search..."
  />
  <div class="flex gap-2 h-10 w-fit">
    <!-- notification icon -->
    <button
      type="button"
      aria-label="Notifications"
    >
      <Icon
        icon="mdi:bell-outline"
        class="size-6"
        width="24"
        height="24"
      />
    </button>
    <!-- profile icon -->
    <button
      type="button"
      aria-label="Logout"
      onclick={() => {
        // redirect to index page
        goto("/");
      }}
    >
      <Icon
        icon="mdi:logout"
        class="size-6"
        width="24"
        height="24"
      />
    </button>
  </div>
</div>

<style lang="postcss">
  @reference 'tailwindcss';

  button {
    @apply flex gap-1.5 justify-center items-center p-2 rounded-xl border-gray-400 border-1;
    @apply transition-all duration-300 ease-in-out;
    @variant hover {
      @apply bg-emerald-700 text-white;
    }
    cursor: pointer;
  }
</style>
