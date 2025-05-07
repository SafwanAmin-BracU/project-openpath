<!-- Main container with scrolling -->
<div class="flex p-4 w-full h-full">
  <div class="flex-1">
    <!-- Full height column layout -->
    <div class="flex flex-col w-full h-full">
      <!-- Responsive grid container -->
      <div class="container flex flex-1 gap-4 h-full">
        <!-- Left column -->
        <div class="flex flex-col gap-4 h-full overflow-clip grow-1">
          <!-- Placeholder card -->
          <div class="h-[200px] rounded-lg border bg-card p-4 shadow-sm"></div>

          <!-- Recommended Projects card -->
          <div class="rounded-lg border shadow-sm">
            <!-- Card header -->
            <div class="flex flex-col p-6 pb-2 space-y-1.5">
              <h3 class="text-2xl font-semibold tracking-tight leading-none">Recommended Projects</h3>
              <p class="text-sm text-muted-foreground">Based on your skills and interests</p>
            </div>

            <!-- Card content -->
            <div class="p-6 pt-0">
              <!-- Project list -->
              <div class="space-y-4">
                <!-- React Query project card -->
                <div class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50">
                  <!-- Project icon -->
                  <div class="flex justify-center items-center w-10 h-10 rounded-md border shrink-0 bg-muted">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="20"
                      height="20"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      ><path
                        d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4"
                      ></path><path d="M9 18c-4.51 2-5-2-7-2"></path></svg
                    >
                  </div>
                  <!-- Project details -->
                  <div class="flex-1 space-y-1">
                    <div class="flex justify-between items-center">
                      <h3 class="font-semibold">React Query</h3>
                      <!-- Star count -->
                      <div class="flex gap-1 items-center text-amber-500">
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
                          class="w-4 h-4 fill-current lucide lucide-star"
                          ><polygon
                            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                          ></polygon></svg
                        ><span class="text-sm">29.5k</span>
                      </div>
                    </div>
                    <p class="text-sm text-muted-foreground">
                      Hooks for fetching, caching and updating asynchronous data in React
                    </p>
                    <!-- Technology badges -->
                    <div class="flex flex-wrap gap-2 pt-1">
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
                        React
                      </div>
                      <div
                        class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                        data-v0-t="badge"
                      >
                        TypeScript
                      </div>
                    </div>
                    <!-- Project metrics -->
                    <div class="flex justify-between items-center pt-2">
                      <div class="text-xs text-muted-foreground">12 good first issues</div>
                      <div class="text-xs font-medium text-emerald-600">94% skill match</div>
                    </div>
                  </div>
                </div>

                <!-- Next.js project card -->
                <div class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50">
                  <!-- Project icon -->
                  <div class="flex justify-center items-center w-10 h-10 rounded-md border shrink-0 bg-muted">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="20"
                      height="20"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      ><path
                        d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4"
                      ></path><path d="M9 18c-4.51 2-5-2-7-2"></path></svg
                    >
                  </div>
                  <!-- Project details -->
                  <div class="flex-1 space-y-1">
                    <div class="flex justify-between items-center">
                      <h3 class="font-semibold">Next.js</h3>
                      <!-- Star count -->
                      <div class="flex gap-1 items-center text-amber-500">
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
                          class="w-4 h-4 fill-current lucide lucide-star"
                          ><polygon
                            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                          ></polygon></svg
                        ><span class="text-sm">106.0k</span>
                      </div>
                    </div>
                    <p class="text-sm text-muted-foreground">The React Framework for Production</p>
                    <!-- Technology badges -->
                    <div class="flex flex-wrap gap-2 pt-1">
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
                        React
                      </div>
                      <div
                        class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                        data-v0-t="badge"
                      >
                        TypeScript
                      </div>
                    </div>
                    <!-- Project metrics -->
                    <div class="flex justify-between items-center pt-2">
                      <div class="text-xs text-muted-foreground">8 good first issues</div>
                      <div class="text-xs font-medium text-emerald-600">87% skill match</div>
                    </div>
                  </div>
                </div>

                <!-- Factify project card -->
                <div class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50">
                  <!-- Project icon -->
                  <div class="flex justify-center items-center w-10 h-10 rounded-md border shrink-0 bg-muted">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="20"
                      height="20"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      ><path
                        d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4"
                      ></path><path d="M9 18c-4.51 2-5-2-7-2"></path></svg
                    >
                  </div>
                  <!-- Project details -->
                  <div class="flex-1 space-y-1">
                    <div class="flex justify-between items-center">
                      <h3 class="font-semibold">Factify</h3>
                      <!-- Star count -->
                      <div class="flex gap-1 items-center text-amber-500">
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
                          class="w-4 h-4 fill-current lucide lucide-star"
                          ><polygon
                            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                          ></polygon></svg
                        ><span class="text-sm">26.8k</span>
                      </div>
                    </div>
                    <p class="text-sm text-muted-foreground">Fast and low overhead web framework for Node.js</p>
                    <!-- Technology badges -->
                    <div class="flex flex-wrap gap-2 pt-1">
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
                        Node.js
                      </div>
                      <div
                        class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                        data-v0-t="badge"
                      >
                        TypeScript
                      </div>
                    </div>
                    <!-- Project metrics -->
                    <div class="flex justify-between items-center pt-2">
                      <div class="text-xs text-muted-foreground">5 good first issues</div>
                      <div class="text-xs font-medium text-emerald-600">76% skill match</div>
                    </div>
                  </div>
                </div>

                <!-- Express.js project card -->
                <div class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50">
                  <!-- Project icon -->
                  <div class="flex justify-center items-center w-10 h-10 rounded-md border shrink-0 bg-muted">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="20"
                      height="20"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      ><path
                        d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4"
                      ></path><path d="M9 18c-4.51 2-5-2-7-2"></path></svg
                    >
                  </div>
                  <!-- Project details -->
                  <div class="flex-1 space-y-1">
                    <div class="flex justify-between items-center">
                      <h3 class="font-semibold">Express.js</h3>
                      <!-- Star count -->
                      <div class="flex gap-1 items-center text-amber-500">
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
                          class="w-4 h-4 fill-current lucide lucide-star"
                          ><polygon
                            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                          ></polygon></svg
                        ><span class="text-sm">55.3k</span>
                      </div>
                    </div>
                    <p class="text-sm text-muted-foreground">
                      Fast, unopinionated, minimalist web framework for Node.js
                    </p>
                    <!-- Technology badges -->
                    <div class="flex flex-wrap gap-2 pt-1">
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
                        Node.js
                      </div>
                      <div
                        class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border border-transparent transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 bg-secondary text-secondary-foreground hover:bg-secondary/80"
                        data-v0-t="badge"
                      >
                        None
                      </div>
                    </div>
                    <!-- Project metrics -->
                    <div class="flex justify-between items-center pt-2">
                      <div class="text-xs text-muted-foreground">6 good first issues</div>
                      <div class="text-xs font-medium text-emerald-600">81% skill match</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Right column -->
        <div class="flex flex-col gap-4">
          <!-- Skills card -->
          <div
            class="rounded-lg border shadow-sm bg-card text-card-foreground"
            data-v0-t="card"
          >
            <!-- Card header -->
            <div class="flex flex-col p-6 pb-2 space-y-1.5">
              <h3 class="text-2xl font-semibold tracking-tight leading-none">Your Skills</h3>
              <p class="text-sm text-muted-foreground">Track your progress in different areas</p>
            </div>
            <!-- Card content -->
            <div class="p-6 pt-0">
              <div class="space-y-4">
                <!-- JavaScript skill -->
                <div class="space-y-1">
                  <div class="flex justify-between items-center">
                    <span class="text-sm font-medium">JavaScript</span><span class="text-sm font-medium">85%</span>
                  </div>
                  <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
                    <div
                      class="h-full bg-emerald-600"
                      style="width: 85%;"
                    ></div>
                  </div>
                </div>
                <!-- React skill -->
                <div class="space-y-1">
                  <div class="flex justify-between items-center">
                    <span class="text-sm font-medium">React</span><span class="text-sm font-medium">72%</span>
                  </div>
                  <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
                    <div
                      class="h-full bg-emerald-600"
                      style="width: 72%;"
                    ></div>
                  </div>
                </div>
                <!-- Python skill -->
                <div class="space-y-1">
                  <div class="flex justify-between items-center">
                    <span class="text-sm font-medium">Python</span><span class="text-sm font-medium">60%</span>
                  </div>
                  <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
                    <div
                      class="h-full bg-emerald-600"
                      style="width: 60%;"
                    ></div>
                  </div>
                </div>
                <!-- Node.js skill -->
                <div class="space-y-1">
                  <div class="flex justify-between items-center">
                    <span class="text-sm font-medium">Node.js</span><span class="text-sm font-medium">45%</span>
                  </div>
                  <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
                    <div
                      class="h-full bg-emerald-600"
                      style="width: 45%;"
                    ></div>
                  </div>
                </div>
                <!-- Update skills button -->
                <button
                  class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 mt-4 w-full"
                  >Update Skills</button
                >
              </div>
            </div>
          </div>

          <!-- Recent Activity card -->
          <div
            class="rounded-lg border shadow-sm bg-card text-card-foreground"
            data-v0-t="card"
          >
            <!-- Card header -->
            <div class="flex flex-col p-6 pb-2 space-y-1.5">
              <h3 class="text-2xl font-semibold tracking-tight leading-none">Recent Activity</h3>
            </div>
            <!-- Card content -->
            <div class="p-6 pt-0">
              <div class="space-y-4">
                <!-- React Query activity -->
                <div class="flex gap-4 items-start">
                  <div class="relative mt-0.5 w-2 h-2 bg-emerald-600 rounded-full">
                    <span
                      class="absolute -top-0.5 -left-0.5 w-3 h-3 bg-emerald-600 rounded-full opacity-75 animate-ping"
                    ></span>
                  </div>
                  <div class="flex-1 space-y-1">
                    <p class="text-sm font-medium leading-none">React Query</p>
                    <p class="text-sm text-muted-foreground">Opened PR #1234</p>
                    <p class="text-xs text-muted-foreground">2 hours ago</p>
                  </div>
                </div>
                <!-- Next.js activity -->
                <div class="flex gap-4 items-start">
                  <div class="relative mt-0.5 w-2 h-2 bg-emerald-600 rounded-full">
                    <span
                      class="absolute -top-0.5 -left-0.5 w-3 h-3 bg-emerald-600 rounded-full opacity-75 animate-ping"
                    ></span>
                  </div>
                  <div class="flex-1 space-y-1">
                    <p class="text-sm font-medium leading-none">Next.js</p>
                    <p class="text-sm text-muted-foreground">Commented on issue #5678</p>
                    <p class="text-xs text-muted-foreground">Yesterday</p>
                  </div>
                </div>
                <!-- Express.js activity -->
                <div class="flex gap-4 items-start">
                  <div class="relative mt-0.5 w-2 h-2 bg-emerald-600 rounded-full">
                    <span
                      class="absolute -top-0.5 -left-0.5 w-3 h-3 bg-emerald-600 rounded-full opacity-75 animate-ping"
                    ></span>
                  </div>
                  <div class="flex-1 space-y-1">
                    <p class="text-sm font-medium leading-none">Express.js</p>
                    <p class="text-sm text-muted-foreground">Forked repository</p>
                    <p class="text-xs text-muted-foreground">3 days ago</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
