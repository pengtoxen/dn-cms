<template>
  <el-cascader
    placeholder="搜索"
    :options="options"
    filterable
    change-on-select
    :class="clfClass"
    :style="clfStyle"
    :clearable="clfClear"
    v-model="bindOption"
    @change="handleChange"
  ></el-cascader>
</template>
 
<script>
import { fossilClassification } from '@/api/common'
export default {
  props: {
    clfClass: {
      type: String,
      default: ''
    },
    clfStyle: {
      type: String,
      default: 'width: 100%;'
    },
    clfOption: {
      type: String,
      default: ''
    },
    clfClear: {
      type: Boolean,
      default: true
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
      this.$emit('fetchClfData', newValue)
    }
  },
  watch: {
    clfOption(newValue, oldValue) {
      if (newValue) {
        this.bindOption = newValue.split('\n')
      } else {
        this.$emit('clearClfData', newValue)
      }
    }
  },
  created() {
    const param = {}
    const classfication = localStorage.getItem('classfication')
    if (!classfication) {
      fossilClassification(param)
        .then(ret => {
          if (ret.data.code === 0) {
            this.options = ret.data.data
            localStorage.setItem(
              'classfication',
              JSON.stringify(ret.data.data)
            )
            // this.$peng.msgOk(this.$t('common.message.operate_success'))
          } else {
            this.$peng.msgInf(this.$t('common.message.operate_fail'))
          }
        })
        .catch(() => {
          this.$peng.msgInf(this.$t('common.message.operate_fail'))
        })
    } else {
      this.options = JSON.parse(classfication)
    }
  }
}
</script>