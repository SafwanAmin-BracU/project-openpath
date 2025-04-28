<script lang="ts">
  import { createEventDispatcher } from "svelte";
  import BaseAuthForm from "./BaseAuthForm.svelte";

  // Form state
  let firstName = "";
  let lastName = "";
  let email = "";
  let password = "";
  let showPassword = false;
  let acceptTerms = false;
  let isSubmitting = false;
  let errorMessage = "";

  // Event dispatcher for signup events
  const dispatch = createEventDispatcher<{
    signup: {
      firstName: string;
      lastName: string;
      email: string;
      password: string;
      acceptTerms: boolean;
    };
  }>();

  // Handle form submission
  function handleSubmit() {
    errorMessage = "";
    isSubmitting = true;

    // Validate form
    if (!firstName || !lastName || !email || !password) {
      errorMessage = "Please fill in all required fields";
      isSubmitting = false;
      return;
    }

    if (password.length < 8) {
      errorMessage = "Password must be at least 8 characters long";
      isSubmitting = false;
      return;
    }

    if (!acceptTerms) {
      errorMessage = "You must accept the Terms of Service and Privacy Policy";
      isSubmitting = false;
      return;
    }

    // Dispatch signup event
    dispatch("signup", { firstName, lastName, email, password, acceptTerms });

    // In a real implementation, you would handle the response from the server
    // and set isSubmitting to false when the response is received
    setTimeout(() => {
      isSubmitting = false;
    }, 1000);
  }

  // Handle social login
  function handleSocialLogin(event: CustomEvent<{ provider: string }>) {
    const { provider } = event.detail;
    console.log(`Signing up with ${provider}`);
    // Implement social signup logic here
  }

  // Toggle password visibility
  function togglePasswordVisibility() {
    showPassword = !showPassword;
  }
</script>

<BaseAuthForm
  title="Create Your Account"
  submitButtonText="Create Account"
  {isSubmitting}
  on:submit={handleSubmit}
  on:socialLogin={handleSocialLogin}
>
  <svelte:fragment slot="form-fields">
    {#if errorMessage}
      <div class="p-3 mb-4 text-sm text-red-500 bg-red-100 rounded-md">
        {errorMessage}
      </div>
    {/if}

    <div class="grid grid-cols-2 gap-4">
      <div class="space-y-2">
        <label
          class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
          for="first-name">First name</label
        >
        <input
          class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
          id="first-name"
          placeholder="John"
          bind:value={firstName}
          required
        />
      </div>
      <div class="space-y-2">
        <label
          class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
          for="last-name">Last name</label
        >
        <input
          class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
          id="last-name"
          placeholder="Doe"
          bind:value={lastName}
          required
        />
      </div>
    </div>

    <div class="space-y-2">
      <label
        class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        for="email-register">Email</label
      >
      <input
        class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
        id="email-register"
        placeholder="your.email@example.com"
        type="email"
        bind:value={email}
        required
      />
    </div>

    <div class="space-y-2">
      <label
        class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        for="password-register">Password</label
      >
      <div class="relative">
        <input
          class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
          id="password-register"
          placeholder="••••••••"
          type={showPassword ? "text" : "password"}
          bind:value={password}
          required
        />
        <button
          class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-accent w-10 absolute right-0 top-0 h-full px-3 py-2 text-slate-400 hover:text-slate-600"
          type="button"
          on:click={togglePasswordVisibility}
          aria-label="Toggle password visibility"
        >
          <span
            class="w-4 h-4 {showPassword ? 'i-[mdi-eye-off]' : 'i-[mdi-eye]'}"
          ></span>
        </button>
      </div>
      <p class="text-xs text-white">
        Password must be at least 8 characters long
      </p>
    </div>

    <div class="flex items-center space-x-2">
      <button
        type="button"
        role="checkbox"
        aria-checked={acceptTerms ? "true" : "false"}
        data-state={acceptTerms ? "checked" : "unchecked"}
        value="on"
        class="peer h-4 w-4 shrink-0 rounded-sm border border-primary ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-primary data-[state=checked]:text-primary-foreground"
        id="terms"
        on:click={() => (acceptTerms = !acceptTerms)}
      >
        {#if acceptTerms}
          <span
            class="flex h-full w-full items-center justify-center text-current"
          >
            <span class="w-3 h-3 i-[mdi-check]"></span>
          </span>
        {/if}
      </button>
      <label
        for="terms"
        class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
      >
        I agree to the
        <a href="#" class="text-white hover:underline">Terms of Service</a
        >
        and
        <a href="#" class="text-white hover:underline">Privacy Policy</a>
      </label>
    </div>
  </svelte:fragment>

  <svelte:fragment slot="form-footer">
    <div class="text-sm text-center text-white">
      Already have an account?
      <a href="?tab=login" class="text-white hover:underline">Log in</a>
    </div>
  </svelte:fragment>
</BaseAuthForm>
