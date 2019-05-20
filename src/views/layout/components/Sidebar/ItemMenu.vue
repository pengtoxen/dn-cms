<template>
  <div class="item-menu">
    <template v-for="item in routes[0].children" v-if="!item.hidden">
      <router-link v-if="!item.alwaysShow" :to="item.path" :key="item.name">
        <el-menu-item :index="item.path+'/'+item.path">
          <svg-icon v-if="item.meta&&item.meta.icon" :icon-class="item.meta.icon"></svg-icon>
          <span v-if="item.meta&&item.meta.title">{{generateTitle(item.meta.title)}}</span>
        </el-menu-item>
      </router-link>
    </template>
  </div>
</template>

<script>
import { generateTitle } from '@/utils/i18n'

export default {
  name: 'ItemMenu',
  props: {
    routes: {
      type: Array
    }
  },
  methods: {
    generateTitle
  }
}
</script>
<style  scoped>
.item-menu{
  z-index: 999;
  display: none;
  position: absolute;
  left:100%;
  top:0;
}
.item-menu > a{
  display: block !important;
}
</style>


