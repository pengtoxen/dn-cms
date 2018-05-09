<template>
  <information :is-edit='true'></information>
</template>

<script>
import information from './components/information'

export default {
  name: 'editForm',
  components: { information }
}
</script>