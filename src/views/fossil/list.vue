<template>
  <div class="app-container calendar-list-container">
    <div class="filter-container">
      <el-input @keyup.enter.native="handleFilter" style="width: 150px;" class="filter-item" :placeholder="$t('fossil.name_zh')" v-model="listQuery.name_zh" clearable>
      </el-input>
      <Classification :clfClass="clfClass" :clfStyle="clfStyle" :clfClear="clfClear" @fetchClfData="bindClfData" @clearClfData="clearClfData" :clfOption="listQuery.classification"></Classification>
      <GeoData  :geoClass="geoClass" :geoStyle="geoStyle" :geoClear="geoClear" @fetchGeoData="bindGeoData" @clearGeoData="clearGeoData" :geoOption="listQuery.geo_age"></GeoData>
      <el-button class="filter-item" type="primary" v-waves icon="el-icon-search" @click="handleFilter">{{$t('common.table.search')}}</el-button>
      <el-button class="filter-item" style="margin-left: 10px;" @click="handleCreate" type="primary" icon="el-icon-edit">{{$t('common.table.add')}}</el-button>
      <el-button class="filter-item" type="primary" :loading="downloadLoading" v-waves icon="el-icon-download" @click="handleDownload">{{$t('common.table.export')}}</el-button>
    </div>

    <el-table :key='tableKey' 
      :data="list" 
      v-loading="listLoading" 
      element-loading-text="给我一点时间" 
      border 
      fit 
      highlight-current-row
      style="width: 100%"
      stripe
      mini
      >
      <el-table-column type="expand">
        <template slot-scope="scope">
          <el-form label-position="left" inline class="list-table-expand">
           <el-form-item :label="$t('fossil.owner')">
              <span>{{ scope.row.owner }}</span>
            </el-form-item>
            <el-form-item :label="$t('fossil.longitude')">
              <span>{{ scope.row.longitude }}</span>
            </el-form-item>
            <el-form-item :label="$t('fossil.geo_layer')">
              <span>{{ scope.row.geo_layer }}</span>
            </el-form-item>
            <el-form-item :label="$t('fossil.latitude')">
              <span>{{ scope.row.latitude }}</span>
            </el-form-item>
            <el-form-item :label="$t('fossil.geo_age')">
              <span>{{ scope.row.geo_age_name }}</span>
            </el-form-item>
            <el-form-item :label="$t('fossil.altitude')">
              <span>{{ scope.row.altitude }}</span>
            </el-form-item>
          </el-form>
        </template>
      </el-table-column>
      <el-table-column width="165px" align="center" :label="$t('fossil.serial_no')">
        <template slot-scope="scope">
          <span>{{scope.row.serial_no}}</span>
        </template>
      </el-table-column>
      <el-table-column width="130px" align="center" :label="$t('fossil.get_time')">
        <template slot-scope="scope">
          <i class="el-icon-time"></i>
          <span>{{scope.row.get_time | parseTime('{y}-{m}-{d}')}}</span>
        </template>
      </el-table-column>
      <el-table-column min-width="150px" :label="$t('fossil.name_zh')">
        <template slot-scope="scope">
          <span class="link-type" @click="handleUpdate(scope.row)">{{scope.row.name_zh}}</span>
          <el-tag v-if="scope.row.classification_name">{{scope.row.classification_name}}</el-tag>
        </template>
      </el-table-column>
      <el-table-column width="110px" align="center" :label="$t('fossil.name_en')">
        <template slot-scope="scope">
          <span>{{scope.row.name_en}}</span>
        </template>
      </el-table-column>
      <el-table-column width="100px" align="center" :label="$t('fossil.district')">
        <template slot-scope="scope">
          <span>{{scope.row.district_name}}</span>
        </template>
      </el-table-column>
      <el-table-column width="110px" align="center" :label="$t('fossil.classification')">
        <template slot-scope="scope">
          <span>{{scope.row.classification_name}}</span>
        </template>
      </el-table-column>
      <el-table-column class-name="status-col" :label="$t('fossil.is_public')" width="100px">
        <template slot-scope="scope">
          <el-switch
            v-model="scope.row.is_public"
            active-color="#13ce66"
            inactive-color="#ff4949"
            @change="handleSwitchPublic(scope.row,scope.row.is_public)"
          >
          </el-switch>
        </template>
      </el-table-column>
      <el-table-column align="center" :label="$t('common.table.action')" width="230" class-name="small-padding fixed-width" fixed="right">
        <template slot-scope="scope">
          <el-button type="primary" icon="el-icon-edit" size="mini" @click="handleUpdate(scope.row)">{{$t('common.table.edit')}}</el-button>
          <el-button type="primary" icon="el-icon-info" size="mini" @click="handleDetail(scope.row)">{{$t('common.table.detail')}}</el-button>
          <el-button type="primary" icon="el-icon-delete" size="mini" @click="handleDelete(scope.row)">{{$t('common.table.delete')}}</el-button>
        </template>
      </el-table-column>
    </el-table>

    <div class="pagination-container">
      <el-pagination background @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page.sync="listQuery.page"
        :page-sizes="[10,20,30, 50]" :page-size="listQuery.limit" layout="total, sizes, prev, pager, next, jumper" :total="total">
      </el-pagination>
    </div>

    <el-dialog :title="$t('common.table.detail')" :visible.sync="dialogDetailVisible" id="detail" top="8vh">
      <el-tabs v-model="photoTabs">
        <el-tab-pane label="照片" name="photo">
          <el-carousel :interval="5000" arrow="always" height="200px">
            <el-carousel-item v-for="item in detail.photo" :key="item.uid">
              <img :src="item.url" height="200px">
            </el-carousel-item>
          </el-carousel>
        </el-tab-pane>
        <el-tab-pane label="复原图" name="restore_photo">
          <el-carousel :interval="5000" arrow="always" height="200px">
            <el-carousel-item v-for="item in detail.restore_photo" :key="item.uid">
              <img :src="item.url" height="200px">
            </el-carousel-item>
          </el-carousel>
        </el-tab-pane>
      </el-tabs>
      <el-collapse v-model="activeNames">
        <el-collapse-item title="护照信息" name="passport" class="title">
          <el-row class="row-css">
            <el-col :span="4"><div class="grid-content col-label">{{$t('fossil.serial_no')}}:</div></el-col>
            <el-col :span="8"><div class="grid-content col-content">{{detail.serial_no}}</div></el-col>
            <el-col :span="4"><div class="grid-content col-label">{{$t('fossil.name_zh')}}:</div></el-col>
            <el-col :span="8"><div class="grid-content col-content">{{detail.name_zh}}</div></el-col>
          </el-row>
          <el-row class="row-css">
            <el-col :span="4"><div class="grid-content col-label">{{$t('fossil.name_en')}}:</div></el-col>
            <el-col :span="8"><div class="grid-content col-content">{{detail.name_en}}</div></el-col>
            <el-col :span="4"><div class="grid-content col-label">{{$t('fossil.owner')}}:</div></el-col>
            <el-col :span="8"><div class="grid-content col-content">{{detail.owner}}</div></el-col>
          </el-row>
          <el-row>
            <el-col :span="4"><div class="grid-content col-label">{{$t('fossil.get_time')}}:</div></el-col>
            <el-col :span="8"><div class="grid-content col-content">{{detail.get_time}}</div></el-col>
            <el-col :span="4"><div class="grid-content col-label">{{$t('fossil.classification')}}:</div></el-col>
            <el-col :span="8"><div class="grid-content col-content">{{detail.classification_name}}</div></el-col>
          </el-row>
        </el-collapse-item>
        <el-collapse-item title="标记信息(类型与特征信息)" name="identify" class="title">
          <el-row class="row-css">
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.district')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.district_name}}</div></el-col>
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.address')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.address}}</div></el-col>
          </el-row>
          <el-row class="row-css">
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.geo_age')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.geo_age_name}}</div></el-col>
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.geo_layer')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.geo_layer}}</div></el-col>
          </el-row>
          <el-row class="row-css">
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.longitude')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.longitude}}</div></el-col>
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.latitude')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.latitude}}</div></el-col>
          </el-row>
          <el-row>
            <el-col :span="3"><div class="grid-content col-label">{{$t('fossil.altitude')}}:</div></el-col>
            <el-col :span="9"><div class="grid-content col-content">{{detail.altitude}}</div></el-col>
            <el-col :span="3"><div class="grid-content col-label"></div></el-col>
            <el-col :span="9"><div class="grid-content col-content"></div></el-col>
          </el-row>
        </el-collapse-item>
        <el-collapse-item title="基本特征特性描述信息" name="description" class="title">
          <el-row>
            <el-col :span="24"><div class="grid-content  row-css">{{detail.abstract}}</div></el-col>
            <el-col :span="24"><div class="grid-content" v-html="detail.description">{{detail.description}}</div></el-col>
          </el-row>
        </el-collapse-item>
        <el-collapse-item title="相关资料信息" name="attachment" class="title">
          <el-row>
            <el-col :span="24">
              <div class="grid-content">
                <ol class="el-upload-list el-upload-list--text" id="att">
                  <li class="el-upload-list__item is-success" v-for="item in detail.material" :key="item.uid" @click="clickHandler(item)">
                    <i class="el-icon-document"></i>
                    {{item.name}}
                  </li>
                </ol>
              </div></el-col>
          </el-row>
        </el-collapse-item>
      </el-collapse>
    </el-dialog>
    <el-dialog :visible.sync="dialogVisible">
      <img width="100%" :src="dialogImageUrl" alt="">
    </el-dialog>
  </div>
