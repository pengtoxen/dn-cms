<template>
  <div class="create-container">
    <el-container  class="create-main-container">
      <el-main class="info-container">
        <div class="info-container">
            <el-form :model="uinfo" :rules="uinfoRules" ref="uinfo" label-width="100px">
              <el-form-item :label="$t('user.username')" label-position="right">
                <el-col :span="8">
                  <el-input v-model="uinfo.username" :disabled="true"></el-input>
                </el-col>
              </el-form-item>
              <el-form-item :label="$t('user.nickname')" label-position="right" prop="nickname">
                <el-col :span="8">
                  <el-input v-model="uinfo.nickname" clearable></el-input>
                </el-col>
              </el-form-item>
              <el-form-item :label="$t('user.opassword')" label-position="right" prop="opassword">
                <el-col :span="8">
                  <el-input type="password" v-model="uinfo.opassword" auto-complete="off" clearable></el-input>
                </el-col>
              </el-form-item>
              <el-form-item :label="$t('user.npassword')" label-position="right" prop="npassword">
                <el-col :span="8">
                  <el-input type="password" v-model="uinfo.npassword" auto-complete="off" clearable></el-input>
                </el-col>
              </el-form-item>
              <el-form-item :label="$t('user.avatar')" label-position="right">
                <el-col :span="8">
                  <el-upload
                    class="avatar-uploader"
                    :action="uploadUrl"
                    :show-file-list="false"
                    list-type="picture-card"
                    :on-success="handleSuccess"
                    :before-upload="beforeUpload"
                    :http-request="uploadQiniu"
                    >
                    <img v-if="uinfo.avatar" :src="uinfo.avatar" class="avatar">
                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                  </el-upload>
                </el-col>
              </el-form-item>
              <el-form-item>
                <el-button type="primary" @click="submitForm('uinfo')">保存</el-button>
                <el-button @click="resetForm('uinfo')">重置</el-button>
              </el-form-item>
            </el-form>
        </div>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import store from '@/store'
import { edit } from '@/api/user'
import { getToken, upload } from '@/api/qiniu'

export default {
  name: 'info',
  components: {},
  data() {
    return {
      uinfo: {
        username: store.getters.username,
        nickname: store.getters.name,
        opassword: '',
        npassword: '',
        avatar: store.getters.avatar
      },
      uinfoRules: {
        nickname: [
          { required: true, message: '必填', trigger: 'blur' },
          { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
        ],
        opassword: [
          { required: true, message: '必填', trigger: 'blur' },
          { min: 3, max: 18, message: '长度在 6 到 18 个字符', trigger: 'blur' }
        ],
        npassword: [
          { required: true, message: '必填', trigger: 'blur' },
          { min: 6, max: 18, message: '长度在 6 到 18 个字符', trigger: 'blur' }
        ]
      },
      uploadUrl: process.env.UPLOAD_URL,
      qiniuApi: process.env.QINIU_URL,
      dialogImageUrl: '',
      dialogVisible: false,
      upToken: ''
    }
  },
  computed: {},
  created() {
    this.$peng.bindScope(this)
  },
  watch: {},
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          edit(this[formName]).then((ret) => {
            if (ret.data.code === 0) {
              const uinfo = ret.data.data
              this.$store.dispatch('RefreshUinfo', uinfo).then(() => {
                this.$peng.msgOk(this.$t('common.message.operate_success'))
              }).catch(() => {
                this.$peng.msgErr(this.$t('login.login_fail'))
              })
            } else {
              if (ret.data.data.field !== undefined) {
                this.$refs.uinfo.validateField(ret.data.data.field)
              }
              this.$peng.msgErr(ret.data.msg)
            }
          })
        } else {
          this.$peng.msgErr(this.$t('common.message.operate_fail'))
          return false
        }
      })
    },
    resetForm(formName) {
      this.$refs[formName].resetFields()
    },
    handleSuccess(ret, file) {},
    beforeUpload(file) {
      if (!this.$peng.isPicture(file.name)) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      if (!this.$peng.overPicSize(file.name, file.size)) {
        this.$peng.msgErr(this.$t('common.message.illegal_form'))
        return false
      }
      return true
    },
    uploadQiniu(request) {
      const file = request.file
      const action = request.action
      const ext = this.$peng.getExt(file.name)
      const keyname = 'avatar/' + this.$peng.uuidv4() + '.' + ext
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
                this.uinfo.avatar = this.qiniuApi + '/' + response.data.data.fkey
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
<style>
  .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
</style>

