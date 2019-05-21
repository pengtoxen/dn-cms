import Vue from 'vue'
import Router from 'vue-router'
const _import = require('./_import_' + process.env.NODE_ENV)
// in development-env not use lazy-loading, because lazy-loading too many pages will cause webpack hot update too slow. so only in production use lazy-loading;
// detail: https://panjiachen.github.io/vue-element-admin-site/#/lazy-loading

Vue.use(Router)

/* Layout */
import Layout from '../views/layout/Layout'

/** note: submenu only apppear when children.length>=1
*   detail see  https://panjiachen.github.io/vue-element-admin-site/#/router-and-nav?id=sidebar
**/

/**
* hidden: true                   if `hidden:true` will not show in the sidebar(default is false)
* alwaysShow: true               if set true, will always show the root menu, whatever its child routes length
*                                if not set alwaysShow, only more than one route under the children
*                                it will becomes nested mode, otherwise not show the root menu
* redirect: noredirect           if `redirect:noredirect` will no redirct in the breadcrumb
* name:'router-name'             the name is used by <keep-alive> (must set!!!)
* meta : {
    roles: ['admin','editor']     will control the page roles (you can set multiple roles)
    title: 'title'               the name show in submenu and breadcrumb (recommend set)
    icon: 'svg-name'             the icon show in the sidebar,
    noCache: true                if fasle ,the page will no be cached(default is false)
  }
**/
export const constantRouterMap = [
  { path: '/login', component: _import('login/index'), hidden: true },
  { path: '/authredirect', component: _import('login/authredirect'), hidden: true },
  { path: '/404', component: _import('errorPage/404'), hidden: true },
  { path: '/401', component: _import('errorPage/401'), hidden: true },
  {
    path: '',
    component: Layout,
    redirect: 'dashboard',
    meta: {
      title: 'index',
      icon: 'dashboard'
    },
    children: [
      {
        path: 'dashboard',
        component: _import('dashboard/index'),
        name: 'dashboard',
        meta: {
          title: 'dashboard',
          icon: 'dashboard',
          noCache: true
        }
      }
    ]
  }
]

export default new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }), // 跳转到新的页面时,定位到最顶端
  routes: constantRouterMap
})

export const asyncRouterMap = [
  {
    path: '/specimen',
    component: Layout,
    name: 'specimen',
    meta: {
      title: 'specimen',
      icon: 'table'
    },
    children: [
      {
        path: 'fossil',
        component: _import('fossil/list'),
        name: 'fossil',
        meta: {
          title: 'fossil',
          icon: 'table'
        }
      },
      {
        path: 'fossil/create',
        component: _import('fossil/create'),
        name: 'create',
        hidden: true,
        meta: {
          title: 'create',
          icon: 'table'
        }
      },
      {
        path: 'fossil/edit',
        component: _import('fossil/edit'),
        name: 'fossil-edit',
        hidden: true,
        meta: {
          title: 'fossil-edit',
          icon: 'table'
        }
      }
    ]
  },
  {
    path: '/user',
    component: Layout,
    name: 'user',
    meta: {
      title: 'user',
      icon: 'table'
    },
    children: [
      {
        path: '/user/edit',
        component: _import('user/info'),
        name: 'user-edit',
        meta: {
          title: 'user-edit',
          icon: 'table'
        },
        children: [
          {
            path: '/user/edit/edit1',
            component: _import('user/info'),
            name: 'edit1',
            meta: {
              title: 'user-edit1',
              icon: 'table'
            }
          },
          {
            path: '/user/edit/edit2',
            component: _import('user/info'),
            name: 'edit2',
            meta: {
              title: 'user-edit2',
              icon: 'table'
            }
          }
        ]
      }
    ]
  },
  { path: '*', redirect: '/404', hidden: true }
]

