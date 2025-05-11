<script lang="ts">
  export let title: string;
  export let options: string[];
  export let selected: string[];
</script>

<div class="space-y-2">
  <h3 class="font-medium">{title}</h3>
  {#each options as option}
    <label class="flex gap-2 items-center">
      <input
        type="checkbox"
        value={option}
        bind:group={selected}
        class="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary"
      />
      <span class="text-sm">{option}</span>
    </label>
  {/each}
</div>