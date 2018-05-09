exports.install = function(Vue, options) {
  Vue.prototype.$peng = {
    scope: this,
    bindScope: function(that) {
      this.scope = that
    },
    deBindScope: function() {
      this.scope = this
    },
    msgOk: function(message) {
      this.scope.$notify({
        title: this.scope.$t('common.message.success'),
        message: message,
        type: 'success',
        duration: 2000
      })
    },
    msgErr: function(message) {
      this.scope.$notify({
        title: this.scope.$t('common.message.error'),
        message: message,
        type: 'error',
        duration: 2000
      })
    },
    msgInf: function(message) {
      this.scope.$notify({
        title: this.scope.$t('common.message.info'),
        message: message,
        type: 'info',
        duration: 2000
      })
    },
    isArray: function(o) {
      return Object.prototype.toString.call(o) === '[object Array]'
    },
    inArray: function(target, data) {
      if (!this.isArray(data)) {
        return false
      }
      for (let i = 0; i < data.length; i++) {
        if (target === data[i]) {
          return true
        }
      }
      return false
    },
    downloadURI: function(uri, name) {
      const link = document.createElement('a')
      link.download = name
      link.href = uri
      link.click()
    },
    getExt: function(file) {
      const index = file.lastIndexOf('.')
      return file.substring(index + 1)
    },
    isPicture: function(file) {
      const ext = this.getExt(file)
      const exts = ['png', 'jpg', 'jpeg', 'gif']
      if (this.inArray(ext, exts)) {
        return true
      }
      return false
    },
    isWord: function(file) {
      const ext = this.getExt(file)
      const exts = ['docx', 'doc']
      if (this.inArray(ext, exts)) {
        return true
      }
      return false
    },
    isPositiveInt: function(t) {
      const n = parseInt(t)
      if (n % 1 !== 0 || n <= 0) {
        return false
      }
      return true
    }
  }
}
