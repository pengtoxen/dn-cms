<template>
  <el-cascader
    placeholder="搜索"
    :options="options"
    filterable
    change-on-select
    :class="clfClass"
    :style="clfStyle"
    :clearable="clfClear"
    v-model="bindOption"
    @change="handleChange"
  ></el-cascader>
</template>
 
<script>
import { fossilClassification } from '@/api/common'
export default {
  props: {
    clfClass: {
      type: String,
      default: ''
    },
    clfStyle: {
      type: String,
      default: 'width: 100%;'
    },
    clfOption: {
      type: String,
      default: ''
    },
    clfClear: {
      type: Boolean,
      default: true
    }
  },
  data() {
    return {
      bindOption: [],
      options: [
        {
          'id': '17',
          'pid': '5',
          'title': '古无脊椎动物',
          'children': [
            {
              'id': '84',
              'pid': '17',
              'title': '原生动物',
              'children': [
                {
                  'id': '366',
                  'pid': '84',
                  'title': '丁丁虫类'
                },
                {
                  'id': '367',
                  'pid': '84',
                  'title': '放射虫类'
                },
                {
                  'id': '368',
                  'pid': '84',
                  'title': '蜓类有孔虫'
                },
                {
                  'id': '369',
                  'pid': '84',
                  'title': '非蜓类有孔虫'
                }
              ]
            },
            {
              'id': '85',
              'pid': '17',
              'title': '海绵动物',
              'children': [
                {
                  'id': '370',
                  'pid': '85',
                  'title': '普通海绵纲'
                },
                {
                  'id': '371',
                  'pid': '85',
                  'title': '钙质海绵纲'
                },
                {
                  'id': '372',
                  'pid': '85',
                  'title': '硬海绵纲'
                },
                {
                  'id': '373',
                  'pid': '85',
                  'title': '层孔海绵纲'
                },
                {
                  'id': '374',
                  'pid': '85',
                  'title': '六射海绵纲'
                }
              ]
            },
            {
              'id': '86',
              'pid': '17',
              'title': '古杯动物',
              'children': [
                {
                  'id': '375',
                  'pid': '86',
                  'title': '规则古杯纲'
                },
                {
                  'id': '376',
                  'pid': '86',
                  'title': '不规则古杯纲'
                }
              ]
            },
            {
              'id': '87',
              'pid': '17',
              'title': '腔肠动物',
              'children': [
                {
                  'id': '377',
                  'pid': '87',
                  'title': '水螅纲'
                },
                {
                  'id': '378',
                  'pid': '87',
                  'title': '锥石类'
                },
                {
                  'id': '379',
                  'pid': '87',
                  'title': '珊瑚纲'
                }
              ]
            },
            {
              'id': '88',
              'pid': '17',
              'title': '蠕虫动物',
              'children': [
                {
                  'id': '380',
                  'pid': '88',
                  'title': '环节动物类'
                }
              ]
            },
            {
              'id': '89',
              'pid': '17',
              'title': '苔藓动物',
              'children': [
                {
                  'id': '381',
                  'pid': '89',
                  'title': '护唇纲'
                },
                {
                  'id': '382',
                  'pid': '89',
                  'title': '窄唇纲'
                },
                {
                  'id': '383',
                  'pid': '89',
                  'title': '裸唇纲'
                }
              ]
            },
            {
              'id': '90',
              'pid': '17',
              'title': '腕足动物',
              'children': [
                {
                  'id': '384',
                  'pid': '90',
                  'title': '无铰纲'
                },
                {
                  'id': '385',
                  'pid': '90',
                  'title': '有铰纲'
                }
              ]
            },
            {
              'id': '91',
              'pid': '17',
              'title': '软体动物',
              'children': [
                {
                  'id': '386',
                  'pid': '91',
                  'title': '腹足纲'
                },
                {
                  'id': '387',
                  'pid': '91',
                  'title': '双壳纲'
                },
                {
                  'id': '388',
                  'pid': '91',
                  'title': '掘足纲'
                },
                {
                  'id': '389',
                  'pid': '91',
                  'title': '喙壳纲'
                },
                {
                  'id': '390',
                  'pid': '91',
                  'title': '多板纲'
                },
                {
                  'id': '391',
                  'pid': '91',
                  'title': '单板纲'
                },
                {
                  'id': '392',
                  'pid': '91',
                  'title': '竹节石纲'
                },
                {
                  'id': '393',
                  'pid': '91',
                  'title': '软舌螺纲'
                },
                {
                  'id': '394',
                  'pid': '91',
                  'title': '菊石类'
                },
                {
                  'id': '395',
                  'pid': '91',
                  'title': '鹦鹉螺类'
                }
              ]
            },
            {
              'id': '92',
              'pid': '17',
              'title': '节肢动物',
              'children': [
                {
                  'id': '396',
                  'pid': '92',
                  'title': '三叶虫纲'
                },
                {
                  'id': '397',
                  'pid': '92',
                  'title': '昆虫纲'
                },
                {
                  'id': '398',
                  'pid': '92',
                  'title': '介形虫类'
                },
                {
                  'id': '399',
                  'pid': '92',
                  'title': '叶肢介类'
                },
                {
                  'id': '400',
                  'pid': '92',
                  'title': '甲壳纲'
                }
              ]
            },
            {
              'id': '93',
              'pid': '17',
              'title': '棘皮动物',
              'children': [
                {
                  'id': '401',
                  'pid': '93',
                  'title': '始海百合纲'
                },
                {
                  'id': '402',
                  'pid': '93',
                  'title': '海百合纲'
                },
                {
                  'id': '403',
                  'pid': '93',
                  'title': '海林檎纲'
                },
                {
                  'id': '404',
                  'pid': '93',
                  'title': '海胆纲'
                },
                {
                  'id': '405',
                  'pid': '93',
                  'title': '海蕾纲'
                },
                {
                  'id': '406',
                  'pid': '93',
                  'title': '海星纲'
                },
                {
                  'id': '407',
                  'pid': '93',
                  'title': '蛇尾纲'
                }
              ]
            },
            {
              'id': '94',
              'pid': '17',
              'title': '笔石动物',
              'children': [
                {
                  'id': '408',
                  'pid': '94',
                  'title': '笔石纲'
                }
              ]
            }
          ]
        },
        {
          'id': '18',
          'pid': '5',
          'title': '古脊椎动物',
          'children': [
            {
              'id': '95',
              'pid': '18',
              'title': '无颌类',
              'children': [
                {
                  'id': '409',
                  'pid': '95',
                  'title': '盔甲鱼亚纲'
                },
                {
                  'id': '410',
                  'pid': '95',
                  'title': '花鳞鱼亚纲'
                },
                {
                  'id': '411',
                  'pid': '95',
                  'title': '七鳃鳗亚纲'
                },
                {
                  'id': '412',
                  'pid': '95',
                  'title': '盲鳗亚纲'
                },
                {
                  'id': '413',
                  'pid': '95',
                  'title': '原始无颌类'
                }
              ]
            },
            {
              'id': '96',
              'pid': '18',
              'title': '盾皮鱼纲',
              'children': [
                {
                  'id': '414',
                  'pid': '96',
                  'title': '胴甲鱼类'
                },
                {
                  'id': '415',
                  'pid': '96',
                  'title': '节甲鱼类'
                },
                {
                  'id': '416',
                  'pid': '96',
                  'title': '瓣甲鱼类'
                },
                {
                  'id': '417',
                  'pid': '96',
                  'title': '棘胸鱼类'
                },
                {
                  'id': '418',
                  'pid': '96',
                  'title': '褶齿鱼类'
                },
                {
                  'id': '419',
                  'pid': '96',
                  'title': '萌鳐鱼类'
                }
              ]
            },
            {
              'id': '97',
              'pid': '18',
              'title': '棘鱼纲',
              'children': [
                {
                  'id': '420',
                  'pid': '97',
                  'title': '栅鱼类'
                },
                {
                  'id': '421',
                  'pid': '97',
                  'title': '双棘鱼类'
                },
                {
                  'id': '422',
                  'pid': '97',
                  'title': '锉棘鱼类'
                },
                {
                  'id': '423',
                  'pid': '97',
                  'title': '棘鱼类'
                }
              ]
            },
            {
              'id': '98',
              'pid': '18',
              'title': '软骨鱼纲',
              'children': [
                {
                  'id': '424',
                  'pid': '98',
                  'title': '原始软骨鱼类'
                },
                {
                  'id': '425',
                  'pid': '98',
                  'title': '板鳃类'
                },
                {
                  'id': '426',
                  'pid': '98',
                  'title': '全头类'
                }
              ]
            },
            {
              'id': '99',
              'pid': '18',
              'title': '硬骨鱼纲',
              'children': [
                {
                  'id': '427',
                  'pid': '99',
                  'title': '原始肉鳍鱼类'
                },
                {
                  'id': '428',
                  'pid': '99',
                  'title': '爪齿鱼类'
                },
                {
                  'id': '429',
                  'pid': '99',
                  'title': '空棘鱼类'
                },
                {
                  'id': '430',
                  'pid': '99',
                  'title': '原始肺鱼形动物'
                },
                {
                  'id': '431',
                  'pid': '99',
                  'title': '孔鳞鱼类'
                },
                {
                  'id': '432',
                  'pid': '99',
                  'title': '肺鱼类'
                },
                {
                  'id': '433',
                  'pid': '99',
                  'title': '原始四足形动物'
                },
                {
                  'id': '434',
                  'pid': '99',
                  'title': '根齿鱼类'
                },
                {
                  'id': '435',
                  'pid': '99',
                  'title': '骨鳞鱼类'
                },
                {
                  'id': '436',
                  'pid': '99',
                  'title': '希望螈类'
                },
                {
                  'id': '437',
                  'pid': '99',
                  'title': '多鳍鱼类'
                },
                {
                  'id': '438',
                  'pid': '99',
                  'title': '原始辐鳍鱼类'
                },
                {
                  'id': '439',
                  'pid': '99',
                  'title': '软骨硬鳞鱼类'
                },
                {
                  'id': '440',
                  'pid': '99',
                  'title': '原始新鳍鱼类'
                },
                {
                  'id': '441',
                  'pid': '99',
                  'title': '雀鳝部'
                },
                {
                  'id': '442',
                  'pid': '99',
                  'title': '原始鲱口类'
                },
                {
                  'id': '443',
                  'pid': '99',
                  'title': '鲱亚部'
                },
                {
                  'id': '444',
                  'pid': '99',
                  'title': '真骨鱼亚部'
                }
              ]
            },
            {
              'id': '100',
              'pid': '18',
              'title': '两栖纲',
              'children': [
                {
                  'id': '445',
                  'pid': '100',
                  'title': '原始四足类'
                },
                {
                  'id': '446',
                  'pid': '100',
                  'title': '离片椎类'
                },
                {
                  'id': '447',
                  'pid': '100',
                  'title': '石炭蜥类'
                },
                {
                  'id': '448',
                  'pid': '100',
                  'title': '壳椎两栖类'
                },
                {
                  'id': '449',
                  'pid': '100',
                  'title': '无尾类'
                },
                {
                  'id': '450',
                  'pid': '100',
                  'title': '有尾类'
                },
                {
                  'id': '451',
                  'pid': '100',
                  'title': '其他滑体两栖类'
                },
                {
                  'id': '452',
                  'pid': '100',
                  'title': '其他迷齿两栖类'
                }
              ]
            },
            {
              'id': '101',
              'pid': '18',
              'title': '爬行纲',
              'children': [
                {
                  'id': '453',
                  'pid': '101',
                  'title': '龟鳖类'
                },
                {
                  'id': '454',
                  'pid': '101',
                  'title': '大鼻龙类'
                },
                {
                  'id': '455',
                  'pid': '101',
                  'title': '前棱蜥类'
                },
                {
                  'id': '456',
                  'pid': '101',
                  'title': '锯齿龙类'
                },
                {
                  'id': '457',
                  'pid': '101',
                  'title': '中龙类'
                },
                {
                  'id': '458',
                  'pid': '101',
                  'title': '离龙类'
                },
                {
                  'id': '459',
                  'pid': '101',
                  'title': '蜥蜴类'
                },
                {
                  'id': '460',
                  'pid': '101',
                  'title': '蛇类'
                },
                {
                  'id': '461',
                  'pid': '101',
                  'title': '其他鳞龙类'
                },
                {
                  'id': '462',
                  'pid': '101',
                  'title': '原龙类'
                },
                {
                  'id': '463',
                  'pid': '101',
                  'title': '鳍龙类'
                },
                {
                  'id': '464',
                  'pid': '101',
                  'title': '海龙类'
                },
                {
                  'id': '465',
                  'pid': '101',
                  'title': '鱼龙类'
                },
                {
                  'id': '466',
                  'pid': '101',
                  'title': '鳄类'
                },
                {
                  'id': '467',
                  'pid': '101',
                  'title': '其他鳄型类'
                },
                {
                  'id': '468',
                  'pid': '101',
                  'title': '翼龙类'
                },
                {
                  'id': '469',
                  'pid': '101',
                  'title': '蜥臀类恐龙'
                },
                {
                  'id': '470',
                  'pid': '101',
                  'title': '鸟臀类恐龙'
                },
                {
                  'id': '471',
                  'pid': '101',
                  'title': '其他初龙型类'
                },
                {
                  'id': '472',
                  'pid': '101',
                  'title': '盘龙类'
                },
                {
                  'id': '473',
                  'pid': '101',
                  'title': '恐头兽类'
                },
                {
                  'id': '474',
                  'pid': '101',
                  'title': '始巨鳄类'
                },
                {
                  'id': '475',
                  'pid': '101',
                  'title': '兽头类'
                },
                {
                  'id': '476',
                  'pid': '101',
                  'title': '二齿兽类'
                },
                {
                  'id': '477',
                  'pid': '101',
                  'title': '犬齿兽类'
                },
                {
                  'id': '478',
                  'pid': '101',
                  'title': '其他兽孔类'
                }
              ]
            },
            {
              'id': '102',
              'pid': '18',
              'title': '鸟纲',
              'children': [
                {
                  'id': '479',
                  'pid': '102',
                  'title': '原始基干鸟类'
                },
                {
                  'id': '480',
                  'pid': '102',
                  'title': '反鸟类'
                },
                {
                  'id': '481',
                  'pid': '102',
                  'title': '今鸟类'
                }
              ]
            },
            {
              'id': '103',
              'pid': '18',
              'title': '古哺乳动物',
              'children': [
                {
                  'id': '482',
                  'pid': '103',
                  'title': '哺乳动物型'
                },
                {
                  'id': '483',
                  'pid': '103',
                  'title': '原始哺乳动物'
                },
                {
                  'id': '484',
                  'pid': '103',
                  'title': '多瘤齿兽目'
                },
                {
                  'id': '485',
                  'pid': '103',
                  'title': '贫齿目'
                },
                {
                  'id': '486',
                  'pid': '103',
                  'title': '有袋目'
                },
                {
                  'id': '487',
                  'pid': '103',
                  'title': '原真兽目'
                },
                {
                  'id': '488',
                  'pid': '103',
                  'title': '食虫目'
                },
                {
                  'id': '489',
                  'pid': '103',
                  'title': '翼手目'
                },
                {
                  'id': '490',
                  'pid': '103',
                  'title': '攀鼩目'
                },
                {
                  'id': '491',
                  'pid': '103',
                  'title': '灵长目'
                },
                {
                  'id': '492',
                  'pid': '103',
                  'title': '亚兽目'
                },
                {
                  'id': '493',
                  'pid': '103',
                  'title': '混齿目'
                },
                {
                  'id': '494',
                  'pid': '103',
                  'title': '模鼠兔目'
                },
                {
                  'id': '495',
                  'pid': '103',
                  'title': '兔形目'
                },
                {
                  'id': '496',
                  'pid': '103',
                  'title': '啮齿目'
                },
                {
                  'id': '497',
                  'pid': '103',
                  'title': '肉齿目'
                },
                {
                  'id': '498',
                  'pid': '103',
                  'title': '食肉目'
                },
                {
                  'id': '499',
                  'pid': '103',
                  'title': '全齿目'
                },
                {
                  'id': '500',
                  'pid': '103',
                  'title': '裂齿目'
                },
                {
                  'id': '501',
                  'pid': '103',
                  'title': '纽齿目'
                },
                {
                  'id': '502',
                  'pid': '103',
                  'title': '南方有蹄目'
                },
                {
                  'id': '503',
                  'pid': '103',
                  'title': '恐角目'
                },
                {
                  'id': '504',
                  'pid': '103',
                  'title': '踝节目'
                },
                {
                  'id': '505',
                  'pid': '103',
                  'title': '中兽目'
                },
                {
                  'id': '506',
                  'pid': '103',
                  'title': '蹄兔目'
                },
                {
                  'id': '507',
                  'pid': '103',
                  'title': '鲸目'
                },
                {
                  'id': '508',
                  'pid': '103',
                  'title': '海牛目'
                },
                {
                  'id': '509',
                  'pid': '103',
                  'title': '长鼻目'
                },
                {
                  'id': '510',
                  'pid': '103',
                  'title': '奇蹄目'
                },
                {
                  'id': '511',
                  'pid': '103',
                  'title': '偶蹄目'
                },
                {
                  'id': '512',
                  'pid': '103',
                  'title': '其他有胎盘类'
                }
              ]
            }
          ]
        },
        {
          'id': '19',
          'pid': '5',
          'title': '古植物',
          'children': [
            {
              'id': '104',
              'pid': '19',
              'title': '菌藻类',
              'children': [
                {
                  'id': '513',
                  'pid': '104',
                  'title': '蓝藻及细菌（包括叠层石）'
                },
                {
                  'id': '514',
                  'pid': '104',
                  'title': '硅藻'
                },
                {
                  'id': '515',
                  'pid': '104',
                  'title': '绿藻'
                },
                {
                  'id': '516',
                  'pid': '104',
                  'title': '红藻及其它宏观藻'
                },
                {
                  'id': '517',
                  'pid': '104',
                  'title': '轮藻'
                },
                {
                  'id': '518',
                  'pid': '104',
                  'title': '甲藻'
                },
                {
                  'id': '519',
                  'pid': '104',
                  'title': '颗石藻'
                },
                {
                  'id': '520',
                  'pid': '104',
                  'title': '疑源类及其它'
                }
              ]
            },
            {
              'id': '105',
              'pid': '19',
              'title': '真菌类',
              'children': [
                {
                  'id': '521',
                  'pid': '105',
                  'title': '真菌类'
                }
              ]
            },
            {
              'id': '106',
              'pid': '19',
              'title': '苔藓及地衣',
              'children': [
                {
                  'id': '522',
                  'pid': '106',
                  'title': '苔类'
                },
                {
                  'id': '523',
                  'pid': '106',
                  'title': '藓类'
                },
                {
                  'id': '524',
                  'pid': '106',
                  'title': '地衣'
                }
              ]
            },
            {
              'id': '107',
              'pid': '19',
              'title': '分类不明的早期陆地植物',
              'children': [
                {
                  'id': '525',
                  'pid': '107',
                  'title': '分类不明的早期陆地植物'
                }
              ]
            },
            {
              'id': '108',
              'pid': '19',
              'title': '蕨类植物（广义）',
              'children': [
                {
                  'id': '526',
                  'pid': '108',
                  'title': '瑞尼蕨植物'
                },
                {
                  'id': '527',
                  'pid': '108',
                  'title': '工蕨植物'
                },
                {
                  'id': '528',
                  'pid': '108',
                  'title': '三枝蕨植物'
                },
                {
                  'id': '529',
                  'pid': '108',
                  'title': '石松植物'
                },
                {
                  'id': '530',
                  'pid': '108',
                  'title': '有节植物'
                },
                {
                  'id': '531',
                  'pid': '108',
                  'title': '真蕨植物'
                }
              ]
            },
            {
              'id': '109',
              'pid': '19',
              'title': '分类不明的蕨形叶',
              'children': [
                {
                  'id': '532',
                  'pid': '109',
                  'title': '分类不明的蕨形叶'
                }
              ]
            },
            {
              'id': '110',
              'pid': '19',
              'title': '前裸子植物',
              'children': [
                {
                  'id': '533',
                  'pid': '110',
                  'title': '前裸子植物'
                }
              ]
            },
            {
              'id': '111',
              'pid': '19',
              'title': '早期裸子植物',
              'children': [
                {
                  'id': '534',
                  'pid': '111',
                  'title': '种子蕨植物'
                },
                {
                  'id': '535',
                  'pid': '111',
                  'title': '其它裸子植物'
                }
              ]
            },
            {
              'id': '112',
              'pid': '19',
              'title': '裸子植物',
              'children': [
                {
                  'id': '536',
                  'pid': '112',
                  'title': '苏铁类植物'
                },
                {
                  'id': '537',
                  'pid': '112',
                  'title': '银杏类植物'
                },
                {
                  'id': '538',
                  'pid': '112',
                  'title': '松柏类植物'
                },
                {
                  'id': '539',
                  'pid': '112',
                  'title': '买麻藤类植物'
                }
              ]
            },
            {
              'id': '113',
              'pid': '19',
              'title': '被子植物',
              'children': [
                {
                  'id': '540',
                  'pid': '113',
                  'title': '被子植物'
                }
              ]
            },
            {
              'id': '114',
              'pid': '19',
              'title': '其它分类不明的植物',
              'children': [
                {
                  'id': '541',
                  'pid': '114',
                  'title': '生殖器官'
                },
                {
                  'id': '542',
                  'pid': '114',
                  'title': '营养器官'
                }
              ]
            },
            {
              'id': '115',
              'pid': '19',
              'title': '孢粉',
              'children': [
                {
                  'id': '543',
                  'pid': '115',
                  'title': '孢子'
                },
                {
                  'id': '544',
                  'pid': '115',
                  'title': '花粉'
                }
              ]
            }
          ]
        },
        {
          'id': '20',
          'pid': '5',
          'title': '遗迹化石',
          'children': [
            {
              'id': '116',
              'pid': '20',
              'title': '遗物',
              'children': [
                {
                  'id': '545',
                  'pid': '116',
                  'title': '恐龙蛋及其它'
                }
              ]
            },
            {
              'id': '117',
              'pid': '20',
              'title': '遗迹',
              'children': [
                {
                  'id': '546',
                  'pid': '117',
                  'title': '爬行迹'
                },
                {
                  'id': '547',
                  'pid': '117',
                  'title': '居住迹'
                },
                {
                  'id': '548',
                  'pid': '117',
                  'title': '休息迹'
                },
                {
                  'id': '549',
                  'pid': '117',
                  'title': '觅食迹'
                },
                {
                  'id': '550',
                  'pid': '117',
                  'title': '进食迹'
                },
                {
                  'id': '551',
                  'pid': '117',
                  'title': '逃逸迹'
                },
                {
                  'id': '552',
                  'pid': '117',
                  'title': '耕作迹'
                },
                {
                  'id': '553',
                  'pid': '117',
                  'title': '捕食迹'
                },
                {
                  'id': '554',
                  'pid': '117',
                  'title': '均衡迹'
                }
              ]
            }
          ]
        },
        {
          'id': '21',
          'pid': '5',
          'title': '古人类及类人猿',
          'children': [
            {
              'id': '118',
              'pid': '21',
              'title': '古人类',
              'children': [
                {
                  'id': '555',
                  'pid': '118',
                  'title': '南方古猿'
                },
                {
                  'id': '556',
                  'pid': '118',
                  'title': '能人'
                },
                {
                  'id': '557',
                  'pid': '118',
                  'title': '直立人'
                },
                {
                  'id': '558',
                  'pid': '118',
                  'title': '早期智人'
                },
                {
                  'id': '559',
                  'pid': '118',
                  'title': '晚期智人'
                }
              ]
            },
            {
              'id': '119',
              'pid': '21',
              'title': '类人猿',
              'children': [
                {
                  'id': '560',
                  'pid': '119',
                  'title': '古猿'
                }
              ]
            },
            {
              'id': '120',
              'pid': '21',
              'title': '分类不明的早期人类',
              'children': [
                {
                  'id': '561',
                  'pid': '120',
                  'title': '分类不明的早期人类'
                }
              ]
            }
          ]
        },
        {
          'id': '22',
          'pid': '5',
          'title': '古人类遗物',
          'children': [
            {
              'id': '121',
              'pid': '22',
              'title': '石制品',
              'children': [
                {
                  'id': '562',
                  'pid': '121',
                  'title': '石锤'
                },
                {
                  'id': '563',
                  'pid': '121',
                  'title': '石砧'
                },
                {
                  'id': '564',
                  'pid': '121',
                  'title': '石核'
                },
                {
                  'id': '565',
                  'pid': '121',
                  'title': '石片'
                },
                {
                  'id': '566',
                  'pid': '121',
                  'title': '石器'
                },
                {
                  'id': '567',
                  'pid': '121',
                  'title': '断块'
                },
                {
                  'id': '568',
                  'pid': '121',
                  'title': '残片'
                },
                {
                  'id': '569',
                  'pid': '121',
                  'title': '碎屑'
                }
              ]
            },
            {
              'id': '122',
              'pid': '22',
              'title': '骨（木）制品',
              'children': [
                {
                  'id': '570',
                  'pid': '122',
                  'title': '骨器'
                },
                {
                  'id': '571',
                  'pid': '122',
                  'title': '角器'
                },
                {
                  'id': '572',
                  'pid': '122',
                  'title': '木器'
                },
                {
                  'id': '573',
                  'pid': '122',
                  'title': '其他'
                }
              ]
            },
            {
              'id': '123',
              'pid': '22',
              'title': '装饰品',
              'children': [
                {
                  'id': '574',
                  'pid': '123',
                  'title': '有孔类'
                },
                {
                  'id': '575',
                  'pid': '123',
                  'title': '有刻痕类'
                },
                {
                  'id': '576',
                  'pid': '123',
                  'title': '其他'
                }
              ]
            },
            {
              'id': '124',
              'pid': '22',
              'title': '其他遗迹或遗物',
              'children': [
                {
                  'id': '577',
                  'pid': '124',
                  'title': '其他遗迹或遗物'
                }
              ]
            }
          ]
        },
        {
          'id': '23',
          'pid': '5',
          'title': '分类位置不明',
          'children': [
            {
              'id': '125',
              'pid': '23',
              'title': '牙形刺',
              'children': [
                {
                  'id': '578',
                  'pid': '125',
                  'title': '牙形刺'
                }
              ]
            },
            {
              'id': '126',
              'pid': '23',
              'title': '几丁虫',
              'children': [
                {
                  'id': '579',
                  'pid': '126',
                  'title': '几丁虫'
                }
              ]
            },
            {
              'id': '127',
              'pid': '23',
              'title': '小壳'
            }
          ]
        }
      ]
    }
  },
  methods: {
    handleChange(value) {
      const newValue = value.join('\n')
      this.$emit('fetchClfData', newValue)
    }
  },
  watch: {
    clfOption(newValue, oldValue) {
      if (newValue) {
        this.bindOption = newValue.split('\n')
      } else {
        this.$emit('clearClfData', newValue)
      }
    }
  },
  created() {
    const param = {}
    fossilClassification(param).then((ret) => {
      if (ret.data.code === 0) {
        this.options = ret.data.data
        // this.$peng.msgOk(this.$t('common.message.operate_success'))
      } else {
        this.$peng.msgInf(this.$t('common.message.operate_fail'))
      }
    }).catch(() => {
      this.$peng.msgInf(this.$t('common.message.operate_fail'))
    })
  }
}
</script>