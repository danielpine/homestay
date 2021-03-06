const menu = {
  list() {
    return [
      {
        backMenu: [
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '用户',
                menuJump: '列表',
                tableName: 'yonghu'
              }
            ],
            menu: '用户管理'
          },
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '商家',
                menuJump: '列表',
                tableName: 'shangjia'
              }
            ],
            menu: '商家管理'
          },
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除', '查看评论'],
                menu: '民宿信息',
                menuJump: '列表',
                tableName: 'minsuxinxi'
              }
            ],
            menu: '民宿信息管理'
          },
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '房间类型',
                menuJump: '列表',
                tableName: 'fangjianleixing'
              }
            ],
            menu: '房间类型管理'
          },
          {
            child: [
              {
                buttons: [
                  '新增',
                  '查看',
                  '修改',
                  '删除',
                  '查看评论',
                  '通过审核'
                ],
                menu: '房间信息',
                menuJump: '列表',
                tableName: 'fangjianxinxi'
              }
            ],
            menu: '房间信息管理'
          },
          {
            child: [
              {
                buttons: ['查看', '修改', '删除'],
                menu: '房间预订',
                menuJump: '列表',
                tableName: 'fangjianyuding'
              }
            ],
            menu: '房间预订管理'
          },
          {
            child: [
              {
                buttons: ['查看', '修改', '删除'],
                menu: '房间退订',
                menuJump: '列表',
                tableName: 'fangjiantuiding'
              }
            ],
            menu: '房间退订管理'
          },
          {
            child: [
              {
                buttons: ['查看', '修改', '删除'],
                menu: '投诉反馈',
                menuJump: '列表',
                tableName: 'tousufankui'
              }
            ],
            menu: '投诉反馈管理'
          },
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '我的收藏管理',
                tableName: 'storeup'
              }
            ],
            menu: '我的收藏管理'
          },
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '轮播图管理',
                tableName: 'config'
              },
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '在线客服',
                tableName: 'chat'
              }
            ],
            menu: '系统管理'
          }
        ],
        frontMenu: [
          {
            child: [
              {
                buttons: ['查看', '查看评论', '投诉'],
                menu: '民宿信息列表',
                menuJump: '列表',
                tableName: 'minsuxinxi'
              }
            ],
            menu: '民宿信息模块'
          },
          {
            child: [
              {
                buttons: ['查看', '查看评论', '预定', '退订'],
                menu: '房间信息列表',
                menuJump: '列表',
                tableName: 'fangjianxinxi'
              }
            ],
            menu: '房间信息模块'
          }
        ],
        hasBackLogin: '是',
        hasBackRegister: '否',
        hasFrontLogin: '否',
        hasFrontRegister: '否',
        roleName: '管理员',
        tableName: 'users'
      },
      {
        backMenu: [
          {
            child: [
              {
                buttons: ['查看评论', '查看'],
                menu: '民宿信息',
                menuJump: '列表',
                tableName: 'minsuxinxi'
              }
            ],
            menu: '民宿信息管理'
          },
          {
            child: [
              {
                buttons: ['查看', '查看评论'],
                menu: '房间信息',
                menuJump: '列表',
                tableName: 'fangjianxinxi'
              }
            ],
            menu: '房间信息管理'
          },
          {
            child: [
              {
                buttons: ['查看', '支付', '修改', '删除'],
                menu: '房间预订',
                menuJump: '列表',
                tableName: 'fangjianyuding'
              }
            ],
            menu: '房间预订管理'
          },
          {
            child: [
              {
                buttons: ['查看', '修改', '删除'],
                menu: '房间退订',
                menuJump: '列表',
                tableName: 'fangjiantuiding'
              }
            ],
            menu: '房间退订管理'
          },
          {
            child: [
              {
                buttons: ['查看', '修改', '删除', '新增'],
                menu: '投诉反馈',
                menuJump: '列表',
                tableName: 'tousufankui'
              }
            ],
            menu: '投诉反馈管理'
          },
          {
            child: [
              {
                buttons: ['查看', '删除', '修改'],
                menu: '我的收藏管理',
                tableName: 'storeup'
              }
            ],
            menu: '我的收藏管理'
          }
        ],
        frontMenu: [
          {
            child: [
              {
                buttons: ['查看', '查看评论', '投诉'],
                menu: '民宿信息列表',
                menuJump: '列表',
                tableName: 'minsuxinxi'
              }
            ],
            menu: '民宿信息模块'
          },
          {
            child: [
              {
                buttons: ['查看', '查看评论', '预定', '退订'],
                menu: '房间信息列表',
                menuJump: '列表',
                tableName: 'fangjianxinxi'
              }
            ],
            menu: '房间信息模块'
          }
        ],
        hasBackLogin: '是',
        hasBackRegister: '是',
        hasFrontLogin: '是',
        hasFrontRegister: '是',
        roleName: '用户',
        tableName: 'yonghu'
      },
      {
        backMenu: [
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除'],
                menu: '民宿信息',
                menuJump: '列表',
                tableName: 'minsuxinxi'
              }
            ],
            menu: '民宿信息管理'
          },
          {
            child: [
              {
                buttons: ['新增', '查看', '修改', '删除', '查看评论'],
                menu: '房间信息',
                menuJump: '列表',
                tableName: 'fangjianxinxi'
              }
            ],
            menu: '房间信息管理'
          },
          {
            child: [
              {
                buttons: ['查看', '删除', '修改'],
                menu: '房间预订',
                menuJump: '列表',
                tableName: 'fangjianyuding'
              }
            ],
            menu: '房间预订管理'
          },
          {
            child: [
              {
                buttons: ['修改', '查看', '删除', '审核'],
                menu: '房间退订',
                menuJump: '列表',
                tableName: 'fangjiantuiding'
              }
            ],
            menu: '房间退订管理'
          },
          {
            child: [
              {
                buttons: ['查看', '修改', '审核', '删除'],
                menu: '投诉反馈',
                menuJump: '列表',
                tableName: 'tousufankui'
              }
            ],
            menu: '投诉反馈管理'
          },
          {
            child: [
              {
                buttons: ['修改', '查看'],
                menu: '我的收藏管理',
                tableName: 'storeup'
              }
            ],
            menu: '我的收藏管理'
          }
        ],
        frontMenu: [
          {
            child: [
              {
                buttons: ['查看', '查看评论', '投诉'],
                menu: '民宿信息列表',
                menuJump: '列表',
                tableName: 'minsuxinxi'
              }
            ],
            menu: '民宿信息模块'
          },
          {
            child: [
              {
                buttons: ['查看', '查看评论', '预定', '退订'],
                menu: '房间信息列表',
                menuJump: '列表',
                tableName: 'fangjianxinxi'
              }
            ],
            menu: '房间信息模块'
          }
        ],
        hasBackLogin: '是',
        hasBackRegister: '是',
        hasFrontLogin: '是',
        hasFrontRegister: '是',
        roleName: '商家',
        tableName: 'shangjia'
      }
    ]
  }
}
export default menu
