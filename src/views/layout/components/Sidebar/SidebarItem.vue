<template>
  <div class="menu-wrapper">
    <template v-for="item in routes">
      <template v-if="!item.hidden">
        <!-- 没有子元素 -->
        <router-link v-if="!item.children" :to="item.path+'/'+item.path" :key="item.name">
          <el-menu-item
            :index="item.path+'/'+item.path"
            :class="{'submenu-title-noDropdown':!isNest}"
          >
            <svg-icon v-if="item.meta&&item.meta.icon" :icon-class="item.meta.icon"></svg-icon>
            <span v-if="item.meta&&item.meta.title">{{generateTitle(item.meta.title)}}</span>
          </el-menu-item>
        </router-link>
        <!-- 有子元素 -->
        <el-submenu v-else :index="item.name||item.path" :key="item.name">
          <template slot="title">
            <svg-icon v-if="item.meta&&item.meta.icon" :icon-class="item.meta.icon"></svg-icon>
            <span v-if="item.meta&&item.meta.title">{{generateTitle(item.meta.title)}}</span>
          </template>

          <template v-for="child in item.children">
            <template v-if="child.children&&child.children.length>0">
              <el-menu-item :index="item.path+'/'+child.path" :key="child.name"  class="item-relative"  @mouseenter.native="expandMenu(child,$event)">
                <svg-icon v-if="child.meta&&child.meta.icon" :icon-class="child.meta.icon"></svg-icon>
                <span v-if="child.meta&&child.meta.title">{{generateTitle(child.meta.title)}}</span>
                <i class="el-submenu__icon-arrow el-icon-arrow-right"></i>
                <item-menu
                  :class="[pickMenu == child.name ? 'item-menu-show' : 'item-menu-hide']"
                  v-if="child.children&&child.children.length>0"
                  :routes="[child]"
                  :key="child.path"
                  @mouseleave.native="shrinkMenu(child,$event)"
                ></item-menu>
              </el-menu-item>
            </template>
            <template v-else>
              <router-link v-if="!item.hidden" :to="item.path+'/'+child.path" :key="child.name" @mouseenter.native="expandMenu(child,$event)" @mouseleave.native="shrinkMenu(child,$event)">
                <el-menu-item :index="item.path+'/'+child.path">
                  <svg-icon v-if="child.meta&&child.meta.icon" :icon-class="child.meta.icon"></svg-icon>
                  <span v-if="child.meta&&child.meta.title">{{generateTitle(child.meta.title)}}</span>
                </el-menu-item>
              </router-link>
            </template>
          </template>
        </el-submenu>
      </template>
    </template>
  </div>
</template>

<script>
import { generateTitle } from '@/utils/i18n'
import ItemMenu from './ItemMenu'

export default {
  name: 'SidebarItem',
  components: {
    ItemMenu
  },
  data() {
    return {
      pickMenu: ''
    }
  },
  props: {
    routes: {
      type: Array
    },
    isNest: {
      type: Boolean,
      default: false
    }
  },
  methods: {
    generateTitle,
    expandMenu(child, event) {
      event.stopPropagation()
      this.pickMenu = child.name
    },
    shrinkMenu(child, event) {
      event.stopPropagation()
      this.pickMenu = ''
    }
  },
  mounted() {}
}
</script>

<style scoped>
.item-relative{
  position: relative;
}
.item-menu-show{
  display: block !important;
}
.item-menu-hide{
  display: none !important;
}
</style>


