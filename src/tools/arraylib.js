exports.install = function(Vue, options) {
  Vue.prototype.$peng.arraylib = {
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
  }
}
