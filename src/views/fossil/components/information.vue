<template>
  <div class="create-container">
    <!-- tab标签页 -->
    <el-tabs type="border-card">
      <!-- 护照信息 -->
      <el-tab-pane label="护照信息">
        <el-container  class="create-main-container">
          <el-main class="info-container">
            <div class="info-container">
                <el-form :model="passport" :rules="passportRules" ref="passport" label-width="100px">
                  <el-form-item :label="$t('fossil.serial_no')" label-position="right">
                    <el-col :span="8">
                      <el-input v-model="passport.serial_no" :disabled="true"></el-input>
                    </el-col>
                  </el-form-item>
                  <el-form-item :label="$t('fossil.name_zh')" label-position="right" prop="name_zh">
                    <el-col :span="8">
                      <el-input v-model="passport.name_zh" clearable></el-input>
                    </el-col>
                  </el-form-item>
                  <el-form-item :label="$t('fossil.name_en')" label-position="right" prop="name_en">
                    <el-col :span="8">
                      <el-input v-model="passport.name_en" clearable></el-input>
                    </el-col>
                  </el-form-item>
                  <el-form-item :label="$t('fossil.owner')" label-position="right" prop="owner">
                    <el-col :span="8">
                      <el-input v-model="passport.owner" clearable></el-input>
                    </el-col>
                  </el-form-item>
                  <el-form-item :label="$t('fossil.get_time')" label-position="right" prop="get_time">
                    <el-col :span="8">
                      <el-date-picker type="date"  placeholder="选择日期" v-model="passport.get_time" align="right" style="width: 100%;" :picker-options="pickerOptions" clearable></el-date-picker>
                    </el-col>
                  </el-form-item>
                  <el-form-item :label="$t('fossil.classification')" label-position="right" prop="classification">
                    <el-col :span="8">
                      <classification :clfOption="passport.classification" @fetchClfData="bindClfData"></classification>
                    </el-col>
                  </el-form-item>
                  <el-form-item>
                    <el-button type="primary" @click="submitForm('passport')">保存</el-button>
                    <el-button @click="resetForm('passport')">重置</el-button>
                  </el-form-item>
                </el-form>
            </div>
          </el-main>
        </el-container>
      </el-tab-pane>

      <!-- 标记信息(类型与特征信息) -->
      <el-tab-pane label="标记信息(类型与特征信息)">
        <el-container  class="create-main-container">
          <el-main class="info-container">
            <div class="info-container">
              <el-form :model="identify" :rules="identifyRules" ref="identify" label-width="100px">
                <el-form-item :label="$t('fossil.district')" label-position="right">
                  <el-col :span="8">
                    <Location :locOption="identify.district" @fetchLocData="bindLocData"></Location>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.address')" label-position="right">
                  <el-col :span="8">
                    <el-input v-model="identify.address"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.geo_age')" label-position="right">
                  <el-col :span="8">
                    <Age :geoOption="identify.geo_age" @fetchGeoData="bindGeoData"></Age>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.geo_layer')" label-position="right" prop="geo_layer">
                  <el-col :span="8">
                    <el-input v-model="identify.geo_layer"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.longitude')" label-position="right" prop="longitude">
                  <el-col :span="8">
                    <el-input v-model.number="identify.longitude"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.latitude')" label-position="right" prop="latitude">
                  <el-col :span="8">
                    <el-input v-model.number="identify.latitude"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.altitude')" label-position="right" prop="altitude">
                  <el-col :span="8">
                    <el-input v-model.number="identify.altitude"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" @click="submitForm('identify')">保存</el-button>
                  <el-button @click="resetForm('identify')">重置</el-button>
                </el-form-item>
              </el-form>
            </div>
          </el-main>
        </el-container>
      </el-tab-pane>

      <!-- 基本特征特性描述信息 -->
      <el-tab-pane label="基本特征特性描述信息">
        <el-container  class="create-main-container">
          <el-main class="info-container">
            <div class="info-container">
              <el-form :model="description" :rules="descriptionRules" ref="description" label-width="100px">
                <el-form-item :label="$t('fossil.abstract')" label-position="right">
                  <el-col :span="18">
                    <el-input type="textarea" class="article-textarea" :rows="1" autosize placeholder="请输入内容" v-model="description.abstract">
                    </el-input>
                    <span class="word-counter" v-show="contentShortLength">{{contentShortLength}}字</span>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.description')" label-position="right">
                  <el-col :span="18">
                    <div class="editor-container">
                      <tinymce :height=500 ref="editor" v-model="description.description"></tinymce>
                    </div>
                  </el-col>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" @click="submitForm('description')">保存</el-button>
                  <el-button @click="resetForm('description')">重置</el-button>
                </el-form-item>
              </el-form>
            </div>
          </el-main>
        </el-container>
      </el-tab-pane>

      <!-- 图文描述信息 -->
      <el-tab-pane label="图文描述信息">
        <el-container  class="create-main-container">
          <el-main class="info-container">
            <div class="info-container">
              <el-form :model="photoInfo" ref="photoInfo" label-width="100px">
                <el-form-item :label="$t('fossil.photo')" label-position="right">
                  <el-col :span="24">
                    <el-upload
                      :action="uploadUrl"
                      list-type="picture-card"
                      :file-list="photoInfo.photo"
                      :on-preview="handlePictureCardPreview"
                      :on-remove="handlePhotoRemove"
                      :on-success="handlePhotoSuccess"
                      :before-upload="beforePhotoUpload"
                      :http-request="uploadQiniu"
                      :data="{name:'photo'}"
                      >
                      <i class="el-icon-plus"></i>
                    </el-upload>
                  <el-dialog :visible.sync="dialogVisible">
                    <img width="100%" :src="dialogImageUrl" alt="">
                  </el-dialog>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.restore_photo')" label-position="right">
                  <el-col :span="24">
                    <el-upload
                      :action="uploadUrl"
                      list-type="picture-card"
                      :file-list="photoInfo.rphoto"
                      :on-preview="handlePictureCardPreview"
                      :on-remove="handleRPhotoRemove"
                      :on-success="handleRPhotoSuccess"
                      :before-upload="beforeRPhotoUpload"
                      :http-request="uploadQiniu"
                      :data="{name:'rphoto'}"
                      >
                      <i class="el-icon-plus"></i>
                    </el-upload>
                    <el-dialog :visible.sync="dialogVisible">
                      <img width="100%" :src="dialogImageUrl" alt="">
                    </el-dialog>
                  </el-col>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" @click="submitForm('photoInfo')">保存</el-button>
                </el-form-item>
              </el-form>
            </div>
          </el-main>
        </el-container>
      </el-tab-pane>

      <!-- 收藏单位信息 -->
      <el-tab-pane label="收藏单位信息">
        <el-container  class="create-main-container">
          <el-main class="info-container">
            <div class="info-container">
              <el-form :model="storage" :rules="storageRules" ref="storage" label-width="100px">
                <el-form-item :label="$t('fossil.storage_name')" label-position="right">
                  <el-col :span="8">
                    <el-input v-model="storage.storage_name"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.storage_no')" label-position="right">
                  <el-col :span="8">
                    <el-input v-model="storage.storage_no"></el-input>
                  </el-col>
                </el-form-item>
                <el-form-item :label="$t('fossil.num')" label-position="right" prop="num">
                  <el-col :span="8">
                    <el-input-number v-model="storage.num" @change="handleStorageNum" :min="1" :max="200" label="资源数量"></el-input-number>
                  </el-col>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" @click="submitForm('storage')">保存</el-button>
                  <el-button @click="resetForm('storage')">重置</el-button>
                </el-form-item>
              </el-form>
            </div>
          </el-main>
        </el-container>
      </el-tab-pane>

      <!-- 相关资料信息 -->
      <el-tab-pane label="相关资料信息">
        <el-container  class="create-main-container">
          <el-main class="info-container">
            <div class="info-container">
              <el-form :model="attachment" ref="attachment" label-width="100px">
                <el-form-item :label="$t('fossil.material')" label-position="right" prop="material">
                  <el-col :span="8">
                    <el-upload
                      class="upload-att"
                      ref="att"
                      :action="uploadUrl"
                      :file-list="attachment.material"
                      :on-preview="handleAttDownload"
                      :on-remove="handleAttRemove"
                      :on-success="handleAttSuccess"
                      :before-upload="beforeAttUpload"
                      :auto-upload="true"
                      :http-request="uploadQiniu"
                      :data="{name:'att'}"
                      >
                      <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
                      <!-- <el-button style="margin-left: 10px;" size="small" type="success" @click="submitAtt">上传到服务器</el-button> -->
                      <div slot="tip" class="el-upload__tip">只能上传文件和图片(文件不超过15MB,图片不超过1MB)</div>
                    </el-upload>
                    <el-dialog :visible.sync="attDialogVisible">
                      <img width="100%" :src="attDialogImageUrl" alt="">
                    </el-dialog>
                  </el-col>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" @click="submitForm('attachment')">保存</el-button>
                </el-form-item>
              </el-form>
            </div>
          </el-main>
        </el-container>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script>
