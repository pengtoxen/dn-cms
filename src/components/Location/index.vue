<template>
  <div id="app">
    <el-cascader
      placeholder="搜索"
      :options="options"
      filterable
      v-model="bindOption"
      @change="handleChange"
      :class="locClass"
      :style="locStyle"
      clearable
      >
    </el-cascader>
  </div>
</template>
 
<script>
  // import { regionDataPlus } from 'element-china-area-data'
  import { location as Location } from '@/api/common'
  export default {
    props: {
      locClass: {
        type: String,
        default: ''
      },
      locStyle: {
        type: String,
        default: 'width: 100%;'
      },
      locOption: {
        type: String,
        default: ''
      }
    },
    data() {
      return {
        bindOption: [],
        options: []
      }
    },
    methods: {
      handleChange(value) {
        const newValue = value.join('\n')
        this.$emit('fetchLocData', newValue)
      }
    },
    watch: {
      locOption(newValue, oldValue) {
        if (newValue) {
          this.bindOption = newValue.split('\n')
        }
      }
    },
    created() {
      const param = {}
      const location = localStorage.getItem('location')
      if (!location) {
        Location(param).then((ret) => {
          if (ret.data.code === 0) {
            this.options = ret.data.data
            localStorage.setItem(
              'location',
              JSON.stringify(ret.data.data)
            )
            // this.$peng.msgOk(this.$t('common.message.operate_success'))
          } else {
            this.$peng.msgInf(this.$t('common.message.operate_fail'))
          }
        }).catch(() => {
          this.$peng.msgInf(this.$t('common.message.operate_fail'))
        })
      } else {
        this.options = JSON.parse(location)
      }
    }
  }
</script>