<script lang="ts">
  import type { PageProps } from "./$types";

  let { data }: PageProps = $props();
</script>

<div class="container py-6">
  <div class="mb-8">
    <h1 class="text-3xl font-bold">Communities</h1>
    <p class="text-muted-foreground">
      Connect with developers, find mentors, and participate in events
    </p>
  </div>
  <div dir="ltr" data-orientation="horizontal" class="space-y-6">
    <div
      data-state="active"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rot»-trigger-communities"
      id="radix-«rot»-content-communities"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      style=""
    >
      <div class="grid gap-6 md:grid-cols-2 lg:grid-cols-2">
        <!-- community card -->
        {#each data.allCommunities as communityItem}
          <div
            class="rounded-lg border shadow-sm bg-card text-card-foreground"
            data-v0-t="card"
          >
            <div class="flex flex-col p-6 pb-2 space-y-1.5">
              <div class="flex gap-4 items-start">
                <span
                  class="flex overflow-hidden relative w-12 h-12 rounded-md shrink-0"
                  ><img
                    class="w-full h-full aspect-square"
                    alt="React.js Community"
                    src="/placeholder.svg?height=100&amp;width=100"
                  /></span
                >
                <div class="flex-1">
                  <h3 class="text-lg font-semibold tracking-tight">
                    {communityItem.name}
                  </h3>
                  <div class="flex items-center text-sm text-muted-foreground">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="24"
                      height="24"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      class="mr-1 w-3.5 h-3.5 lucide lucide-users"
                      ><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"
                      ></path><circle cx="9" cy="7" r="4"></circle><path
                        d="M22 21v-2a4 4 0 0 0-3-3.87"
                      ></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg
                    >12,500 members
                  </div>
                </div>
                <button
                  class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-8 w-8 text-muted-foreground"
                  ><svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="w-4 h-4 text-red-500 fill-current lucide lucide-heart"
                    ><path
                      d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"
                    ></path></svg
                  ><span class="sr-only">Leave community</span></button
                >
              </div>
            </div>
            <div class="p-6 pt-0 space-y-3">
              <p class="text-sm text-muted-foreground">
                {communityItem.description}
              </p>
              <div class="flex flex-wrap gap-2">
                <div
                  class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                  data-v0-t="badge"
                >
                  React
                </div>
                <div
                  class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                  data-v0-t="badge"
                >
                  JavaScript
                </div>
                <div
                  class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                  data-v0-t="badge"
                >
                  Frontend
                </div>
              </div>
              <div class="grid grid-cols-3 gap-2 text-sm text-center">
                <div class="p-2 space-y-1 rounded-md bg-muted">
                  <p class="font-medium">5</p>
                  <p class="text-xs text-muted-foreground">Events</p>
                </div>
                <div class="p-2 space-y-1 rounded-md bg-muted">
                  <p class="font-medium">120</p>
                  <p class="text-xs text-muted-foreground">Discussions</p>
                </div>
                <div class="p-2 space-y-1 rounded-md bg-muted">
                  <p class="font-medium">35</p>
                  <p class="text-xs text-muted-foreground">Projects</p>
                </div>
              </div>
            </div>
            <div class="flex items-center p-6 pt-0">
              <button
                class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full"
                >View Community</button
              >
            </div>
          </div>
        {/each}
      </div>
    </div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rot»-trigger-mentors"
      id="radix-«rot»-content-mentors"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      hidden=""
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rot»-trigger-events"
      id="radix-«rot»-content-events"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      hidden=""
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rot»-trigger-discussions"
      id="radix-«rot»-content-discussions"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      hidden=""
    ></div>
  </div>
</div>
