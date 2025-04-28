<script lang="ts">
  import { createEventDispatcher } from 'svelte';
  import BaseAuthForm from './BaseAuthForm.svelte';
  
  // Form state
  let email = '';
  let password = '';
  let showPassword = false;
  let isSubmitting = false;
  let errorMessage = '';
  
  // Event dispatcher for login events
  const dispatch = createEventDispatcher<{
    login: { email: string; password: string };
    forgotPassword: { email: string };
  }>();
  
  // Handle form submission
  function handleSubmit() {
    errorMessage = '';
    isSubmitting = true;
    
    // Validate form
    if (!email || !password) {
      errorMessage = 'Please fill in all fields';
      isSubmitting = false;
      return;
    }
    
    // Dispatch login event
    dispatch('login', { email, password });
    
    // In a real implementation, you would handle the response from the server
    // and set isSubmitting to false when the response is received
    setTimeout(() => {
      isSubmitting = false;
    }, 1000);
  }
  
  // Handle forgot password
  function handleForgotPassword() {
    dispatch('forgotPassword', { email });
  }
  
  // Handle social login
  function handleSocialLogin(event: CustomEvent<{ provider: string }>) {
    const { provider } = event.detail;
    console.log(`Logging in with ${provider}`);
    // Implement social login logic here
  }
  
  // Toggle password visibility
  function togglePasswordVisibility() {
    showPassword = !showPassword;
  }
</script>

<BaseAuthForm 
  title="Log In to Your Account" 
  submitButtonText="Log In"
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
    
    <div class="space-y-2">
      <label
        class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        for="email-login">Email</label
      >
      <input
        class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
        id="email-login"
        placeholder="your.email@example.com"
        type="email"
        bind:value={email}
        required
      />
    </div>
    
    <div class="space-y-2">
      <label
        class="text-sm font-medium leading-none text-white peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
        for="password-login">Password</label
      >
      <div class="relative">
        <input
          class="flex px-3 py-2 w-full h-10 text-sm rounded-md border border-input bg-background ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
          id="password-login"
          placeholder="••••••••"
          type={showPassword ? 'text' : 'password'}
          bind:value={password}
          required
        />
        <button
          class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-accent w-10 absolute right-0 top-0 h-full px-3 py-2 text-slate-400 hover:text-slate-600"
          type="button"
          on:click={togglePasswordVisibility}
        >
          <span class="w-4 h-4 {showPassword ? 'i-[mdi-eye-off]' : 'i-[mdi-eye]'}"></span>
        </button>
      </div>
    </div>
    
    <div class="flex justify-end">
      <button 
        type="button" 
        class="text-sm text-white hover:underline"
        on:click={handleForgotPassword}
      >
        Forgot password?
      </button>
    </div>
  </svelte:fragment>
  
  <svelte:fragment slot="form-footer">
    <div class="text-sm text-center text-white">
      Don't have an account?
      <a href="?tab=register" class="text-white hover:underline">Sign up</a>
    </div>
  </svelte:fragment>
</BaseAuthForm>