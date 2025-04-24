<div class="flex justify-center items-center p-4 min-h-screen bg-gradient-to-br from-slate-900 to-slate-800">
  <div class="overflow-hidden max-w-5xl bg-white rounded-xl shadow-2xl">
    <div class="grid grid-cols-1 md:grid-cols-12">
      <!-- Left Column -->
      <div class="relative col-span-5 p-8 text-white bg-gradient-to-br from-emerald-500 to-teal-600 md:p-12">
        <!-- Background Decorations -->
        <div class="absolute -top-16 -right-16 w-64 h-64 rounded-full bg-emerald-400/20"></div>
        <div class="absolute -bottom-20 -left-20 w-80 h-80 rounded-full bg-teal-400/20"></div>
        
        <div class="flex relative z-10 flex-col justify-between h-full">
          <!-- Logo -->
          <div class="flex gap-2 items-center mb-8 text-2xl font-bold">
            <span class="i-[mdi-light--code-tags] size-8"></span>
            <span>OpenPath</span>
          </div>
          
          <!-- Feature List -->
          <div class="space-y-6">
            {#each features as feature}
              <div class="flex gap-3 items-center">
                <div class="p-2 rounded-full bg-white/20">
                  <span class="{feature.icon} size-6"></span>
                </div>
                <div>
                  <h3 class="font-medium">{feature.title}</h3>
                  <p class="text-sm text-white/80">{feature.description}</p>
                </div>
              </div>
            {/each}
          </div>
        </div>
      </div>
      
      <!-- Right Column -->
      <div class="col-span-7 p-8 md:p-12">
        <h1 class="mb-4 text-3xl font-bold leading-tight text-slate-900 md:text-4xl">
          Turn Your CS Knowledge Into Real-World Impact
        </h1>
        <p class="mb-6 text-lg text-slate-600">
          Find the perfect open source projects that match your skills, interests, and learning goals.
        </p>
        
        <!-- Benefits List -->
        <div class="mb-8 space-y-4 text-slate-700">
          {#each benefits as benefit}
            <div class="flex gap-3 items-start">
              <div class="p-1 mt-1 text-emerald-600 bg-emerald-100 rounded-full">
                <span class="{benefit.icon} size-5"></span>
              </div>
              <div>
                <h3 class="font-semibold">{benefit.title}</h3>
                <p class="text-sm text-slate-600">{benefit.description}</p>
              </div>
            </div>
          {/each}
        </div>
        
        <!-- CTA Button -->
        <div>
          <a href="/auth" class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm 
                                font-medium ring-offset-background transition-colors focus-visible:outline-none 
                                focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 
                                disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none 
                                [&_svg]:size-4 [&_svg]:shrink-0 h-10 px-4 py-2 bg-emerald-600 text-white 
                                hover:bg-emerald-700">
            Get Started
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  // Left column features
  const features = [
    {
      icon: "i-[mdi-light--source-branch]",
      title: "Find Your Project",
      description: "Matched to your skills & interests"
    },
    {
      icon: "i-[mdi-light--account-group]",
      title: "Join Communities",
      description: "Connect with mentors & peers"
    },
    {
      icon: "i-[mdi-light--rocket-launch]",
      title: "Build Your Portfolio",
      description: "Showcase real-world experience"
    }
  ];
  
  // Right column benefits
  const benefits = [
    {
      icon: "i-[mdi-light--earth]",
      title: "Skill-Based Matching",
      description: "Our AI analyzes your skills and recommends projects where you can make meaningful contributions."
    },
    {
      icon: "i-[mdi-light--code-tags]",
      title: "Beginner-Friendly Options",
      description: "Filter for projects with good documentation, mentorship, and issues tagged for newcomers."
    },
    {
      icon: "i-[mdi-light--account-multiple]",
      title: "Community Support",
      description: "Connect with other students and mentors working on the same projects."
    }
  ];
</script>
