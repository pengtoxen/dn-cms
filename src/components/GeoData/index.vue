<template>
  <el-cascader
    placeholder="搜索"
    :options="options"
    filterable
    change-on-select
    :class="geoClass"
    :style="geoStyle"
    :clearable="geoClear"
    v-model="bindOption"
    @change="handleChange"
  ></el-cascader>
</template>
 
<script>
import { geoAge } from '@/api/common'
export default {
  props: {
    geoClass: {
      type: String,
      default: ''
    },
    geoStyle: {
      type: String,
      default: 'width: 100%'
    },
    geoOption: {
      type: String,
      default: ''
    },
    geoClear: {
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
      this.$emit('fetchGeoData', newValue)
    }
  },
  watch: {
    geoOption(newValue, oldValue) {
      if (newValue) {
        this.bindOption = newValue.split('\n')
      } else {
        this.$emit('clearGeoData', newValue)
      }
    }
  },
  created() {
    const param = {}
    const age = localStorage.getItem('age')
    if (!age) {
      geoAge(param).then((ret) => {
        if (ret.data.code === 0) {
          this.options = ret.data.data
          localStorage.setItem(
            'age',
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
      this.options = JSON.parse(age)
    }
  }
}

</script>