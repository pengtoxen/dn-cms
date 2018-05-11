exports.install = function(Vue, options) {
  Vue.prototype.$peng.datalib = {
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
