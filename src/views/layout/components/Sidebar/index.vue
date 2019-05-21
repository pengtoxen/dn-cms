<template>
  <scroll-bar id="sidebar">
    <el-menu mode="vertical" :default-active="$route.path" :collapse="isCollapse" background-color="#304156" text-color="#bfcbd9" active-text-color="#409EFF">
      <sidebar-item :routes="permission_routers"></sidebar-item>
    </el-menu>
  </scroll-bar>
</template>
<style>
   #sidebar .el-submenu .el-menu-item{
     height: 3em !important;
     line-height: 3em !important;
   }
   #sidebar .el-menu-item, .el-submenu__title{
     height: 3em !important;
     line-height: 3em !important;
   }
</style>
<script>
import { mapGetters } from 'vuex'
import SidebarItem from './SidebarItem'
import ScrollBar from '@/components/ScrollBar'

export default {
  components: { SidebarItem, ScrollBar },
  computed: {
    ...mapGetters([
      // 映射 this.permission_routers 为 store.getters.permission_routers
      'permission_routers',
      // 映射 this.sidebar 为 store.getters.sidebar
      'sidebar'
    ]),
    isCollapse() {
      return !this.sidebar.opened
    }
  }
}
</script>
