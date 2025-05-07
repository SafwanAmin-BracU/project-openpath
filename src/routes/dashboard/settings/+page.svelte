<div class="container py-6">
  <div class="mb-8">
    <h1 class="text-3xl font-bold">Settings</h1>
    <p class="text-muted-foreground">Manage your account settings and preferences</p>
  </div>
  <div
    dir="ltr"
    data-orientation="horizontal"
    class="space-y-6"
  >
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
        aria-controls="radix-«rpj»-content-account"
        data-state="active"
        id="radix-«rpj»-trigger-account"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Account</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rpj»-content-notifications"
        data-state="inactive"
        id="radix-«rpj»-trigger-notifications"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Notifications</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rpj»-content-appearance"
        data-state="inactive"
        id="radix-«rpj»-trigger-appearance"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Appearance</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rpj»-content-security"
        data-state="inactive"
        id="radix-«rpj»-trigger-security"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Security</button
      ><button
        type="button"
        role="tab"
        aria-selected="false"
        aria-controls="radix-«rpj»-content-integrations"
        data-state="inactive"
        id="radix-«rpj»-trigger-integrations"
        class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
        tabindex="-1"
        data-orientation="horizontal"
        data-radix-collection-item="">Integrations</button
      >
    </div>
    <div
      data-state="active"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rpj»-trigger-account"
      id="radix-«rpj»-content-account"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      style="animation-duration: 0s;"
    >
      <div
        class="rounded-lg border shadow-sm bg-card text-card-foreground"
        data-v0-t="card"
      >
        <div class="flex flex-col p-6 space-y-1.5">
          <h3 class="flex items-center text-2xl font-semibold tracking-tight leading-none">
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
              class="mr-2 w-5 h-5 lucide lucide-user"
              ><path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2"></path><circle
                cx="12"
                cy="7"
                r="4"
              ></circle></svg
            >Personal Information
          </h3>
          <p class="text-sm text-muted-foreground">Update your personal details and public profile</p>
        </div>
        <div class="p-6 pt-0 space-y-4">
          <div class="grid gap-4 sm:grid-cols-2">
            <div class="space-y-2">
              <label
                class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                for="first-name">First name</label
              ><input
                class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                id="first-name"
                value="John"
              />
            </div>
            <div class="space-y-2">
              <label
                class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                for="last-name">Last name</label
              ><input
                class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                id="last-name"
                value="Doe"
              />
            </div>
          </div>
          <div class="space-y-2">
            <label
              class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
              for="email">Email</label
            ><input
              class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
              id="email"
              type="email"
              value="john.doe@example.com"
            />
          </div>
          <div class="space-y-2">
            <label
              class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
              for="username">Username</label
            ><input
              class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
              id="username"
              value="johndoe"
            />
            <p class="text-xs text-muted-foreground">This will be your public username visible to other users.</p>
          </div>
          <div class="space-y-2">
            <label
              class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
              for="bio">Bio</label
            ><input
              class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
              id="bio"
              value="Full-stack developer passionate about open source"
            />
          </div>
        </div>
        <div class="flex justify-between items-center p-6 pt-0 space-x-2">
          <button
            class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2"
            >Cancel</button
          ><button
            class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2"
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
              class="mr-2 w-4 h-4 lucide lucide-save"
              ><path
                d="M15.2 3a2 2 0 0 1 1.4.6l3.8 3.8a2 2 0 0 1 .6 1.4V19a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2z"
              ></path><path d="M17 21v-7a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1v7"></path><path d="M7 3v4a1 1 0 0 0 1 1h7"
              ></path></svg
            >Save Changes</button
          >
        </div>
      </div>
      <div
        class="rounded-lg border shadow-sm bg-card text-card-foreground"
        data-v0-t="card"
      >
        <div class="flex flex-col p-6 space-y-1.5">
          <h3 class="flex items-center text-2xl font-semibold tracking-tight leading-none">
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
              class="mr-2 w-5 h-5 lucide lucide-globe"
              ><circle
                cx="12"
                cy="12"
                r="10"
              ></circle><path d="M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20"></path><path d="M2 12h20"></path></svg
            >Public Profile
          </h3>
          <p class="text-sm text-muted-foreground">Manage your public profile visibility and information</p>
        </div>
        <div class="p-6 pt-0 space-y-4">
          <div class="flex justify-between items-center">
            <div class="space-y-0.5">
              <label class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                >Profile Visibility</label
              >
              <p class="text-sm text-muted-foreground">Make your profile visible to other users</p>
            </div>
            <button
              type="button"
              role="switch"
              aria-checked="true"
              data-state="checked"
              value="on"
              class="peer inline-flex h-6 w-11 shrink-0 cursor-pointer items-center rounded-full border-2 border-transparent transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 focus-visible:ring-offset-background disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-primary data-[state=unchecked]:bg-input"
              ><span
                data-state="checked"
                class="pointer-events-none block h-5 w-5 rounded-full bg-background shadow-lg ring-0 transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0"
              ></span></button
            >
          </div>
          <div
            data-orientation="horizontal"
            role="none"
            class="shrink-0 bg-border h-[1px] w-full"
          ></div>
          <div class="flex justify-between items-center">
            <div class="space-y-0.5">
              <label class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                >Show Contribution Activity</label
              >
              <p class="text-sm text-muted-foreground">Display your contribution calendar on your profile</p>
            </div>
            <button
              type="button"
              role="switch"
              aria-checked="true"
              data-state="checked"
              value="on"
              class="peer inline-flex h-6 w-11 shrink-0 cursor-pointer items-center rounded-full border-2 border-transparent transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 focus-visible:ring-offset-background disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-primary data-[state=unchecked]:bg-input"
              ><span
                data-state="checked"
                class="pointer-events-none block h-5 w-5 rounded-full bg-background shadow-lg ring-0 transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0"
              ></span></button
            >
          </div>
          <div
            data-orientation="horizontal"
            role="none"
            class="shrink-0 bg-border h-[1px] w-full"
          ></div>
          <div class="flex justify-between items-center">
            <div class="space-y-0.5">
              <label class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
                >Show Skills</label
              >
              <p class="text-sm text-muted-foreground">Display your skills and expertise on your profile</p>
            </div>
            <button
              type="button"
              role="switch"
              aria-checked="true"
              data-state="checked"
              value="on"
              class="peer inline-flex h-6 w-11 shrink-0 cursor-pointer items-center rounded-full border-2 border-transparent transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 focus-visible:ring-offset-background disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-primary data-[state=unchecked]:bg-input"
              ><span
                data-state="checked"
                class="pointer-events-none block h-5 w-5 rounded-full bg-background shadow-lg ring-0 transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0"
              ></span></button
            >
          </div>
        </div>
      </div>
      <div
        class="rounded-lg border shadow-sm bg-card text-card-foreground"
        data-v0-t="card"
      >
        <div class="flex flex-col p-6 space-y-1.5">
          <h3 class="flex items-center text-2xl font-semibold tracking-tight leading-none text-destructive">
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
              class="mr-2 w-5 h-5 lucide lucide-trash2"
              ><path d="M3 6h18"></path><path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"></path><path
                d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"
              ></path><line
                x1="10"
                x2="10"
                y1="11"
                y2="17"
              ></line><line
                x1="14"
                x2="14"
                y1="11"
                y2="17"
              ></line></svg
            >Delete Account
          </h3>
          <p class="text-sm text-muted-foreground">Permanently delete your account and all of your content</p>
        </div>
        <div class="p-6 pt-0">
          <p class="text-sm text-muted-foreground">
            Once you delete your account, there is no going back. This action cannot be undone.
          </p>
        </div>
        <div class="flex items-center p-6 pt-0">
          <button
            class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 bg-destructive text-destructive-foreground hover:bg-destructive/90 h-10 px-4 py-2"
            type="button"
            aria-haspopup="dialog"
            aria-expanded="false"
            aria-controls="radix-«rpp»"
            data-state="closed">Delete Account</button
          >
        </div>
      </div>
    </div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rpj»-trigger-notifications"
      hidden=""
      id="radix-«rpj»-content-notifications"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rpj»-trigger-appearance"
      hidden=""
      id="radix-«rpj»-content-appearance"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rpj»-trigger-security"
      hidden=""
      id="radix-«rpj»-content-security"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
    <div
      data-state="inactive"
      data-orientation="horizontal"
      role="tabpanel"
      aria-labelledby="radix-«rpj»-trigger-integrations"
      hidden=""
      id="radix-«rpj»-content-integrations"
      tabindex="0"
      class="mt-2 space-y-6 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
    ></div>
  </div>
</div>
