	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import discussyouxigonglve from '@/views/discussyouxigonglve/list'
	import youxigonglve from '@/views/youxigonglve/list'
	import youxifenlei from '@/views/youxifenlei/list'
	import yonghu from '@/views/yonghu/list'
	import config from '@/views/config/list'
	import yonghuCenter from '@/views/yonghu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghuCenter',
			name: '用户个人中心',
			component: yonghuCenter
		}
		,{
			path: '/news',
			name: '游戏资讯',
			component: news
		}
		,{
			path: '/discussyouxigonglve',
			name: '游戏攻略评论',
			component: discussyouxigonglve
		}
		,{
			path: '/youxigonglve',
			name: '游戏攻略',
			component: youxigonglve
		}
		,{
			path: '/youxifenlei',
			name: '游戏分类',
			component: youxifenlei
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
