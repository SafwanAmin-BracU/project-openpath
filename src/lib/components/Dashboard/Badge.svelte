<script lang="ts">
  export let variant: 'default' | 'secondary' | 'primary' = 'default';
  export let text: string;
</script>

<div class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border 
  {variant === 'primary' ? 'bg-primary text-primary-foreground border-transparent' : 
   variant === 'secondary' ? 'bg-secondary text-secondary-foreground border-transparent' : 
   'border-input bg-background'}">
  {text}
</div>