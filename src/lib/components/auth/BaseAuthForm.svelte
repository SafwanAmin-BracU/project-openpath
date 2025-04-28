<script lang="ts">
  import { createEventDispatcher } from "svelte";

  // Props for the form
  export let title: string;
  export let submitButtonText: string;
  export let showSocialLogin: boolean = true;
  export let isSubmitting: boolean = false;

  // Event dispatcher for form actions
  const dispatch = createEventDispatcher<{
    submit: void;
    socialLogin: { provider: string };
  }>();

  // Handle form submission
  function handleSubmit() {
    dispatch("submit");
  }

  // Handle social login
  function handleSocialLogin(provider: string) {
    dispatch("socialLogin", { provider });
  }
</script>

<div class="space-y-4 text-slate-900">
  <h2 class="text-2xl font-bold text-center">{title}</h2>

  <form on:submit|preventDefault={handleSubmit} class="space-y-4">
    <slot name="form-fields"></slot>

    <button
      type="submit"
      disabled={isSubmitting}
      class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 text-primary-foreground h-10 px-4 py-2 w-full bg-emerald-600 hover:bg-emerald-700"
    >
      {#if isSubmitting}
        <span class="w-4 h-4 animate-spin i-lucide-loader-2"></span>
      {/if}
      {submitButtonText}
    </button>
  </form>

  {#if showSocialLogin}
    <div class="relative my-4">
      <div class="flex absolute inset-0 items-center">
        <span class="w-full border-t border-slate-200"></span>
      </div>
      <div class="flex relative justify-center text-xs uppercase">
        <span class="px-2 bg-transparent">Or continue with</span>
      </div>
    </div>

    <button
      type="button"
      on:click={() => handleSocialLogin("github")}
      class="inline-flex gap-2 justify-center items-center px-4 py-2 w-full h-10 text-sm font-medium whitespace-nowrap rounded-md transition-colors focus-visible:outline-none focus-visible:ring-2 disabled:opacity-50 border-input bg-background hover:bg-accent hover:text-accent-foreground"
    >
      <span class="mr-2 w-4 h-4 icon-[mdi-github]"></span>GitHub
    </button>
  {/if}

  <slot name="form-footer"></slot>
</div>
