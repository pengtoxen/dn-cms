exports.install = function(Vue, options) {
  Vue.prototype.$peng = {
    scope: this,
    bindScope: function(that) {
      this.scope = that
    },
    deBindScope: function() {
      this.scope = this
    },
    common: {
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
      }
    },
    array: {
      /**
      * 判断指定val是否在数组array中
      * @param {Object} val 需要判断的值
      * @param {Array} data 所在的数组
      * @param {Number} idx 从数组array的idx处开始判断，若未指定，则从整个数组array中判断
      * @returns {Number} val在array中的位置，若不在，则返回false
      */
      inArray: function(target, data, idx) {
        if (!data) return false
        if (!this.data.isArray(data)) {
          return false
        }
        var arrLen = data.length
        idx = idx || 0
        idx = (idx < 0 || idx > data.length - 1) ? 0 : idx
        for (; idx < arrLen; idx++) {
          if (data[idx] === target) {
            return idx
          }
        }
        return false
      },
      /**
       * 合并多个数组为一个数组
       * @param {Array} args 要合并的数组参数，如：arr1,arr2,arr3...
       * @returns {Array} 合并后的结果数组
       */
      concat: function(args) {
        return [].concat.apply([], arguments)
      },
      /**
       * 将一个或多个数组合并为一个字符串
       * @param {String} separator 指定分隔符
       * @param {Array} args 要合并的数组参数(arr1,arr2,arr3...)
       * @returns {String} 合并后的字符串
       */
      join: function(separator, args) {
        var source = []
        if (arguments.length > 2) {
          for (var i = 1; i < arguments.length; i++) {
            source = source.concat(arguments[i])
          }
        } else {
          source = arguments[1]
        }
        return source.join(separator)
      },
      /**
       * 去掉array中的重复项
       * @param {Array} arr 需要去重的数组
       * @returns {Array} 去重后的新数组
       */
      unique: function(arr) {
        if (!arr || arr.length <= 1) {
          return arr
        }
        var _arr = arr.sort()
        var duplicateIdx = []
        var idxLength = 0
        for (let i = 1; i < _arr.length; i++) {
          if (_arr[i] === _arr[i - 1]) {
            idxLength = duplicateIdx.push(i)
          }
        }
        if (idxLength > 0) {
          while (idxLength--) {
            _arr.splice(duplicateIdx[idxLength], 1)
          }
          arr = _arr
        }
        return arr
      },
      /**
       * 在指定数组中删除指定的数据
       * @param {Array} sourceArr 待操作的数组
       * @param {Array} removeArr 需要删除的项
       * @returns {Array} 新的数组
       */
      remove: function(sourceArr, removeArr) {
        if (!sourceArr || !removeArr || removeArr.length === 0) {
          return sourceArr
        }
        removeArr = this.Unique(removeArr)
        var sourceLen = sourceArr.length
        var removeLen = removeArr.length
        var tempIdx = -1

        for (var i = 0; i < sourceLen; i++) {
          for (var j = 0; j < removeLen; j++) {
            tempIdx = this.InArray(removeArr[j], sourceArr)
            if (tempIdx >= 0) {
              sourceArr.splice(tempIdx, 1)
              sourceLen = sourceArr.length
            }
          }
        }
        return sourceArr
      },
      /**
       * 将obj转换为Array
       * @param {object} obj 要转换为Array的对象
       * @returns {Array} 转换后的数组
       */
      ToArray: function(obj) {
        if (!obj) {
          return null
        }
        if (!obj.length) {
          return null
        }
        if (this.data.isArray(obj)) {
          return obj
        }
        if (this.date.isObject(obj)) {
          return [].slice.call(obj)
        }
        return null
      }
    },
    data: {
      /**
       * 是否是正整数，若失败，则返回false
       * @param {string} val 要转换的值
       * @returns {boolean}
       */
      isPositiveInt: function(val) {
        const n = this.data.getInt(val)
        if (n % 1 !== 0 || n <= 0) {
          return false
        }
        return true
      },
      /**
       * 将值转为int型，若失败，则返回0
       * @param {string} val 要转换的值
       * @returns {int}
       */
      getInt: function(val) {
        return this.getIntDefault(val, 0)
      },
      /**
       * 将值转为int型，若失败，则返回null
       * @param {string} val 要转换的值
       * @returns {int?} 如果转换失败，则返回null
       */
      getIntNull: function(val) {
        return this.getIntDefault(val, null)
      },
      /**
       * 将值转为int型，若失败，则返回defaultValue
       * @param {string} val 要转换的值
       * @param {int} defaultValue 默认值
       * @returns {int} 转换结果
       */
      getIntDefault: function(val, defaultValue) {
        return parseInt(val, 10) || defaultValue
      },
      /**
       * 将值转为float型，若失败，则返回0
       * @param {string} val 要转换的值
       * @returns {float} 转换结果
       */
      getFloat: function(val) {
        return this.getFloatDefault(val, 0)
      },
      /**
       * 将值转为float型，若失败，则返回null
       * @param {string} val 要转换的值
       * @returns {float?} 转换结果
       */
      getFloatNull: function(val) {
        return this.getFloatDefault(val, null)
      },
      /**
       * 将值转为float型，若失败，则返回defaultValue
       * @param {string} val 要转换的值
       * @param {float} defaultValue 默认值
       * @returns {float} 转换结果
       */
      getFloatDefault: function(val, defaultValue) {
        return parseFloat(val) || defaultValue
      },
      /**
       * 判断val是否为数字
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isNumber: function(val) {
        return (typeof (val) === 'number' || typeof (val) === 'string') && val !== '' && !isNaN(val)
      },
      /**
       * 判断指定值是否为一个对象
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isObject: function(val) {
        return val !== null && typeof val === 'object'
      },
      /**
       * 判断指定值是否为Date对象
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isDate: function(val) {
        return val instanceof Date && !isNaN(val.valueOf())
      },
      /**
       * 判断指定值是否为数组
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isArray: function(val) {
        return Object.prototype.toString.call(val) === '[object Array]'
      },
      /**
       * 判断指定值为null或为空字符串
       * @param {string} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isNullOrEmpty: function(val) {
        return val === null || val === ''
      },
      /**
       * 判断指定值为null，或为空字符串，或为空白字符串
       * @param {string} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isNullOrWhiteSpace: function(val) {
        return this.IsNullOrEmpty(this.string.trim(val))
      },
      /**
       * 判断指定值是否为html元素
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isElement: function(val) {
        return typeof HTMLElement === 'object' ? val instanceof HTMLElement : val && typeof val === 'object' && val !== null && val.nodeType === 1 && typeof val.nodeName === 'string'
      },
      /**
       * 判断指定值是否为function
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isFunction: function(val) {
        return Object.prototype.toString.call(val) === '[object Function]'
      },
      /**
       * 判断指定值是否为String
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isString: function(val) {
        return typeof val === 'string' || val instanceof String
      },
      /**
       * 判断指定字符串是否为"true"
       * @param {string} val 要判断的值
       * @returns {bool} 判断结果
       */
      isBoolean: function(val) {
        return /^true$/i.test(val)
      },
      /**
       * 判断指定值是否为RegExp对象
       * @param {object} val 要判断的值
       * @returns {bool} 判断结果
       */
      isRegExp: function(val) {
        return val && val instanceof RegExp
      },
      /**
       * 判断指定值是否为NaN
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isNaN: function(val) {
        return isNaN(val)
      },
      /**
       * 判断指定值是否为null
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isNull: function(val) {
        return val === null
      },
      /**
       * 判断指定值是否为undefined
       * @param {object} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isUndefined: function(val) {
        return val === undefined || typeof (val) === 'undefined'
      },
      /**
       * 指定值是否全部为大写
       * @param {string} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isUpper: function(val) {
        return val.toUpperCase() === val
      },
      /**
       * 指定值是否全部为小写
       * @param {string} val 要判断的值
       * @returns {Boolean} 判断结果
       */
      isLower: function(val) {
        return val.toLowerCase() === val
      }
    }
  }
}
