<div class="flex min-h-screen">
  <div class="flex-1">
    <div class="flex min-h-screen">
      <div
        class="group/sidebar-wrapper flex min-h-screen"
        style="--sidebar-width: 240px; --sidebar-width-icon: 64px;"
      >
        <div
          class="group relative h-screen text-sidebar-foreground transition-all duration-300 w-[240px]"
          data-state="expanded"
          data-collapsible="icon"
        >
          <div
            class="fixed inset-y-0 z-20 flex h-full flex-col border-r bg-background transition-all duration-300 ease-in-out w-[--sidebar-width]"
          >
            <div class="shrink-0 border-b flex h-14 items-center px-4">
              <a
                href="/dashboard"
                class="flex items-center gap-2"
                ><div class="text-emerald-600">
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
                    ><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg
                  >
                </div>
                <span class="font-bold text-emerald-600 group-data-[collapsible=icon]:hidden">OPENPATH</span></a
              >
              <div class="ml-auto">
                <button
                  class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-8 w-8"
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
                    class="lucide lucide-chevron-left h-4 w-4"><path d="m15 18-6-6 6-6"></path></svg
                  ><span class="sr-only">Collapse Sidebar</span></button
                >
              </div>
            </div>
            <div class="flex-1 overflow-auto">
              <nav class="grid gap-1 px-2 py-4">
                <a
                  href="/dashboard"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start bg-muted font-medium"
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
                    class="lucide lucide-home h-4 w-4 mr-2"
                    ><path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline
                      points="9 22 9 12 15 12 15 22"
                    ></polyline></svg
                  ><span class="">Dashboard</span></a
                ><a
                  href="/dashboard/find"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start"
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
                    class="lucide lucide-compass h-4 w-4 mr-2"
                    ><circle
                      cx="12"
                      cy="12"
                      r="10"
                    ></circle><polygon points="16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76"></polygon></svg
                  ><span class="">Find Projects</span></a
                ><a
                  href="/dashboard/portfolio"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start"
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
                    class="lucide lucide-folder h-4 w-4 mr-2"
                    ><path
                      d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z"
                    ></path></svg
                  ><span class="">My Portfolio</span></a
                ><a
                  href="/dashboard/learn"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start"
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
                    class="lucide lucide-graduation-cap h-4 w-4 mr-2"
                    ><path
                      d="M21.42 10.922a1 1 0 0 0-.019-1.838L12.83 5.18a2 2 0 0 0-1.66 0L2.6 9.08a1 1 0 0 0 0 1.832l8.57 3.908a2 2 0 0 0 1.66 0z"
                    ></path><path d="M22 10v6"></path><path d="M6 12.5V16a6 3 0 0 0 12 0v-3.5"></path></svg
                  ><span class="">Learn &amp; Grow</span></a
                ><a
                  href="/dashboard/communities"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start"
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
                    class="lucide lucide-users h-4 w-4 mr-2"
                    ><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"></path><circle
                      cx="9"
                      cy="7"
                      r="4"
                    ></circle><path d="M22 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"
                    ></path></svg
                  ><span class="">Communities</span></a
                ><a
                  href="/dashboard/analytics"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start"
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
                    class="lucide lucide-bar-chart h-4 w-4 mr-2"
                    ><line
                      x1="12"
                      x2="12"
                      y1="20"
                      y2="10"
                    ></line><line
                      x1="18"
                      x2="18"
                      y1="20"
                      y2="4"
                    ></line><line
                      x1="6"
                      x2="6"
                      y1="20"
                      y2="16"
                    ></line></svg
                  ><span class="">Analytics</span></a
                >
              </nav>
            </div>
            <div class="shrink-0 mt-auto">
              <div
                data-orientation="horizontal"
                role="none"
                class="shrink-0 bg-border h-[1px] w-full my-2"
              ></div>
              <div class="px-2 py-2 flex flex-col gap-1">
                <a
                  href="/dashboard/settings"
                  class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-full justify-start"
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
                    class="lucide lucide-settings h-4 w-4 mr-2"
                    ><path
                      d="M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2 0 0 1-1-1.73V4a2 2 0 0 0-2-2z"
                    ></path><circle
                      cx="12"
                      cy="12"
                      r="3"
                    ></circle></svg
                  ><span class="">Settings</span></a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="flex min-h-screen flex-col w-full">
        <header class="sticky top-0 z-50 w-full border-b bg-background">
          <div class="container flex h-16 items-center justify-between">
            <div class="flex items-center gap-4">
              <a
                href="/dashboard"
                class="flex items-center gap-2"
                ><div class="text-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="32"
                    height="32"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    ><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg
                  >
                </div>
                <span class="text-xl font-bold text-emerald-600">OPENPATH</span></a
              >
              <div class="relative w-full max-w-md">
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
                  class="lucide lucide-search absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground"
                  ><circle
                    cx="11"
                    cy="11"
                    r="8"
                  ></circle><path d="m21 21-4.3-4.3"></path></svg
                ><input
                  class="flex h-10 border border-input px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 w-full rounded-full bg-background pl-8 md:w-[300px] lg:w-[400px]"
                  placeholder="Search Projects..."
                  type="search"
                />
              </div>
            </div>
            <div class="flex items-center gap-4">
              <button
                class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 w-10 relative"
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
                  class="lucide lucide-bell h-5 w-5"
                  ><path d="M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9"></path><path d="M10.3 21a1.94 1.94 0 0 0 3.4 0"
                  ></path></svg
                ><span class="absolute right-1 top-1 h-2 w-2 rounded-full bg-emerald-600"></span><span class="sr-only"
                  >Notifications</span
                ></button
              ><button
                class="justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 flex items-center gap-2"
                type="button"
                id="radix-«r3»"
                aria-haspopup="menu"
                aria-expanded="false"
                data-state="closed"
                ><span class="relative flex shrink-0 overflow-hidden rounded-full h-8 w-8"
                  ><img
                    class="aspect-square h-full w-full"
                    alt="John Doe"
                    src="/placeholder.svg"
                  /></span
                ><span>John Doe</span><svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  class="lucide lucide-chevron-down h-4 w-4"><path d="m6 9 6 6 6-6"></path></svg
                ></button
              >
            </div>
          </div>
        </header>
        <div
          class="container grid flex-1 gap-4 py-4 md:grid-cols-[1fr_300px] lg:grid-cols-[1fr_350px] lg:gap-8 lg:py-6"
        >
          <div class="flex flex-col gap-4">
            <div class="h-[200px] rounded-lg border bg-card p-4 shadow-sm"></div>
            <div
              class="rounded-lg border bg-card text-card-foreground shadow-sm"
              data-v0-t="card"
            >
              <div class="flex flex-col space-y-1.5 p-6 pb-2">
                <h3 class="text-2xl font-semibold leading-none tracking-tight">Recommended Projects</h3>
                <p class="text-sm text-muted-foreground">Based on your skills and interests</p>
              </div>
              <div class="p-6 pt-0">
                <div class="space-y-4">
                  <div class="flex items-start gap-4 rounded-lg border p-4 transition-colors hover:bg-muted/50">
                    <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-md border bg-muted">
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
                    <div class="flex-1 space-y-1">
                      <div class="flex items-center justify-between">
                        <h3 class="font-semibold">React Query</h3>
                        <div class="flex items-center gap-1 text-amber-500">
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
                            class="lucide lucide-star h-4 w-4 fill-current"
                            ><polygon
                              points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                            ></polygon></svg
                          ><span class="text-sm">29.5k</span>
                        </div>
                      </div>
                      <p class="text-sm text-muted-foreground">
                        Hooks for fetching, caching and updating asynchronous data in React
                      </p>
                      <div class="flex flex-wrap gap-2 pt-1">
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          JavaScript
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          React
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          TypeScript
                        </div>
                      </div>
                      <div class="flex items-center justify-between pt-2">
                        <div class="text-xs text-muted-foreground">12 good first issues</div>
                        <div class="text-xs font-medium text-emerald-600">94% skill match</div>
                      </div>
                    </div>
                  </div>
                  <div class="flex items-start gap-4 rounded-lg border p-4 transition-colors hover:bg-muted/50">
                    <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-md border bg-muted">
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
                    <div class="flex-1 space-y-1">
                      <div class="flex items-center justify-between">
                        <h3 class="font-semibold">Next.js</h3>
                        <div class="flex items-center gap-1 text-amber-500">
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
                            class="lucide lucide-star h-4 w-4 fill-current"
                            ><polygon
                              points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                            ></polygon></svg
                          ><span class="text-sm">106.0k</span>
                        </div>
                      </div>
                      <p class="text-sm text-muted-foreground">The React Framework for Production</p>
                      <div class="flex flex-wrap gap-2 pt-1">
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          JavaScript
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          React
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          TypeScript
                        </div>
                      </div>
                      <div class="flex items-center justify-between pt-2">
                        <div class="text-xs text-muted-foreground">8 good first issues</div>
                        <div class="text-xs font-medium text-emerald-600">87% skill match</div>
                      </div>
                    </div>
                  </div>
                  <div class="flex items-start gap-4 rounded-lg border p-4 transition-colors hover:bg-muted/50">
                    <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-md border bg-muted">
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
                    <div class="flex-1 space-y-1">
                      <div class="flex items-center justify-between">
                        <h3 class="font-semibold">Factify</h3>
                        <div class="flex items-center gap-1 text-amber-500">
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
                            class="lucide lucide-star h-4 w-4 fill-current"
                            ><polygon
                              points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                            ></polygon></svg
                          ><span class="text-sm">26.8k</span>
                        </div>
                      </div>
                      <p class="text-sm text-muted-foreground">Fast and low overhead web framework for Node.js</p>
                      <div class="flex flex-wrap gap-2 pt-1">
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          JavaScript
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          Node.js
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          TypeScript
                        </div>
                      </div>
                      <div class="flex items-center justify-between pt-2">
                        <div class="text-xs text-muted-foreground">5 good first issues</div>
                        <div class="text-xs font-medium text-emerald-600">76% skill match</div>
                      </div>
                    </div>
                  </div>
                  <div class="flex items-start gap-4 rounded-lg border p-4 transition-colors hover:bg-muted/50">
                    <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-md border bg-muted">
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
                    <div class="flex-1 space-y-1">
                      <div class="flex items-center justify-between">
                        <h3 class="font-semibold">Express.js</h3>
                        <div class="flex items-center gap-1 text-amber-500">
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
                            class="lucide lucide-star h-4 w-4 fill-current"
                            ><polygon
                              points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
                            ></polygon></svg
                          ><span class="text-sm">55.3k</span>
                        </div>
                      </div>
                      <p class="text-sm text-muted-foreground">
                        Fast, unopinionated, minimalist web framework for Node.js
                      </p>
                      <div class="flex flex-wrap gap-2 pt-1">
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          JavaScript
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          Node.js
                        </div>
                        <div
                          class="inline-flex items-center rounded-full border px-2.5 py-0.5 font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80 text-xs"
                          data-v0-t="badge"
                        >
                          None
                        </div>
                      </div>
                      <div class="flex items-center justify-between pt-2">
                        <div class="text-xs text-muted-foreground">6 good first issues</div>
                        <div class="text-xs font-medium text-emerald-600">81% skill match</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="flex flex-col gap-4">
            <div
              class="rounded-lg border bg-card text-card-foreground shadow-sm"
              data-v0-t="card"
            >
              <div class="flex flex-col space-y-1.5 p-6 pb-2">
                <h3 class="text-2xl font-semibold leading-none tracking-tight">Your Skills</h3>
                <p class="text-sm text-muted-foreground">Track your progress in different areas</p>
              </div>
              <div class="p-6 pt-0">
                <div class="space-y-4">
                  <div class="space-y-1">
                    <div class="flex items-center justify-between">
                      <span class="text-sm font-medium">JavaScript</span><span class="text-sm font-medium">85%</span>
                    </div>
                    <div class="h-2 w-full overflow-hidden rounded-full bg-muted">
                      <div
                        class="h-full bg-emerald-600"
                        style="width: 85%;"
                      ></div>
                    </div>
                  </div>
                  <div class="space-y-1">
                    <div class="flex items-center justify-between">
                      <span class="text-sm font-medium">React</span><span class="text-sm font-medium">72%</span>
                    </div>
                    <div class="h-2 w-full overflow-hidden rounded-full bg-muted">
                      <div
                        class="h-full bg-emerald-600"
                        style="width: 72%;"
                      ></div>
                    </div>
                  </div>
                  <div class="space-y-1">
                    <div class="flex items-center justify-between">
                      <span class="text-sm font-medium">Python</span><span class="text-sm font-medium">60%</span>
                    </div>
                    <div class="h-2 w-full overflow-hidden rounded-full bg-muted">
                      <div
                        class="h-full bg-emerald-600"
                        style="width: 60%;"
                      ></div>
                    </div>
                  </div>
                  <div class="space-y-1">
                    <div class="flex items-center justify-between">
                      <span class="text-sm font-medium">Node.js</span><span class="text-sm font-medium">45%</span>
                    </div>
                    <div class="h-2 w-full overflow-hidden rounded-full bg-muted">
                      <div
                        class="h-full bg-emerald-600"
                        style="width: 45%;"
                      ></div>
                    </div>
                  </div>
                  <button
                    class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 mt-4 w-full"
                    >Update Skills</button
                  >
                </div>
              </div>
            </div>
            <div
              class="rounded-lg border bg-card text-card-foreground shadow-sm"
              data-v0-t="card"
            >
              <div class="flex flex-col space-y-1.5 p-6 pb-2">
                <h3 class="text-2xl font-semibold leading-none tracking-tight">Recent Activity</h3>
              </div>
              <div class="p-6 pt-0">
                <div class="space-y-4">
                  <div class="flex items-start gap-4">
                    <div class="relative mt-0.5 h-2 w-2 rounded-full bg-emerald-600">
                      <span
                        class="absolute -left-0.5 -top-0.5 h-3 w-3 animate-ping rounded-full bg-emerald-600 opacity-75"
                      ></span>
                    </div>
                    <div class="flex-1 space-y-1">
                      <p class="text-sm font-medium leading-none">React Query</p>
                      <p class="text-sm text-muted-foreground">Opened PR #1234</p>
                      <p class="text-xs text-muted-foreground">2 hours ago</p>
                    </div>
                  </div>
                  <div class="flex items-start gap-4">
                    <div class="relative mt-0.5 h-2 w-2 rounded-full bg-emerald-600">
                      <span
                        class="absolute -left-0.5 -top-0.5 h-3 w-3 animate-ping rounded-full bg-emerald-600 opacity-75"
                      ></span>
                    </div>
                    <div class="flex-1 space-y-1">
                      <p class="text-sm font-medium leading-none">Next.js</p>
                      <p class="text-sm text-muted-foreground">Commented on issue #5678</p>
                      <p class="text-xs text-muted-foreground">Yesterday</p>
                    </div>
                  </div>
                  <div class="flex items-start gap-4">
                    <div class="relative mt-0.5 h-2 w-2 rounded-full bg-emerald-600">
                      <span
                        class="absolute -left-0.5 -top-0.5 h-3 w-3 animate-ping rounded-full bg-emerald-600 opacity-75"
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
</div>