</template>

<style>
  #att li:hover{
    cursor: pointer;
  }
  .list-table-expand {
    font-size: 0;
  }
  .list-table-expand label {
    width: 90px;
    color: #99a9bf;
  }
  .list-table-expand .el-form-item {
    margin-right: 0;
    margin-bottom: 0;
    width: 50%;
  }
  #detail .title{
    font-size: 1em; 
  }
  #detail .el-collapse-item__header{
    font-size: 1.15em;
    font-style: italic;
  }
  #detail .el-tabs__item{
    font-size: 1.15em;
    font-style: italic;
  }
  #detail .el-col {
    border-radius: 0px;
  }
  #detail .row-css {
    border-bottom: 1px rgba(187, 183, 183, 0.5) dashed;
  }
  /* .col-content {
    border-bottom: 1px gray solid;
  } */
  #detail .grid-content {
    min-height: 20px;
  }
  #detail .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
  #detail .el-dialog__body {
    padding-top: 0px;
  }
</style>

<script>
import { fetchList, switcher, deleteFossil } from '@/api/fossil'
import waves from '@/directive/waves' // 水波纹指令
import { parseTime } from '@/utils'
import Classification from '@/components/ClassficationData'
import GeoData from '@/components/GeoData'

export default {
  name: 'fossil',
  components: { Classification, GeoData },
  directives: {
    waves
  },
  data() {
    return {
      dialogImageUrl: '',
      dialogVisible: false,
      activeNames: ['passport'],
      photoTabs: 'photo',
      clfClass: 'filter-item',
      clfStyle: 'width: 150px',
      clfClear: true,
      geoClass: 'filter-item',
      geoStyle: 'width: 150px',
      geoClear: true,
      tableKey: 0,
      list: null,
      total: null,
      listLoading: true,
      listQuery: {
        page: 1,
        limit: 10,
        name_zh: '',
        classification: '',
        geo_age: ''
      },
      textMap: {
        update: 'Edit',
        create: 'Create'
      },
      downloadLoading: false,
      createRoute: '/specimen/fossil/create',
      editRoute: {
        path: '/specimen/fossil/edit',
        query: {
          id: '0'
        }
      },
      baseApi: process.env.BASE_API,
      dialogDetailVisible: false,
      detail: {
        id: undefined,
        status: 1,
        is_comment: false,
        serial_no: '',
        name_zh: '',
        name_en: '',
        owner: '',
        get_time: '',
        classification_name: '',
        district_name: '',
        address: '',
        geo_age_name: '',
        geo_layer: '',
        longitude: '',
        latitude: '',
        altitude: '',
        abstract: '',
        description: '',
        photo: [],
        restore_photo: [],
        storage_name: '',
        storage_no: '',
        num: 1,
        material: []
      }
    }
  },
  filters: {
    isPublicType(status) {
      const statusMap = {
        1: 'success',
        0: 'info'
      }
      return statusMap[status]
    },
    isPublic(status) {
      const statusMap = {
        1: 'public',
        0: 'private'
      }
      return statusMap[status]
    }
  },
  created() {
    this.$peng.bindScope(this)
    this.getList()
  },
  methods: {
    getList() {
      this.listLoading = true
      fetchList(this.listQuery).then(response => {
        this.list = response.data.data.lists
        this.total = parseInt(response.data.data.total)
        this.listLoading = false
      })
    },
    handleFilter() {
      this.getList()
    },
    handleSizeChange(val) {
      this.listQuery.limit = val
      this.getList()
    },
    handleCurrentChange(val) {
      this.listQuery.page = val
      this.getList()
    },
    handleSwitchPublic(row, status) {
      const param = {
        'id': row.id,
        'field': 'is_public',
        'value': status
      }
      switcher(param).then((ret) => {
        if (ret.data.code === 0) {
          row.is_public = status
          this.$peng.msgOk(this.$t('common.message.operate_success'))
        } else {
          this.$peng.msgInf(this.$t('common.message.operate_fail'))
        }
      }).catch(() => {
        this.$peng.msgInf(this.$t('common.message.operate_fail'))
      })
    },
    handleCreate() {
      this.$router.push(this.createRoute)
    },
    handleUpdate(row) {
      this.editRoute.query.id = row.id
      this.$router.push(this.editRoute)
    },
    handleDelete(row) {
      this.$confirm('此操作将永久删除该数据, 是否继续?', this.$t('common.message.info'), {
        confirmButtonText: this.$t('common.message.confirm'),
        cancelButtonText: this.$t('common.message.cancel'),
        type: 'warning'
      }).then(() => {
        const param = {
          id: row.id
        }
        deleteFossil(param).then((ret) => {
          if (ret.data.code === 0) {
            this.$peng.msgOk(this.$t('common.message.operate_success'))
            const index = this.list.indexOf(row)
            this.list.splice(index, 1)
          } else {
            this.$peng.msgOk(this.$t('common.message.operate_fail'))
          }
        })
      }).catch(() => {})
    },
    handleDownload() {
      this.downloadLoading = true
      import('@/vendor/Export2Excel').then(excel => {
        const tHeader = ['timestamp', 'title', 'type', 'importance', 'status']
        const filterVal = ['timestamp', 'title', 'type', 'importance', 'status']
        const data = this.formatJson(filterVal, this.list)
        excel.export_json_to_excel(tHeader, data, 'table-list')
        this.downloadLoading = false
      })
    },
    formatJson(filterVal, jsonData) {
      return jsonData.map(v => filterVal.map(j => {
        if (j === 'timestamp') {
          return parseTime(v[j])
        } else {
          return v[j]
        }
      }))
    },
    // bindLocData: function(data) {
    //   this.listQuery.district = data
    // },
    bindGeoData: function(data) {
      this.listQuery.geo_age = data
    },
    bindClfData: function(data) {
      this.listQuery.classification = data
    },
    clearClfData: function(data) {
      this.listQuery.classification = data
    },
    clearGeoData: function(data) {
      this.listQuery.geo_age = data
    },
    handleDetail: function(data) {
      this.activeNames = ['passport']
      this.photoTabs = 'photo'
      this.dialogDetailVisible = true
      this.detail = Object.create(data)
      if (this.detail.photo && typeof this.detail.photo === 'string') {
        const baseApi = this.baseApi
        this.detail.photo = JSON.parse(this.detail.photo)
        this.detail.photo = this.detail.photo.map(function(item) {
          item.url = baseApi + item.url
          return item
        })
      }
      if (this.detail.restore_photo && typeof this.detail.restore_photo === 'string') {
        const baseApi = this.baseApi
        this.detail.restore_photo = JSON.parse(this.detail.restore_photo)
        this.detail.restore_photo = this.detail.restore_photo.map(function(item) {
          item.url = baseApi + item.url
          return item
        })
      }
      if (this.detail.material && typeof this.detail.material === 'string') {
        const baseApi = this.baseApi
        this.detail.material = JSON.parse(this.detail.material)
        this.detail.material = this.detail.material.map(function(item) {
          item.url = baseApi + item.url
          return item
        })
      }
      if (this.detail.description) {
        this.detail.description = this.detail.description.replace(/^<!DOCTYPE html>\s*<html>\s*<head>\s*<\/head>\s*<body>|<\/body>\s*<\/html>\s*$/ig, '')
      }
    },
    clickHandler: function(file) {
      if (this.$peng.isPicture(file.name)) {
        this.dialogImageUrl = file.url
        this.dialogVisible = true
      } else {
        this.$peng.downloadURI(file.url, file.name)
      }
    }
  }
}
</script>
