<script lang="ts">
  import { page } from "$app/state";
  import Icon from "@iconify/svelte";

  $inspect(page);

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
      route: "/dashboard/user/portfolio",
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
      route: "/dashboard/user/analytics",
      icon: "mdi:analytics",
      label: "Analytics",
    },
  ];

  const appSettingsMenuItems = [
    {
      route: "/dashboard/user/settings",
      icon: "mdi:cog-outline",
      label: "Settings",
    },
    {
      route: "/dashboard/user/profile",
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
    <div class="flex gap-1.5 justify-center items-center">
      <Icon
        icon="mdi:code"
        class="w-8 h-8"
        width="24"
        height="24"
        onclick={toggleMenu}
      />
      <span
        class="text-xl font-bold"
        class:hidden={isMenuCollapsed}>OPENPATH</span
      >
    </div>
  </div>
  <!-- Nav Menu -->
  <div class="navbar-group grow">
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
    class:active={page.route.id?.includes(href)}
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
    @apply flex gap-1 px-2 w-full flex-col justify-start items-center;
  }

  .navbar-wrapper {
    @apply flex w-[15rem] h-full border-gray-400 border-1 px-2 py-4 flex-col gap-3;
    @apply text-slate-950;
    @apply transition-all duration-300 ease-in-out;
  }

  .navbar-wrapper.collapsed {
    @apply w-fit;
  }

  .menu-item {
    @apply inline-flex gap-3 justify-start items-center px-4 py-2 w-full h-10 text-sm font-medium whitespace-nowrap rounded-md;
    @variant hover {
      @apply bg-gray-300;
    }
  }

  .menu-item.active {
    @apply bg-gray-300;
  }
</style>
