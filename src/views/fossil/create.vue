<template>
  <information :is-edit='false'></information>
</template>

<script>
import information from './components/information'

export default {
  name: 'createForm',
  components: { information }
}
</script>