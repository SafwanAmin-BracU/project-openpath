<script lang="ts">
  import { page } from "$app/state";
  import Icon from "@iconify/svelte";

  // state to track whether the menu is collapsed or expanded
  let isMenuCollapsed = $state<boolean>(false);

  // function to toggle the menu state
  function toggleMenu() {
    isMenuCollapsed = !isMenuCollapsed;
  }
  const navMenuItems = [
    {
      route: "/dashboard",
      icon: "mdi:home-outline",
      label: "Dashboard",
    },
    {
      route: "/dashboard/projects",
      icon: "mdi:compass-outline",
      label: "Find Projects",
    },
    {
      route: "/dashboard/portfolio",
      icon: "mdi:folder-outline",
      label: "My Portfolio",
    },
    {
      route: "/dashboard/tutorials",
      icon: "mdi:learn-outline",
      label: "Learn & Grow",
    },
    {
      route: "/dashboard/communities",
      icon: "mdi:account-group-outline",
      label: "Comminities",
    },
    {
      route: "/dashboard/analytics",
      icon: "mdi:analytics",
      label: "Analytics",
    },
  ];

  const appSettingsMenuItems = [
    {
      route: "/dashboard/settings",
      icon: "mdi:cog-outline",
      label: "Settings",
    },
    {
      route: "/dashboard/user",
      icon: "mdi:account-outline",
      label: "Profile",
    },
  ];
</script>

<div
  class="navbar-wrapper"
  class:collapsed={isMenuCollapsed}
>
  <!-- Logo -->
  <div class="text-emerald-700 navbar-group">
    <button
      type="button"
      class="flex justify-center items-center"
      onclick={toggleMenu}
      aria-label={isMenuCollapsed ? "Expand Menu" : "Collapse Menu"}
    >
      <Icon
        icon="mdi:code"
        class="p-2 size-12"
      />
      <span
        class="text-xl font-bold"
        class:hidden={isMenuCollapsed}>OPENPATH</span
      >
    </button>
  </div>
  <!-- Nav Menu -->
  <div class="py-1.5 border-gray-400 navbar-group grow border-y-1">
    {#each navMenuItems as item}
      {@render menuItemSnippet(item.route, item.icon, item.label)}
    {/each}
  </div>
  <div class="navbar-group">
    {#each appSettingsMenuItems as item}
      {@render menuItemSnippet(item.route, item.icon, item.label)}
    {/each}
  </div>
</div>

<!-- Snippets -->
{#snippet menuItemSnippet(href: string, icon: string, label: string)}
  <a
    {href}
    class="menu-item"
    aria-label={label}
    class:active={page.url.pathname === href}
  >
    <Icon
      {icon}
      class="w-4 h-4"
      width="24"
      height="24"
    />
    <span class:hidden={isMenuCollapsed}>{label}</span>
  </a>
{/snippet}

<style lang="postcss">
  @reference 'tailwindcss';

  .navbar-group {
    @apply flex gap-1 p-2 w-full flex-col justify-start items-center;
  }

  .navbar-wrapper {
    @apply flex w-[15rem] h-full border-gray-400 border-r-1 flex-col;
    @apply text-slate-950;
    @apply transition-all duration-300 ease-in-out;
  }

  .navbar-wrapper.collapsed {
    @apply w-fit;
  }

  .menu-item {
    @apply inline-flex gap-3 justify-start items-center px-4 py-2 w-full h-10 text-sm font-medium whitespace-nowrap rounded-md;
  }

  .menu-item.active,
  .menu-item:hover {
    @apply bg-emerald-700 text-gray-100;
    /* @apply bg-gray-300; */
    /* @apply border-2 border-slate-400; */
  }
</style>
