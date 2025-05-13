<script lang="ts">
  import { enhance } from "$app/forms";
</script>

<div class="flex justify-center items-center w-full h-full bg-slate-900">
  <form
    class="p-10 bg-white rounded-2xl space-y-2"
    method="POST"
    use:enhance
  >
    <div class="space-y-2">
      <label
        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        for="email">Email</label
      ><input
        class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-gray-400 placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
        name="email"
        placeholder="your.email@example.com"
        type="email"
        required
      />
    </div>
    <div class="space-y-2">
      <label
        class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        for="password">Password</label
      >
      <div class="relative">
        <input
          class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-gray-400 placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
          name="password"
          placeholder="••••••••"
          type="password"
          required
        />
      </div>
      <p class="text-xs text-slate-500">Password must be at least 8 characters long</p>
    </div>

    <button
      class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 text-white h-10 px-4 py-2 w-full bg-emerald-600 hover:bg-emerald-700"
      type="submit"
    >
      Log In
    </button>
    <div class="relative my-4">
      <div class="absolute inset-0 flex items-center">
        <span class="w-full border-t border-slate-200"></span>
      </div>
    </div>
    <a href="/"> Go back </a>
  </form>
</div>
