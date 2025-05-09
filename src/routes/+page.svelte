<script lang="ts">
  import Icon from "@iconify/svelte";
  // Left column features

  type listItem = {
    icon: string;
    title: string;
    description: string;
  };
  const features: listItem[] = [
    {
      icon: "mdi:source-branch",
      title: "Find Your Project",
      description: "Matched to your skills & interests",
    },
    {
      icon: "mdi:account-group",
      title: "Join Communities",
      description: "Connect with mentors & peers",
    },
    {
      icon: "mdi:rocket-launch",
      title: "Build Your Portfolio",
      description: "Showcase real-world experience",
    },
  ];

  // Right column benefits
  const benefits: listItem[] = [
    {
      icon: "mdi:earth",
      title: "Skill-Based Matching",
      description: "Our AI analyzes your skills and recommends projects where you can make meaningful contributions.",
    },
    {
      icon: "mdi:code-tags",
      title: "Beginner-Friendly Options",
      description: "Filter for projects with good documentation, mentorship, and issues tagged for newcomers.",
    },
    {
      icon: "mdi:account-multiple",
      title: "Community Support",
      description: "Connect with other students and mentors working on the same projects.",
    },
  ];
</script>

<!-- Main Wrapper -->
<div class="flex justify-center items-center p-4 w-full h-full bg-gradient-to-br from-slate-900 to-slate-800">
  <!-- Centered Card Wrapper -->
  <div class="overflow-hidden max-w-5xl bg-white rounded-xl shadow-2xl">
    <!-- Centered Card -->
    <div class="flex flex-row">
      <!-- Left Column -->
      <div class="relative p-8 text-white bg-gradient-to-br from-emerald-500 to-teal-600 md:p-12">
        <!-- Background Decorations -->
        <div class="absolute -top-16 -right-16 w-64 h-64 rounded-full bg-emerald-400/20"></div>
        <div class="absolute -bottom-20 -left-20 w-80 h-80 rounded-full bg-teal-400/20"></div>

        <div class="flex relative flex-col justify-between h-full min-w-80">
          <!-- Logo -->
          <div class="flex gap-2 items-center text-2xl font-bold">
            <Icon
              icon="mdi:code"
              class="size-8"
              width="32"
              height="32"
            />
            <span>OpenPath</span>
          </div>

          <!-- Feature List -->
          <div class="flex flex-col gap-6">
            {#each features as feature}
              {@render FeatureListItem(feature)}
            {/each}
          </div>
        </div>
      </div>

      <!-- Right Column -->
      <div class="p-8 md:p-12">
        <h1 class="mb-4 text-3xl font-bold text-slate-900 md:text-4xl">
          Turn Your CS Knowledge Into Real-World Impact
        </h1>
        <p class="mb-6 text-lg text-slate-600">
          Find the perfect open source projects that match your skills, interests, and learning goals.
        </p>

        <!-- Benefits List -->
        <div class="mb-8 space-y-4 text-slate-700">
          {#each benefits as benefit}
            {@render BenefitsListItem(benefit)}
          {/each}
        </div>

        <!-- CTA Button -->

        <div>
          <a
            href="/dashboard"
            class="cta-btn"
          >
            <Icon
              icon="mdi:github"
              width="24"
              height="24"
            />
            Sign in with GitHub
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

{#snippet FeatureListItem(feature: listItem)}
  <div class="flex gap-3 items-center">
    <div class="flex p-2 rounded-full bg-white/20">
      <Icon
        icon={feature.icon}
        class="size-6"
      />
    </div>
    <div>
      <h3 class="font-medium">{feature.title}</h3>
      <p class="text-sm text-white/80">{feature.description}</p>
    </div>
  </div>
{/snippet}

{#snippet BenefitsListItem(benefit: listItem)}
  <div class="flex gap-3 items-start">
    <div class="flex p-1 text-emerald-600 bg-emerald-100 rounded-full">
      <Icon
        icon={benefit.icon}
        class="size-6"
      />
    </div>
    <div>
      <h3 class="font-semibold">{benefit.title}</h3>
      <p class="text-sm text-slate-600">{benefit.description}</p>
    </div>
  </div>
{/snippet}

<style lang="postcss">
  @reference 'tailwindcss';
  .cta-btn {
    @apply flex gap-2 justify-center items-center px-4 py-2 h-10 text-sm font-medium  whitespace-nowrap rounded-md;
    @apply border-2 border-gray-900 text-gray-900 bg-white;
    @variant hover {
      @apply bg-gray-900 text-white;
    }
  }
</style>
