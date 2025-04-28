<script lang="ts">
  import { onMount } from "svelte";
  import { page } from "$app/stores";
  import { LoginForm, SignupForm } from "$lib/components/auth";
  import authService from "$lib/services/AuthService";

  // State for tab management
  let activeTab: "login" | "register" = "register";
  let isProcessing = false;
  let errorMessage = "";
  let successMessage = "";

  // Handle login form submission
  async function handleLogin(
    event: CustomEvent<{ email: string; password: string }>
  ) {
    const { email, password } = event.detail;
    isProcessing = true;
    errorMessage = "";
    successMessage = "";

    try {
      const result = await authService.login({ email, password });

      if (result.success) {
        successMessage = "Login successful!";
        // In a real app, you would redirect to a dashboard or home page
        setTimeout(() => {
          window.location.href = "/";
        }, 1500);
      } else {
        errorMessage = result.message || "Login failed. Please try again.";
      }
    } catch (error) {
      errorMessage =
        error instanceof Error ? error.message : "An unexpected error occurred";
    } finally {
      isProcessing = false;
    }
  }

  // Handle signup form submission
  async function handleSignup(
    event: CustomEvent<{
      firstName: string;
      lastName: string;
      email: string;
      password: string;
      acceptTerms: boolean;
    }>
  ) {
    const { firstName, lastName, email, password, acceptTerms } = event.detail;
    isProcessing = true;
    errorMessage = "";
    successMessage = "";

    try {
      const result = await authService.signup({
        firstName,
        lastName,
        email,
        password,
        acceptTerms,
      });

      if (result.success) {
        successMessage = "Account created successfully!";
        // In a real app, you would redirect to a dashboard or home page
        setTimeout(() => {
          window.location.href = "/";
        }, 1500);
      } else {
        errorMessage =
          result.message || "Registration failed. Please try again.";
      }
    } catch (error) {
      errorMessage =
        error instanceof Error ? error.message : "An unexpected error occurred";
    } finally {
      isProcessing = false;
    }
  }

  // Handle forgot password
  async function handleForgotPassword(event: CustomEvent<{ email: string }>) {
    const { email } = event.detail;
    isProcessing = true;
    errorMessage = "";
    successMessage = "";

    try {
      const result = await authService.requestPasswordReset(email);

      if (result.success) {
        successMessage =
          result.message || "Password reset instructions sent to your email.";
      } else {
        errorMessage =
          result.message ||
          "Failed to request password reset. Please try again.";
      }
    } catch (error) {
      errorMessage =
        error instanceof Error ? error.message : "An unexpected error occurred";
    } finally {
      isProcessing = false;
    }
  }

  // Set active tab based on URL parameter
  onMount(() => {
    const tabParam = $page.url.searchParams.get("tab");
    if (tabParam === "login" || tabParam === "register") {
      activeTab = tabParam;
    }
  });

  // Switch tabs
  function switchTab(tab: "login" | "register") {
    activeTab = tab;
    // Update URL without reloading the page
    const url = new URL(window.location.href);
    url.searchParams.set("tab", tab);
    window.history.pushState({}, "", url);
  }
</script>

<div class="flex min-h-screen bg-gradient-to-br from-slate-900 to-slate-800">
  <div
    class="hidden flex-col justify-between p-12 w-1/2 text-white bg-gradient-to-br from-emerald-500 to-teal-600 lg:flex"
  >
    <div class="flex gap-2 items-center text-2xl font-bold">
      <span class="w-8 h-8 i-[mdi-code-tags]"></span>
      <span>OpenPath</span>
    </div>
    <div class="space-y-6">
      <h1 class="text-4xl font-bold leading-tight">
        Turn Your CS Knowledge Into Real-World Impact
      </h1>
      <p class="text-xl text-white/80">
        Join thousands of CS students contributing to open source projects that
        match their skills and interests.
      </p>
      <div class="pt-6 space-y-4">
        <div class="flex gap-2 items-center">
          <div class="w-1 h-1 bg-white rounded-full"></div>
          <p>Find projects that match your skill level</p>
        </div>
        <div class="flex gap-2 items-center">
          <div class="w-1 h-1 bg-white rounded-full"></div>
          <p>Get guidance from experienced mentors</p>
        </div>
        <div class="flex gap-2 items-center">
          <div class="w-1 h-1 bg-white rounded-full"></div>
          <p>Build a portfolio of real-world contributions</p>
        </div>
      </div>
    </div>
    <div class="text-sm text-white/60">
      © 2025 OpenPath. All rights reserved.
    </div>
  </div>
  <div class="flex justify-center items-center p-6 w-full lg:w-1/2">
    <div class="space-y-8 w-full max-w-md">
      <div class="text-center lg:hidden">
        <div class="flex justify-center mb-6">
          <div class="flex gap-2 items-center text-2xl font-bold text-white">
            <span class="w-8 h-8 i-[mdi-code-tags]"></span>
            <span>OpenPath</span>
          </div>
        </div>
      </div>
      <div class="p-8 bg-white rounded-xl shadow-xl">
        <div dir="ltr" data-orientation="horizontal" class="w-full">
          <div
            role="tablist"
            aria-orientation="horizontal"
            class="grid grid-cols-2 justify-center items-center p-1 mb-6 w-full h-10 rounded-md bg-muted text-muted-foreground"
            tabindex="0"
            data-orientation="horizontal"
            style="outline: none;"
          >
            <button
              type="button"
              role="tab"
              aria-selected={activeTab === "login"}
              data-state={activeTab === "login" ? "active" : "inactive"}
              class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
              on:click={() => switchTab("login")}
            >
              Log In
            </button>
            <button
              type="button"
              role="tab"
              aria-selected={activeTab === "register"}
              data-state={activeTab === "register" ? "active" : "inactive"}
              class="inline-flex items-center justify-center whitespace-nowrap rounded-sm px-3 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow-sm"
              on:click={() => switchTab("register")}
            >
              Sign Up
            </button>
          </div>

          {#if successMessage}
            <div
              class="p-4 mb-4 text-sm text-green-700 bg-green-100 rounded-md"
            >
              {successMessage}
            </div>
          {/if}

          {#if errorMessage}
            <div class="p-4 mb-4 text-sm text-red-700 bg-red-100 rounded-md">
              {errorMessage}
            </div>
          {/if}

          {#if activeTab === "login"}
            <LoginForm
              on:login={handleLogin}
              on:forgotPassword={handleForgotPassword}
              isSubmitting={isProcessing}
            />
          {:else}
            <SignupForm on:signup={handleSignup} isSubmitting={isProcessing} />
          {/if}
        </div>
      </div>
      <div class="text-sm text-center text-white">
        <a href="/" class="hover:underline">← Back to home</a>
      </div>
    </div>
  </div>
</div>
