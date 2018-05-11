<template>
  <el-cascader
    placeholder="搜索"
    :options="options"
    filterable
    change-on-select
    :class="geoClass"
    :style="geoStyle"
    :clearable="geoClear"
    v-model="bindOption"
    @change="handleChange"
  ></el-cascader>
</template>
 
<script>
import { geoAge } from '@/api/common'
export default {
  props: {
    geoClass: {
      type: String,
      default: ''
    },
    geoStyle: {
      type: String,
      default: 'width: 100%'
    },
    geoOption: {
      type: String,
      default: ''
    },
    geoClear: {
      type: Boolean,
      default: true
    }
  },
  data() {
    return {
      bindOption: [],
      options: [
        {
          'value': '1',
          'label': '冥古宇',
          'pvalue': '0'
        },
        {
          'value': '2',
          'label': '太古宇',
          'pvalue': '0'
        },
        {
          'value': '3',
          'label': '元古宇',
          'pvalue': '0'
        },
        {
          'value': '4',
          'label': '显生宇',
          'pvalue': '0',
          'children': [
            {
              'value': '7',
              'label': '古生届',
              'pvalue': '4',
              'children': [
                {
                  'value': '8',
                  'label': '寒武系',
                  'pvalue': '7',
                  'children': [
                    {
                      'value': '9',
                      'label': '纽芬兰统',
                      'pvalue': '8',
                      'children': [
                        {
                          'value': '16',
                          'label': '幸运阶',
                          'pvalue': '9'
                        },
                        {
                          'value': '18',
                          'label': '第二阶',
                          'pvalue': '9'
                        }
                      ]
                    },
                    {
                      'value': '10',
                      'label': '第二统',
                      'pvalue': '8',
                      'children': [
                        {
                          'value': '19',
                          'label': '第三阶',
                          'pvalue': '10'
                        },
                        {
                          'value': '20',
                          'label': '第四阶',
                          'pvalue': '10'
                        }
                      ]
                    },
                    {
                      'value': '11',
                      'label': '第三统',
                      'pvalue': '8',
                      'children': [
                        {
                          'value': '21',
                          'label': '第五阶',
                          'pvalue': '11'
                        },
                        {
                          'value': '22',
                          'label': '鼓山阶',
                          'pvalue': '11'
                        },
                        {
                          'value': '23',
                          'label': '古丈阶',
                          'pvalue': '11'
                        }
                      ]
                    },
                    {
                      'value': '12',
                      'label': '芙蓉统',
                      'pvalue': '8',
                      'children': [
                        {
                          'value': '24',
                          'label': '排碧阶',
                          'pvalue': '12'
                        },
                        {
                          'value': '25',
                          'label': '江山阶',
                          'pvalue': '12'
                        },
                        {
                          'value': '26',
                          'label': '第十阶',
                          'pvalue': '12'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '27',
                  'label': '奥陶系',
                  'pvalue': '7',
                  'children': [
                    {
                      'value': '28',
                      'label': '下奥陶统',
                      'pvalue': '27',
                      'children': [
                        {
                          'value': '33',
                          'label': '特马豆克阶',
                          'pvalue': '28'
                        },
                        {
                          'value': '34',
                          'label': '弗洛阶',
                          'pvalue': '28'
                        }
                      ]
                    },
                    {
                      'value': '29',
                      'label': '中奥陶统',
                      'pvalue': '27',
                      'children': [
                        {
                          'value': '35',
                          'label': '大坪阶',
                          'pvalue': '29'
                        },
                        {
                          'value': '36',
                          'label': '达瑞威尔阶',
                          'pvalue': '29'
                        }
                      ]
                    },
                    {
                      'value': '30',
                      'label': '上奥陶统',
                      'pvalue': '27',
                      'children': [
                        {
                          'value': '37',
                          'label': '桑比阶',
                          'pvalue': '30'
                        },
                        {
                          'value': '38',
                          'label': '凯迪阶',
                          'pvalue': '30'
                        },
                        {
                          'value': '39',
                          'label': '赫南特阶',
                          'pvalue': '30'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '31',
                  'label': '志留系',
                  'pvalue': '7',
                  'children': [
                    {
                      'value': '40',
                      'label': '兰多维列统',
                      'pvalue': '31',
                      'children': [
                        {
                          'value': '41',
                          'label': '鲁丹阶',
                          'pvalue': '40'
                        },
                        {
                          'value': '42',
                          'label': '埃隆阶',
                          'pvalue': '40'
                        },
                        {
                          'value': '43',
                          'label': '特列奇阶',
                          'pvalue': '40'
                        }
                      ]
                    },
                    {
                      'value': '44',
                      'label': '温洛克统',
                      'pvalue': '31',
                      'children': [
                        {
                          'value': '45',
                          'label': '申伍德阶',
                          'pvalue': '44'
                        },
                        {
                          'value': '46',
                          'label': '候墨阶',
                          'pvalue': '44'
                        }
                      ]
                    },
                    {
                      'value': '47',
                      'label': '罗德洛统',
                      'pvalue': '31',
                      'children': [
                        {
                          'value': '49',
                          'label': '高思特阶',
                          'pvalue': '47'
                        },
                        {
                          'value': '50',
                          'label': '卢德福特阶',
                          'pvalue': '47'
                        }
                      ]
                    },
                    {
                      'value': '48',
                      'label': '普里道利统',
                      'pvalue': '31'
                    }
                  ]
                },
                {
                  'value': '32',
                  'label': '泥盆系',
                  'pvalue': '7',
                  'children': [
                    {
                      'value': '51',
                      'label': '下泥盆统',
                      'pvalue': '32',
                      'children': [
                        {
                          'value': '54',
                          'label': '洛赫考夫阶',
                          'pvalue': '51'
                        },
                        {
                          'value': '55',
                          'label': '布拉格阶',
                          'pvalue': '51'
                        },
                        {
                          'value': '56',
                          'label': '埃姆斯阶',
                          'pvalue': '51'
                        }
                      ]
                    },
                    {
                      'value': '52',
                      'label': '中泥盆统',
                      'pvalue': '32',
                      'children': [
                        {
                          'value': '57',
                          'label': '艾菲尔阶',
                          'pvalue': '52'
                        },
                        {
                          'value': '58',
                          'label': '吉维特阶',
                          'pvalue': '52'
                        }
                      ]
                    },
                    {
                      'value': '53',
                      'label': '上泥盆统',
                      'pvalue': '32',
                      'children': [
                        {
                          'value': '59',
                          'label': '弗拉阶',
                          'pvalue': '53'
                        },
                        {
                          'value': '60',
                          'label': '法门阶',
                          'pvalue': '53'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '61',
                  'label': '石炭系',
                  'pvalue': '7',
                  'children': [
                    {
                      'value': '62',
                      'label': '密西西比亚系',
                      'pvalue': '61',
                      'children': [
                        {
                          'value': '64',
                          'label': '杜内阶',
                          'pvalue': '62'
                        },
                        {
                          'value': '65',
                          'label': '维宪阶',
                          'pvalue': '62'
                        },
                        {
                          'value': '66',
                          'label': '谢尔普霍夫阶',
                          'pvalue': '62'
                        }
                      ]
                    },
                    {
                      'value': '63',
                      'label': '宾夕法尼亚系',
                      'pvalue': '61',
                      'children': [
                        {
                          'value': '67',
                          'label': '巴什基尔阶',
                          'pvalue': '63'
                        },
                        {
                          'value': '68',
                          'label': '莫斯科阶',
                          'pvalue': '63'
                        },
                        {
                          'value': '69',
                          'label': '卡西莫夫阶',
                          'pvalue': '63'
                        },
                        {
                          'value': '70',
                          'label': '格舍尔阶',
                          'pvalue': '63'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '71',
                  'label': '二叠系',
                  'pvalue': '7',
                  'children': [
                    {
                      'value': '72',
                      'label': '乌拉尔统',
                      'pvalue': '71',
                      'children': [
                        {
                          'value': '73',
                          'label': '阿瑟尔阶',
                          'pvalue': '72'
                        },
                        {
                          'value': '74',
                          'label': '萨克马尔阶',
                          'pvalue': '72'
                        },
                        {
                          'value': '75',
                          'label': '亚丁斯克阶',
                          'pvalue': '72'
                        },
                        {
                          'value': '76',
                          'label': '空谷阶',
                          'pvalue': '72'
                        }
                      ]
                    },
                    {
                      'value': '77',
                      'label': '瓜德鲁普统',
                      'pvalue': '71',
                      'children': [
                        {
                          'value': '78',
                          'label': '罗德阶',
                          'pvalue': '77'
                        },
                        {
                          'value': '79',
                          'label': '沃德阶',
                          'pvalue': '77'
                        },
                        {
                          'value': '80',
                          'label': '卡匹敦阶',
                          'pvalue': '77'
                        }
                      ]
                    },
                    {
                      'value': '81',
                      'label': '乐平统',
                      'pvalue': '71',
                      'children': [
                        {
                          'value': '82',
                          'label': '吴家坪阶',
                          'pvalue': '81'
                        },
                        {
                          'value': '83',
                          'label': '长兴阶',
                          'pvalue': '81'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              'value': '95',
              'label': '中生界',
              'pvalue': '4',
              'children': [
                {
                  'value': '84',
                  'label': '三叠系',
                  'pvalue': '95',
                  'children': [
                    {
                      'value': '85',
                      'label': '下三叠统',
                      'pvalue': '84',
                      'children': [
                        {
                          'value': '86',
                          'label': '印度阶',
                          'pvalue': '85'
                        },
                        {
                          'value': '87',
                          'label': '奥伦尼克阶',
                          'pvalue': '85'
                        }
                      ]
                    },
                    {
                      'value': '88',
                      'label': '中三叠统',
                      'pvalue': '84',
                      'children': [
                        {
                          'value': '89',
                          'label': '安尼阶',
                          'pvalue': '88'
                        },
                        {
                          'value': '90',
                          'label': '拉丁阶',
                          'pvalue': '88'
                        }
                      ]
                    },
                    {
                      'value': '91',
                      'label': '上三叠统',
                      'pvalue': '84',
                      'children': [
                        {
                          'value': '92',
                          'label': '卡尼阶',
                          'pvalue': '91'
                        },
                        {
                          'value': '93',
                          'label': '诺利阶',
                          'pvalue': '91'
                        },
                        {
                          'value': '94',
                          'label': '瑞替阶',
                          'pvalue': '91'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '96',
                  'label': '侏罗系',
                  'pvalue': '95',
                  'children': [
                    {
                      'value': '97',
                      'label': '下侏罗统',
                      'pvalue': '96',
                      'children': [
                        {
                          'value': '98',
                          'label': '赫塘阶',
                          'pvalue': '97'
                        },
                        {
                          'value': '99',
                          'label': '辛涅缪尔阶',
                          'pvalue': '97'
                        },
                        {
                          'value': '100',
                          'label': '普林斯巴阶',
                          'pvalue': '97'
                        },
                        {
                          'value': '101',
                          'label': '托阿尔阶',
                          'pvalue': '97'
                        }
                      ]
                    },
                    {
                      'value': '102',
                      'label': '中侏罗统',
                      'pvalue': '96',
                      'children': [
                        {
                          'value': '103',
                          'label': '阿林阶',
                          'pvalue': '102'
                        },
                        {
                          'value': '104',
                          'label': '巴柔阶',
                          'pvalue': '102'
                        },
                        {
                          'value': '105',
                          'label': '巴通阶',
                          'pvalue': '102'
                        },
                        {
                          'value': '106',
                          'label': '卡洛夫阶',
                          'pvalue': '102'
                        }
                      ]
                    },
                    {
                      'value': '107',
                      'label': '上侏罗统',
                      'pvalue': '96',
                      'children': [
                        {
                          'value': '108',
                          'label': '牛津阶',
                          'pvalue': '107'
                        },
                        {
                          'value': '109',
                          'label': '钦莫利阶',
                          'pvalue': '107'
                        },
                        {
                          'value': '110',
                          'label': '提塘阶',
                          'pvalue': '107'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '111',
                  'label': '白垩系',
                  'pvalue': '95',
                  'children': [
                    {
                      'value': '112',
                      'label': '下白垩统',
                      'pvalue': '111',
                      'children': [
                        {
                          'value': '113',
                          'label': '贝里阿斯阶',
                          'pvalue': '112'
                        },
                        {
                          'value': '114',
                          'label': '瓦兰今阶',
                          'pvalue': '112'
                        },
                        {
                          'value': '115',
                          'label': '欧特里夫阶',
                          'pvalue': '112'
                        },
                        {
                          'value': '116',
                          'label': '巴雷姆阶',
                          'pvalue': '112'
                        },
                        {
                          'value': '117',
                          'label': '阿普特阶',
                          'pvalue': '112'
                        },
                        {
                          'value': '118',
                          'label': '阿尔布阶',
                          'pvalue': '112'
                        }
                      ]
                    },
                    {
                      'value': '119',
                      'label': '上白垩统',
                      'pvalue': '111',
                      'children': [
                        {
                          'value': '120',
                          'label': '塞诺曼阶',
                          'pvalue': '119'
                        },
                        {
                          'value': '121',
                          'label': '土伦阶',
                          'pvalue': '119'
                        },
                        {
                          'value': '122',
                          'label': '康尼亚克阶',
                          'pvalue': '119'
                        },
                        {
                          'value': '123',
                          'label': '圣通阶',
                          'pvalue': '119'
                        },
                        {
                          'value': '124',
                          'label': '坎潘阶',
                          'pvalue': '119'
                        },
                        {
                          'value': '125',
                          'label': '马斯特里赫特阶',
                          'pvalue': '119'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              'value': '126',
              'label': '新生界',
              'pvalue': '4',
              'children': [
                {
                  'value': '127',
                  'label': '古近系',
                  'pvalue': '126',
                  'children': [
                    {
                      'value': '128',
                      'label': '古新统',
                      'pvalue': '127',
                      'children': [
                        {
                          'value': '129',
                          'label': '丹麦阶',
                          'pvalue': '128'
                        },
                        {
                          'value': '130',
                          'label': '塞兰特阶',
                          'pvalue': '128'
                        },
                        {
                          'value': '131',
                          'label': '坦尼特阶',
                          'pvalue': '128'
                        }
                      ]
                    },
                    {
                      'value': '132',
                      'label': '始新统',
                      'pvalue': '127',
                      'children': [
                        {
                          'value': '133',
                          'label': '伊普里斯阶',
                          'pvalue': '132'
                        },
                        {
                          'value': '134',
                          'label': '卢泰特阶',
                          'pvalue': '132'
                        },
                        {
                          'value': '135',
                          'label': '巴顿阶',
                          'pvalue': '132'
                        },
                        {
                          'value': '136',
                          'label': '普利亚本阶',
                          'pvalue': '132'
                        }
                      ]
                    },
                    {
                      'value': '137',
                      'label': '渐新统',
                      'pvalue': '127',
                      'children': [
                        {
                          'value': '138',
                          'label': '吕珀尔阶',
                          'pvalue': '137'
                        },
                        {
                          'value': '139',
                          'label': '夏特阶',
                          'pvalue': '137'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '140',
                  'label': '新近系',
                  'pvalue': '126',
                  'children': [
                    {
                      'value': '141',
                      'label': '中新统',
                      'pvalue': '140',
                      'children': [
                        {
                          'value': '142',
                          'label': '阿基坦阶',
                          'pvalue': '141'
                        },
                        {
                          'value': '143',
                          'label': '波尔多阶',
                          'pvalue': '141'
                        },
                        {
                          'value': '144',
                          'label': '兰盖阶',
                          'pvalue': '141'
                        },
                        {
                          'value': '145',
                          'label': '塞拉瓦莱阶',
                          'pvalue': '141'
                        },
                        {
                          'value': '146',
                          'label': '托尔托纳阶',
                          'pvalue': '141'
                        },
                        {
                          'value': '147',
                          'label': '墨西拿阶',
                          'pvalue': '141'
                        }
                      ]
                    },
                    {
                      'value': '151',
                      'label': '上新统',
                      'pvalue': '140',
                      'children': [
                        {
                          'value': '152',
                          'label': '赞克勒阶',
                          'pvalue': '151'
                        },
                        {
                          'value': '153',
                          'label': '皮亚琴察阶',
                          'pvalue': '151'
                        }
                      ]
                    }
                  ]
                },
                {
                  'value': '154',
                  'label': '第四系',
                  'pvalue': '126',
                  'children': [
                    {
                      'value': '155',
                      'label': '更新统',
                      'pvalue': '154',
                      'children': [
                        {
                          'value': '156',
                          'label': '杰拉阶',
                          'pvalue': '155'
                        },
                        {
                          'value': '157',
                          'label': '卡拉布里雅阶',
                          'pvalue': '155'
                        },
                        {
                          'value': '158',
                          'label': '更新统中阶',
                          'pvalue': '155'
                        },
                        {
                          'value': '159',
                          'label': '更新统上阶',
                          'pvalue': '155'
                        }
                      ]
                    },
                    {
                      'value': '160',
                      'label': '全新统',
                      'pvalue': '154'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  },
  methods: {
    handleChange(value) {
      const newValue = value.join('\n')
      this.$emit('fetchGeoData', newValue)
    }
  },
  watch: {
    geoOption(newValue, oldValue) {
      if (newValue) {
        this.bindOption = newValue.split('\n')
      } else {
        this.$emit('clearGeoData', newValue)
      }
    }
  },
  created() {
    const param = {}
    geoAge(param).then((ret) => {
      if (ret.data.code === 0) {
        this.options = ret.data.data
        // this.$peng.common.msgOk(this.$t('common.message.operate_success'))
      } else {
        this.$peng.common.msgInf(this.$t('common.message.operate_fail'))
      }
    }).catch(() => {
      this.$peng.common.msgInf(this.$t('common.message.operate_fail'))
    })
  }
}

</script>