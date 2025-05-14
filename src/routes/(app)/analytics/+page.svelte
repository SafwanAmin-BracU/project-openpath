<script lang="ts">
  import type { PageProps } from "./$types";

  let { data }: PageProps = $props();
</script>

<div class="container py-6">
  <div
    class="flex flex-col mb-8 sm:flex-row sm:items-center sm:justify-between"
  >
    <div>
      <h1 class="text-3xl font-bold">Analytics</h1>
      <p class="text-muted-foreground">
        Track your contributions, skills growth, and impact
      </p>
    </div>
    <div class="flex gap-4 items-center mt-4 sm:mt-0">
      <button
        type="button"
        role="combobox"
        aria-controls="radix-«rpb»"
        aria-expanded="false"
        aria-autocomplete="none"
        dir="ltr"
        data-state="closed"
        class="flex h-10 items-center justify-between rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 [&amp;>span]:line-clamp-1 w-[180px]"
        ><span style="pointer-events: none;">Last 30 days</span><svg
          xmlns="http://www.w3.org/2000/svg"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          class="w-4 h-4 opacity-50 lucide lucide-chevron-down"
          aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg
        ></button
      ><button
        class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 w-10"
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
          class="w-4 h-4 lucide lucide-download"
          ><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline
            points="7 10 12 15 17 10"
          ></polyline><line x1="12" x2="12" y1="15" y2="3"></line></svg
        ></button
      ><button
        class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 w-10"
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
          class="w-4 h-4 lucide lucide-share"
          ><path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path><polyline
            points="16 6 12 2 8 6"
          ></polyline><line x1="12" x2="12" y1="2" y2="15"></line></svg
        ></button
      >
    </div>
  </div>
  <div dir="ltr" data-orientation="horizontal" class="space-y-6">
    <div
      role="tablist"
      aria-orientation="horizontal"
      class="inline-flex justify-center items-center p-1 mb-4 h-10 rounded-md bg-muted text-muted-foreground"
      tabindex="0"
      data-orientation="horizontal"
      style="outline: none;"
    >
      <button
        type="button"
        role="tab"
        aria-selected="true"
        aria-controls="radix-«rp4»-content-overview"
        data-state="active"
        id="radix-«rp4»-trigger-overview"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Overview</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rp4»-content-contributions"
        data-state="inactive"
        id="radix-«rp4»-trigger-contributions"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Contributions</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rp4»-content-skills"
        data-state="inactive"
        id="radix-«rp4»-trigger-skills"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Skills Growth</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rp4»-content-time"
        data-state="inactive"
        id="radix-«rp4»-trigger-time"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Time &amp; Efficiency</button
      >
    </div>
    <div
      data-state="active"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rp4»-trigger-overview"
      id="radix-«rp4»-content-overview"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      style="animation-duration: 0s;"
    >
      <div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
        <div
          class="rounded-lg border shadow-sm bg-card text-card-foreground"
          data-v0-t="card"
        >
          <div
            class="flex flex-row justify-between items-center p-6 pb-2 space-y-1.5"
          >
            <h3 class="text-sm font-medium tracking-tight">
              Total Contributions
            </h3>
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
              class="w-4 h-4 lucide lucide-git-pull-request text-muted-foreground"
              ><circle cx="18" cy="18" r="3"></circle><circle
                cx="6"
                cy="6"
                r="3"
              ></circle><path d="M13 6h3a2 2 0 0 1 2 2v7"></path><line
                x1="6"
                x2="6"
                y1="9"
                y2="21"
              ></line></svg
            >
          </div>
          <div class="p-6 pt-0">
            <div class="text-2xl font-bold">
              {data.totalContributions.count}
            </div>
            <p class="text-xs text-muted-foreground">12 this month</p>
            <div class="flex gap-1 items-center mt-2 text-xs">
              <div
                class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-emerald-700 bg-emerald-50 rounded-full border transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2"
                data-v0-t="badge"
              >
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
                  class="mr-1 w-3 h-3 lucide lucide-arrow-up-right"
                  ><path d="M7 7h10v10"></path><path d="M7 17 17 7"></path></svg
                >18.5%
              </div>
              <span class="text-muted-foreground">vs. last period</span>
            </div>
          </div>
        </div>
        <div
          class="rounded-lg border shadow-sm bg-card text-card-foreground"
          data-v0-t="card"
        >
          <div
            class="flex flex-row justify-between items-center p-6 pb-2 space-y-1.5"
          >
            <h3 class="text-sm font-medium tracking-tight">
              Projects Contributed
            </h3>
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
              class="w-4 h-4 lucide lucide-code text-muted-foreground"
              ><polyline points="16 18 22 12 16 6"></polyline><polyline
                points="8 6 2 12 8 18"
              ></polyline></svg
            >
          </div>
          <div class="p-6 pt-0">
            <div class="text-2xl font-bold">8</div>
            <p class="text-xs text-muted-foreground">3 this month</p>
            <div class="flex gap-1 items-center mt-2 text-xs">
              <div
                class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-emerald-700 bg-emerald-50 rounded-full border transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2"
                data-v0-t="badge"
              >
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
                  class="mr-1 w-3 h-3 lucide lucide-arrow-up-right"
                  ><path d="M7 7h10v10"></path><path d="M7 17 17 7"></path></svg
                >12.5%
              </div>
              <span class="text-muted-foreground">vs. last period</span>
            </div>
          </div>
        </div>
        <div
          class="rounded-lg border shadow-sm bg-card text-card-foreground"
          data-v0-t="card"
        >
          <div
            class="flex flex-row justify-between items-center p-6 pb-2 space-y-1.5"
          >
            <h3 class="text-sm font-medium tracking-tight">Lines of Code</h3>
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
              class="w-4 h-4 lucide lucide-file-text text-muted-foreground"
              ><path
                d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z"
              ></path><path d="M14 2v4a2 2 0 0 0 2 2h4"></path><path d="M10 9H8"
              ></path><path d="M16 13H8"></path><path d="M16 17H8"></path></svg
            >
          </div>
          <div class="p-6 pt-0">
            <div class="text-2xl font-bold">{data.totalLinesOfCode.count}</div>
            <p class="text-xs text-muted-foreground">842 this month</p>
            <div class="flex gap-1 items-center mt-2 text-xs">
              <div
                class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-emerald-700 bg-emerald-50 rounded-full border transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2"
                data-v0-t="badge"
              >
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
                  class="mr-1 w-3 h-3 lucide lucide-arrow-up-right"
                  ><path d="M7 7h10v10"></path><path d="M7 17 17 7"></path></svg
                >22.3%
              </div>
              <span class="text-muted-foreground">vs. last period</span>
            </div>
          </div>
        </div>
        <div
          class="rounded-lg border shadow-sm bg-card text-card-foreground"
          data-v0-t="card"
        >
          <div
            class="flex flex-row justify-between items-center p-6 pb-2 space-y-1.5"
          >
            <h3 class="text-sm font-medium tracking-tight">Issues Closed</h3>
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
              class="w-4 h-4 lucide lucide-git-branch text-muted-foreground"
              ><line x1="6" x2="6" y1="3" y2="15"></line><circle
                cx="18"
                cy="6"
                r="3"
              ></circle><circle cx="6" cy="18" r="3"></circle><path
                d="M18 9a9 9 0 0 1-9 9"
              ></path></svg
            >
          </div>
          <div class="p-6 pt-0">
            <div class="text-2xl font-bold">{data.closedIssues.count}</div>
            <p class="text-xs text-muted-foreground">5 this month</p>
            <div class="flex gap-1 items-center mt-2 text-xs">
              <div
                class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-emerald-700 bg-emerald-50 rounded-full border transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2"
                data-v0-t="badge"
              >
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
                  class="mr-1 w-3 h-3 lucide lucide-arrow-up-right"
                  ><path d="M7 7h10v10"></path><path d="M7 17 17 7"></path></svg
                >8.7%
              </div>
              <span class="text-muted-foreground">vs. last period</span>
            </div>
          </div>
        </div>
      </div>
      <div class="grid gap-6 md:grid-cols-2">
        <div
          class="rounded-lg border shadow-sm bg-card text-card-foreground"
          data-v0-t="card"
        >
          <div class="flex flex-col p-6 space-y-1.5">
            <h3 class="flex items-center text-lg font-semibold tracking-tight">
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
                class="mr-2 w-5 h-5 lucide lucide-line-chart"
                ><path d="M3 3v18h18"></path><path d="m19 9-5 5-4-4-3 3"
                ></path></svg
              >Contribution Activity
            </h3>
            <p class="text-sm text-muted-foreground">
              Your contribution frequency over time
            </p>
          </div>
          <div class="p-6 pt-0">
            <div class="h-[300px] w-full">
              <canvas class="w-full h-full" width="383" height="150"></canvas>
            </div>
          </div>
        </div>
        <div
          class="rounded-lg border shadow-sm bg-card text-card-foreground"
          data-v0-t="card"
        >
          <div class="flex flex-col p-6 space-y-1.5">
            <h3 class="flex items-center text-lg font-semibold tracking-tight">
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
                class="mr-2 w-5 h-5 lucide lucide-pie-chart"
                ><path d="M21.21 15.89A10 10 0 1 1 8 2.83"></path><path
                  d="M22 12A10 10 0 0 0 12 2v10z"
                ></path></svg
              >Contribution Types
            </h3>
            <p class="text-sm text-muted-foreground">
              Breakdown of your contribution types
            </p>
          </div>
          <div class="p-6 pt-0">
            <div class="space-y-4">
              <div class="space-y-1">
                <div class="flex justify-between items-center">
                  <div class="flex gap-2 items-center">
                    <div
                      class="w-3 h-3 rounded-full"
                      style="background-color: rgb(59, 130, 246);"
                    ></div>
                    <span class="text-sm font-medium">Code</span>
                  </div>
                  <span class="text-sm font-medium">22</span>
                </div>
                <div
                  aria-valuemax="100"
                  aria-valuemin="0"
                  role="progressbar"
                  data-state="indeterminate"
                  data-max="100"
                  class="overflow-hidden relative w-full h-2 rounded-full bg-secondary"
                >
                  <div
                    data-state="indeterminate"
                    data-max="100"
                    class="flex-1 w-full h-full transition-all bg-primary"
                    style="transform: translateX(-40.5405%);"
                  ></div>
                </div>
              </div>
              <div class="space-y-1">
                <div class="flex justify-between items-center">
                  <div class="flex gap-2 items-center">
                    <div
                      class="w-3 h-3 rounded-full"
                      style="background-color: rgb(16, 185, 129);"
                    ></div>
                    <span class="text-sm font-medium">Documentation</span>
                  </div>
                  <span class="text-sm font-medium"
                    >{data.projectsContributed.count}</span
                  >
                </div>
                <div
                  aria-valuemax="100"
                  aria-valuemin="0"
                  role="progressbar"
                  data-state="indeterminate"
                  data-max="100"
                  class="overflow-hidden relative w-full h-2 rounded-full bg-secondary"
                >
                  <div
                    data-state="indeterminate"
                    data-max="100"
                    class="flex-1 w-full h-full transition-all bg-primary"
                    style="transform: translateX(-78.3784%);"
                  ></div>
                </div>
              </div>
              <div class="space-y-1">
                <div class="flex justify-between items-center">
                  <div class="flex gap-2 items-center">
                    <div
                      class="w-3 h-3 rounded-full"
                      style="background-color: rgb(245, 158, 11);"
                    ></div>
                    <span class="text-sm font-medium">Bug Fixes</span>
                  </div>
                  <span class="text-sm font-medium">5</span>
                </div>
                <div
                  aria-valuemax="100"
                  aria-valuemin="0"
                  role="progressbar"
                  data-state="indeterminate"
                  data-max="100"
                  class="overflow-hidden relative w-full h-2 rounded-full bg-secondary"
                >
                  <div
                    data-state="indeterminate"
                    data-max="100"
                    class="flex-1 w-full h-full transition-all bg-primary"
                    style="transform: translateX(-86.4865%);"
                  ></div>
                </div>
              </div>
              <div class="space-y-1">
                <div class="flex justify-between items-center">
                  <div class="flex gap-2 items-center">
                    <div
                      class="w-3 h-3 rounded-full"
                      style="background-color: rgb(139, 92, 246);"
                    ></div>
                    <span class="text-sm font-medium">Reviews</span>
                  </div>
                  <span class="text-sm font-medium">2</span>
                </div>
                <div
                  aria-valuemax="100"
                  aria-valuemin="0"
                  role="progressbar"
                  data-state="indeterminate"
                  data-max="100"
                  class="overflow-hidden relative w-full h-2 rounded-full bg-secondary"
                >
                  <div
                    data-state="indeterminate"
                    data-max="100"
                    class="flex-1 w-full h-full transition-all bg-primary"
                    style="transform: translateX(-94.5946%);"
                  ></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div
        class="rounded-lg border shadow-sm bg-card text-card-foreground"
        data-v0-t="card"
      >
        <div class="flex flex-col p-6 space-y-1.5">
          <h3 class="flex items-center text-lg font-semibold tracking-tight">
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
              class="mr-2 w-5 h-5 lucide lucide-git-commit-horizontal"
              ><circle cx="12" cy="12" r="3"></circle><line
                x1="3"
                x2="9"
                y1="12"
                y2="12"
              ></line><line x1="15" x2="21" y1="12" y2="12"></line></svg
            >Recent Activity
          </h3>
          <p class="text-sm text-muted-foreground">
            Your latest contributions and actions
          </p>
        </div>
        <div class="p-6 pt-0">
          <div class="space-y-4">
            <div
              class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50"
            >
              <div
                class="flex justify-center items-center mt-1 w-8 h-8 text-purple-600 bg-purple-100 rounded-full"
              >
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
                  class="w-4 h-4 lucide lucide-git-pull-request"
                  ><circle cx="18" cy="18" r="3"></circle><circle
                    cx="6"
                    cy="6"
                    r="3"
                  ></circle><path d="M13 6h3a2 2 0 0 1 2 2v7"></path><line
                    x1="6"
                    x2="6"
                    y1="9"
                    y2="21"
                  ></line></svg
                >
              </div>
              <div class="flex-1 space-y-1">
                <div class="flex justify-between items-start">
                  <div>
                    <h3 class="font-medium">
                      Fix documentation typos in useQuery hook
                    </h3>
                    <p class="text-sm text-muted-foreground">React Query</p>
                  </div>
                  <div
                    class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-purple-700 bg-purple-100 rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 hover:bg-purple-100"
                    data-v0-t="badge"
                  >
                    merged
                  </div>
                </div>
                <div class="text-xs text-muted-foreground">
                  Nov 25, 02:30 PM
                </div>
              </div>
            </div>
            <div
              class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50"
            >
              <div
                class="flex justify-center items-center mt-1 w-8 h-8 text-blue-600 bg-blue-100 rounded-full"
              >
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
                  class="w-4 h-4 lucide lucide-git-branch"
                  ><line x1="6" x2="6" y1="3" y2="15"></line><circle
                    cx="18"
                    cy="6"
                    r="3"
                  ></circle><circle cx="6" cy="18" r="3"></circle><path
                    d="M18 9a9 9 0 0 1-9 9"
                  ></path></svg
                >
              </div>
              <div class="flex-1 space-y-1">
                <div class="flex justify-between items-start">
                  <div>
                    <h3 class="font-medium">
                      Add example for API routes with TypeScript
                    </h3>
                    <p class="text-sm text-muted-foreground">Next.js</p>
                  </div>
                  <div
                    class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-emerald-700 bg-emerald-100 rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 hover:bg-emerald-100"
                    data-v0-t="badge"
                  >
                    closed
                  </div>
                </div>
                <div class="text-xs text-muted-foreground">
                  Nov 23, 10:15 AM
                </div>
              </div>
            </div>
            <div
              class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50"
            >
              <div
                class="flex justify-center items-center mt-1 w-8 h-8 text-amber-600 bg-amber-100 rounded-full"
              >
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
                  class="w-4 h-4 lucide lucide-star"
                  ><polygon
                    points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                  ></polygon></svg
                >
              </div>
              <div class="flex-1 space-y-1">
                <div class="flex justify-between items-start">
                  <div>
                    <h3 class="font-medium">
                      Review PR #1234: Add new authentication methods
                    </h3>
                    <p class="text-sm text-muted-foreground">Express.js</p>
                  </div>
                  <div
                    class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-emerald-700 bg-emerald-100 rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 hover:bg-emerald-100"
                    data-v0-t="badge"
                  >
                    completed
                  </div>
                </div>
                <div class="text-xs text-muted-foreground">
                  Nov 20, 04:45 PM
                </div>
              </div>
            </div>
            <div
              class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50"
            >
              <div
                class="flex justify-center items-center mt-1 w-8 h-8 text-emerald-600 bg-emerald-100 rounded-full"
              >
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
                  class="w-4 h-4 lucide lucide-git-commit-horizontal"
                  ><circle cx="12" cy="12" r="3"></circle><line
                    x1="3"
                    x2="9"
                    y1="12"
                    y2="12"
                  ></line><line x1="15" x2="21" y1="12" y2="12"></line></svg
                >
              </div>
              <div class="flex-1 space-y-1">
                <div class="flex justify-between items-start">
                  <div>
                    <h3 class="font-medium">
                      Update dependencies and fix security vulnerabilities
                    </h3>
                    <p class="text-sm text-muted-foreground">Tailwind CSS</p>
                  </div>
                  <div
                    class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 text-foreground"
                    data-v0-t="badge"
                  >
                    pushed
                  </div>
                </div>
                <div class="text-xs text-muted-foreground">
                  Nov 18, 09:20 AM
                </div>
              </div>
            </div>
            <div
              class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50"
            >
              <div
                class="flex justify-center items-center mt-1 w-8 h-8 text-purple-600 bg-purple-100 rounded-full"
              >
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
                  class="w-4 h-4 lucide lucide-git-pull-request"
                  ><circle cx="18" cy="18" r="3"></circle><circle
                    cx="6"
                    cy="6"
                    r="3"
                  ></circle><path d="M13 6h3a2 2 0 0 1 2 2v7"></path><line
                    x1="6"
                    x2="6"
                    y1="9"
                    y2="21"
                  ></line></svg
                >
              </div>
              <div class="flex-1 space-y-1">
                <div class="flex justify-between items-start">
                  <div>
                    <h3 class="font-medium">
                      Implement dark mode toggle with localStorage
                    </h3>
                    <p class="text-sm text-muted-foreground">React</p>
                  </div>
                  <div
                    class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 text-foreground"
                    data-v0-t="badge"
                  >
                    open
                  </div>
                </div>
                <div class="text-xs text-muted-foreground">
                  Nov 15, 11:30 AM
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rp4»-trigger-contributions"
      hidden=""
      id="radix-«rp4»-content-contributions"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rp4»-trigger-skills"
      hidden=""
      id="radix-«rp4»-content-skills"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rp4»-trigger-time"
      hidden=""
      id="radix-«rp4»-content-time"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
  </div>
</div>
