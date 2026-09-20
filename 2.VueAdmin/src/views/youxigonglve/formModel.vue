<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="游戏名称" prop="youximingcheng">
							<el-input class="list_inp" v-model="form.youximingcheng" placeholder="游戏名称"
								 type="text" 								:readonly="!isAdd||disabledForm.youximingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="游戏分类" prop="youxifenlei">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.youxifenlei?true:false"
								v-model="form.youxifenlei" 
								placeholder="请选择游戏分类"
								>
								<el-option v-for="(item,index) in youxifenleiLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="游戏图片" prop="youxitupian">
							<uploads
								:disabled="!isAdd||disabledForm.youxitupian?true:false"
								action="file/upload" 
								tip="请上传游戏图片" 
								:limit="3" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.youxitupian?form.youxitupian:''" 
								@change="youxitupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="游戏平台" prop="youxipingtai">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.youxipingtai?true:false"
								v-model="form.youxipingtai" 
								placeholder="请选择游戏平台"
								>
								<el-option v-for="(item,index) in youxipingtaiLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="游戏背景" prop="youxibeijing">
							<el-input class="list_inp" v-model="form.youxibeijing" placeholder="游戏背景"
								 type="text" 								:readonly="!isAdd||disabledForm.youxibeijing?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="视频" prop="shipin">
							<uploads
								:disabled="!isAdd||disabledForm.shipin?true:false"
								type="file"
								action="file/upload" 
								tip="请上传视频" 
								:limit="1" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.shipin?form.shipin:''" 
								@change="shipinUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="角色扮演" prop="jiaosebanyan">
							<el-input class="list_inp" v-model="form.jiaosebanyan" placeholder="角色扮演"
								 type="text" 								:readonly="!isAdd||disabledForm.jiaosebanyan?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="角色介绍" prop="jiaosejieshao">
							<el-input class="list_inp" v-model="form.jiaosejieshao" placeholder="角色介绍"
								 type="text" 								:readonly="!isAdd||disabledForm.jiaosejieshao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="发布日期" prop="faburiqi">
							<el-date-picker
								class="list_date"
								v-model="form.faburiqi"
								format="YYYY 年 MM 月 DD 日"
								value-format="YYYY-MM-DD"
								type="datetime"
								:readonly="!isAdd||disabledForm.faburiqi?true:false"
								placeholder="请选择发布日期" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="用户账号" prop="yonghuzhanghao">
							<el-input class="list_inp" v-model="form.yonghuzhanghao" placeholder="用户账号"
								 type="text" 								:readonly="!isAdd||disabledForm.yonghuzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="用户姓名" prop="yonghuxingming">
							<el-input class="list_inp" v-model="form.yonghuxingming" placeholder="用户姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.yonghuxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="技巧攻略" prop="jiqiaogonglve">
							<el-input v-model="form.jiqiaogonglve" placeholder="技巧攻略" type="textarea"
							:readonly="!isAdd||disabledForm.jiqiaogonglve?true:false"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="流程分析" prop="liuchengfenxi">
							<editor :value="form.liuchengfenxi" placeholder="请输入流程分析" :readonly="!isAdd||disabledForm.liuchengfenxi?true:false"
								class="list_editor" @change="(e)=>editorChange(e,'liuchengfenxi')"></editor>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="关键点提示" prop="guanjiandiantishi">
							<editor :value="form.guanjiandiantishi" placeholder="请输入关键点提示" :readonly="!isAdd||disabledForm.guanjiandiantishi?true:false"
								class="list_editor" @change="(e)=>editorChange(e,'guanjiandiantishi')"></editor>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'youxigonglve'
	const formName = '游戏攻略'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		youximingcheng : false,
		youxifenlei : false,
		youxitupian : false,
		youxipingtai : false,
		youxibeijing : false,
		shipin : false,
		jiaosebanyan : false,
		jiaosejieshao : false,
		jiqiaogonglve : false,
		liuchengfenxi : false,
		guanjiandiantishi : false,
		faburiqi : false,
		yonghuzhanghao : false,
		yonghuxingming : false,
		thumbsupnum : false,
		crazilynum : false,
		storeupnum : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		youximingcheng: [
		],
		youxifenlei: [
		],
		youxitupian: [
		],
		youxipingtai: [
		],
		youxibeijing: [
		],
		shipin: [
		],
		jiaosebanyan: [
		],
		jiaosejieshao: [
		],
		jiqiaogonglve: [
		],
		liuchengfenxi: [
		],
		guanjiandiantishi: [
		],
		faburiqi: [
		],
		yonghuzhanghao: [
		],
		yonghuxingming: [
		],
		thumbsupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		crazilynum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		storeupnum: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//游戏分类列表
	const youxifenleiLists = ref([])
	//游戏图片上传回调
	const youxitupianUploadSuccess=(e)=>{
		form.value.youxitupian = e
	}
	//游戏平台列表
	const youxipingtaiLists = ref([])
	//视频上传回调
	const shipinUploadSuccess=(e)=>{
		form.value.shipin = e
	}
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			youximingcheng: '',
			youxifenlei: '',
			youxitupian: '',
			youxipingtai: '',
			youxibeijing: '',
			shipin: '',
			jiaosebanyan: '',
			jiaosejieshao: '',
			jiqiaogonglve: '',
			liuchengfenxi: '',
			guanjiandiantishi: '',
			faburiqi: '',
			yonghuzhanghao: '',
			yonghuxingming: '',
			thumbsupnum: '0',
			crazilynum: '0',
			storeupnum: '0',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			res.data.data.liuchengfenxi = res.data.data.liuchengfenxi?(res.data.data.liuchengfenxi.replace(reg,'../../../cl3966602/file')):'';
			res.data.data.guanjiandiantishi = res.data.data.guanjiandiantishi?(res.data.data.guanjiandiantishi.replace(reg,'../../../cl3966602/file')):'';
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.faburiqi = context?.$toolUtil.getCurDate()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='youximingcheng'){
					form.value.youximingcheng = row[x];
					disabledForm.value.youximingcheng = true;
					continue;
				}
				if(x=='youxifenlei'){
					form.value.youxifenlei = row[x];
					disabledForm.value.youxifenlei = true;
					continue;
				}
				if(x=='youxitupian'){
					form.value.youxitupian = row[x];
					disabledForm.value.youxitupian = true;
					continue;
				}
				if(x=='youxipingtai'){
					form.value.youxipingtai = row[x];
					disabledForm.value.youxipingtai = true;
					continue;
				}
				if(x=='youxibeijing'){
					form.value.youxibeijing = row[x];
					disabledForm.value.youxibeijing = true;
					continue;
				}
				if(x=='shipin'){
					form.value.shipin = row[x];
					disabledForm.value.shipin = true;
					continue;
				}
				if(x=='jiaosebanyan'){
					form.value.jiaosebanyan = row[x];
					disabledForm.value.jiaosebanyan = true;
					continue;
				}
				if(x=='jiaosejieshao'){
					form.value.jiaosejieshao = row[x];
					disabledForm.value.jiaosejieshao = true;
					continue;
				}
				if(x=='jiqiaogonglve'){
					form.value.jiqiaogonglve = row[x];
					disabledForm.value.jiqiaogonglve = true;
					continue;
				}
				if(x=='liuchengfenxi'){
					form.value.liuchengfenxi = row[x];
					disabledForm.value.liuchengfenxi = true;
					continue;
				}
				if(x=='guanjiandiantishi'){
					form.value.guanjiandiantishi = row[x];
					disabledForm.value.guanjiandiantishi = true;
					continue;
				}
				if(x=='faburiqi'){
					form.value.faburiqi = row[x];
					disabledForm.value.faburiqi = true;
					continue;
				}
				if(x=='yonghuzhanghao'){
					form.value.yonghuzhanghao = row[x];
					disabledForm.value.yonghuzhanghao = true;
					continue;
				}
				if(x=='yonghuxingming'){
					form.value.yonghuxingming = row[x];
					disabledForm.value.yonghuxingming = true;
					continue;
				}
				if(x=='thumbsupnum'){
					form.value.thumbsupnum = row[x];
					disabledForm.value.thumbsupnum = true;
					continue;
				}
				if(x=='crazilynum'){
					form.value.crazilynum = row[x];
					disabledForm.value.crazilynum = true;
					continue;
				}
				if(x=='storeupnum'){
					form.value.storeupnum = row[x];
					disabledForm.value.storeupnum = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.thumbsupnum='0'
			form.value.crazilynum='0'
			form.value.storeupnum='0'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('yonghuzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.yonghuzhanghao = json.yonghuzhanghao
				disabledForm.value.yonghuzhanghao = true;
			}
			if(json.hasOwnProperty('yonghuxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.yonghuxingming = json.yonghuxingming
				disabledForm.value.yonghuxingming = true;
			}
		})
		context?.$http({
			url: `option/youxifenlei/youxifenlei`,
			method: 'get'
		}).then(res=>{
			youxifenleiLists.value = res.data.data
		})
		youxipingtaiLists.value = "PC,游戏机,移动设备,其他".split(',')
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.youxitupian!=null) {
			form.value.youxitupian = form.value.youxitupian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		if(form.value.shipin!=null) {
			form.value.shipin = form.value.shipin.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		box-shadow: 0 0px 0px rgba(85, 255, 255, 0.5);
		// form item
		:deep(.el-form-item) {
			border: 1px solid #ddd;
			margin: 0;
			display: flex;
			//label
			.el-form-item__label {
			 border: 1px solid #ddd;
			 padding: 0;
			 background: rgba(236,236,236,1);
			 display: block;
			 width: 120px;
			 border-width: 0 2px 0 0;
			 text-align: center;
			}
			// 内容盒子
			.el-form-item__content {
				padding: 0 20px;
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid #ddd;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					padding: 0 10px;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid #ddd;
					border-radius: 0;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid #ddd;
					border-radius: 0;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					padding: 0 10px;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				// 富文本
				.list_editor {
					background-color: #fff;
					border-radius: 0;
					padding: 0;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					margin: 0;
					width: 100%;
					border-color: #ddd;
					border-width: 0;
					border-style: solid;
					height: auto;
				}
				// 长文本
				.el-textarea__inner {
					border: 1px solid #ddd;
					border-radius: 0;
					padding: 12px;
					outline: none;
					color: #333;
					width: 100%;
					font-size: 14px;
					min-height: 120px;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 12px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 1px dashed #000;
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
						//图标
						.el-icon{
							color: #000;
							font-size: 32px;
						}
					}
					.el-upload-list__item {
						border: 1px dashed #000;
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
					}
				}
				//文件上传样式
				.upload-demo {
					width: 100%;
					//外部盒子
					.el-upload-dragger {
						border: 1px dashed #000;
						cursor: pointer;
						background-color: #fff;
						border-radius: 6px;
						overflow: hidden;
						flex-direction: column;
						display: flex;
						width: 200px;
						align-items: center;
						box-sizing: border-box;
						text-align: center;
						height: 100px;
					}
					//图标
					.el-icon--upload {
						color: #000;
						font-size: 50px;
						line-height: 0;
					}
					//提示文字
					.el-upload__text {
						margin: 7px 0 0;
						color: #999;
						font-size: 12px;
						em {
							color: #409EFF;
						}
					}
					//提示文字
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						font-size: 12px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		padding: 40px 0 0;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #fff;
			background: rgba(27, 78, 133, 1);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_cancel:hover {
			background: rgba(27, 78, 133, 0.5);
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #fff;
			background: rgba(241, 49, 100, 1);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_confirm:hover {
			background: rgba(241, 49, 100, .5);
		}
	}
</style>