import Tinymce from '@/components/Tinymce'
import MDinput from '@/components/MDinput'
import { createFossil, updateFossil, fetchFossil } from '@/api/fossil'
import { getToken, upload } from '@/api/qiniu'
import Location from '@/components/Location'
import Age from '@/components/GeoData'
import classification from '@/components/ClassficationData'

const defaultForm = {
  status: 1,
  id: undefined,
  is_comment: false
}

export default {
  name: 'information',
  components: { Tinymce, MDinput, Location, Age, classification },
  props: {
    isEdit: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
      upToken: '',
      defaultData: defaultForm,
      defaultRule: {},
      fetchSuccess: true,
      loading: false,
      passport: {
        serial_no: '',
        name_zh: '',
        name_en: '',
        owner: '',
        get_time: new Date(),
        classification: ''
      },
      passportRules: {
        name_zh: [
          { required: true, message: '必填', trigger: 'blur' },
          { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
        ],
        name_en: [
          { required: true, message: '必填', trigger: 'blur' },
          { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
        ],
        owner: [
          { required: true, message: '必填', trigger: 'blur' },
          { min: 3, max: 20, message: '长度在 3 到 10 个字符', trigger: 'blur' }
        ],
        get_time: [
          { type: 'date', message: '请选择日期', trigger: 'change' }
        ],
        classification: [
          { required: true, message: '必填', trigger: 'change' }
        ]
      },
      identify: {
        district: '',
        address: '',
        geo_age: '',
        geo_layer: '',
        longitude: '',
        latitude: '',
        altitude: ''
      },
      identifyRules: {
        district: [
          { message: '必填', trigger: 'change' }
        ],
        geo_age: [
          { message: '必填', trigger: 'change' }
        ],
        geo_layer: [
          { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
        ],
        longitude: [
          { type: 'number', message: '必须为数字值', trigger: 'blur' }],
        latitude: [
          { type: 'number', message: '必须为数字值', trigger: 'blur' }],
        altitude: [
          { type: 'number', message: '必须为数字值', trigger: 'blur' }]
      },
      description: {
        abstract: '',
        description: ''
      },
      descriptionRules: {
        // abstract: [
        //   { message: '摘要', trigger: 'blur' }
        // ],
        // description: [
        //   { message: '特征描述', trigger: 'blur' }
        // ]
      },
      photoInfo: {
        photo: [],
        rphoto: []
      },
      storage: {
        storage_name: '',
        storage_no: '',
        num: 1
      },
      storageRules: {
        num: [
          { type: 'number', message: '必须为数字值', trigger: 'blur' }]
      },
      attachment: {
        material: []
      },
      // 时间选择权
      pickerOptions: {
        // disabledDate(time) {
        //   return time.getTime() < Date.now()
        // },
        shortcuts: [{
          text: '今天',
          onClick(picker) {
            picker.$emit('pick', new Date())
          }
        }, {
          text: '昨天',
          onClick(picker) {
            const date = new Date()
            date.setTime(date.getTime() - 3600 * 1000 * 24)
            picker.$emit('pick', date)
          }
        }, {
          text: '一周前',
          onClick(picker) {
            const date = new Date()
            date.setTime(date.getTime() - 3600 * 1000 * 24 * 7)
            picker.$emit('pick', date)
          }
        }]
      },
      uploadUrl: process.env.UPLOAD_URL,
      baseApi: process.env.BASE_API,
      qiniuUrl: process.env.QINIU_URL,
      // 资源获得默认值
      dialogImageUrl: '',
      dialogVisible: false,
      attDialogImageUrl: '',
      attDialogVisible: false,
      editRoute: {
        path: '/specimen/fossil/edit',
        query: {
          id: '0'
        }
      }
    }
  },
  computed: {
    contentShortLength() {
      return this.description.abstract.length
    }
  },
  created() {
    this.$peng.bindScope(this)
    if (this.isEdit) {
      this.fetchData()
    } else {
      this.postForm()
    }
  },
  watch: {
    passport(newValue, oldValue) {
      if (newValue) {
        this.passport.get_time = new Date(newValue.get_time * 1000)
      }
    }
  },
  methods: {
    postForm: function(form = {}) {
      return Object.assign({}, defaultForm, form)
    },
    fetchData() {
      if (!this.$route.query.id) {
        this.fetchSuccess = false
        return false
      }
      const id = this.$route.query.id
      fetchFossil({ id: id })
        .then(response => {
          this.renderData(response.data.data)
        })
        .catch(err => {
          this.fetchSuccess = false
          console.log(err)
        })
    },
    renderData(data) {
      this.defaultData = data.default
      this.passport = data.passport
      this.identify = this.formatIdentify(data.identify)
      this.description = data.description
      this.photoInfo = this.formatPhoto(data.photoInfo)
      this.storage = data.storage
      this.attachment = data.attachment
    },
    formatIdentify(data) {
      if (data instanceof Object) {
        for (const i in data) {
          if (data.hasOwnProperty(i) !== true) {
            continue
          }
          if (!data[i]) {
            continue
          }
          if (i === 'longitude' || i === 'latitude' || i === 'altitude') {
            data[i] = parseFloat(data[i])
          }
        }
      }
      return data
    },
    formatPhoto(data) {
      const ret = {
        photo: data.photo,
        rphoto: data.restore_photo
      }
      return ret
    },
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          if (!this.defaultData.id) {
            // 验证通过,请求接口
            createFossil(this[formName]).then((ret) => {
              this.$peng.msgOk(this.$t('common.message.operate_success'))
              this.loading = false
              this.editRoute.query.id = ret.data.data
              this.$router.push(this.editRoute)
            })
          } else {
            const param = Object.assign({}, { id: this.defaultData.id }, this[formName])
            updateFossil(param).then((ret) => {
              this.renderData(ret.data.data)
              this.$peng.msgOk(this.$t('common.message.operate_success'))
              this.loading = false
            })
          }
        } else {
          this.$peng.msgErr(this.$t('common.message.operate_fail'))
          return false
        }
      })
    },
    resetForm(formName) {
      this.$refs[formName].resetFields()
    },
    bindLocData(ret) {
      this.identify.district = ret
    },
    bindGeoData(ret) {
      this.identify.geo_age = ret
    },
    bindClfData(ret) {
      this.passport.classification = ret
    },
    // 资源数量计数器
    handleStorageNum(ret) {
      this.storage.num = ret
    },
    // 图片处理
    handlePhotoRemove(file, fileList) {
      this.photoInfo.photo = fileList
    },
    handleRPhotoRemove(file, fileList) {
      this.photoInfo.rphoto = fileList
    },
    handlePictureCardPreview(file) {
      this.dialogImageUrl = file.url
      this.dialogVisible = true
    },
    handlePhotoSuccess(ret) {},
    handleRPhotoSuccess(ret) {},
    beforePhotoUpload(ret) {
      if (!this.$peng.isPicture(ret.name)) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      if (!this.$peng.overPicSize(ret.name, ret.size)) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      return true
    },
    beforeRPhotoUpload(ret) {
      if (!this.$peng.isPicture(ret.name)) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      if (!this.$peng.overPicSize(ret.name, ret.size)) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      return true
    },
    // 附件相关操作
    // submitAtt() {
    //   this.$refs.att.submit()
    // },
    handleAttRemove(file, fileList) {
      this.attachment.material = fileList
    },
    handleAttSuccess(ret) {},
    beforeAttUpload(ret) {
      const ext = this.$peng.getExt(ret.name)
      if (this.$peng.inArray(ext, ['png', 'jpg', 'jpeg', 'gif', 'pdf', 'txt', 'docx', 'doc', 'xlsx', 'xls']) === false) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      if (this.$peng.isPicture(ret.name)) {
        if (!this.$peng.overPicSize(ret.name, ret.size)) {
          this.$peng.msgErr(this.$t('common.message.illegal_form'))
          return false
        }
      } else {
        if (!this.$peng.overFileSize(ret.name, ret.size)) {
          this.$peng.msgErr(this.$t('common.message.illegal_form'))
          return false
        }
      }
      return true
    },
    handleAttDownload(file) {
      if (this.$peng.isPicture(file.name)) {
        this.attDialogImageUrl = file.url
        this.attDialogVisible = true
      } else {
        this.$peng.downloadURI(file.url, file.name)
      }
    },
    uploadQiniu(request) {
      const cname = request.data.name
      const file = request.file
      const action = request.action
      const ext = this.$peng.getExt(file.name)
      const keyname = ext + '/' + this.$peng.uuidv4() + '.' + ext
      getToken()
        .then(response => {
          this.upToken = response.data.data
          const config = {
            headers: { 'Content-Type': 'multipart/form-data' }
          }
          const formData = new FormData()
          formData.append('file', file)
          formData.append('token', this.upToken)
          formData.append('key', keyname)
          upload(action, formData, config)
            .then(response => {
              if (response.data.code === 0) {
                if (cname === 'att') {
                  const obj = {
                    name: response.data.data.fname,
                    url: this.qiniuUrl + '/' + response.data.data.fkey
                  }
                  this.attachment.material.push(obj)
                } else if (cname === 'photo') {
                  const obj = {
                    url: this.qiniuUrl + '/' + response.data.data.fkey
                  }
                  this.photoInfo.photo.push(obj)
                } else if (cname === 'rphoto') {
                  const obj = {
                    url: this.qiniuUrl + '/' + response.data.data.fkey
                  }
                  this.photoInfo.rphoto.push(obj)
                }
              } else {
                this.$peng.msgErr(this.$t('common.message.operate_fail'))
                return false
              }
            })
            .catch(err => {
              console.log(err)
            })
        })
        .catch(err => {
          console.log(err)
        })
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
@import "src/styles/mixin.scss";
.title-prompt {
  position: absolute;
  right: 0px;
  font-size: 12px;
  top: 10px;
  color: #ff4949;
}
.create-container {
  position: relative;
  .create-main-container {
    padding: 40px 45px 20px 50px;
    .info-container {
      position: relative;
      @include clearfix;
      margin-bottom: 10px;
      .info-container-item {
        float: left;
      }
    }
    .editor-container {
      min-height: 300px;
      margin: 0 0 30px;
      .editor-upload-btn-container {
        text-align: right;
        margin-right: 10px;
        .editor-upload-btn {
          display: inline-block;
        }
      }
    }
  }
  .word-counter {
    width: 40px;
    position: absolute;
    right: -10px;
    top: 0px;
  }
  .el-header {
    text-align: left;
  }
  .el-header span {
    text-align: left;
  }
}
</style>

