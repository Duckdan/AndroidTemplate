package ${packageName};

import android.os.Bundle;

<#if isUseNet>
import study.com.androidframe.BaseNetActivity;
import study.com.androidframe.event.NetEvent;
<#else>
import study.com.androidframe.BaseAppCompatActivity;
</#if>

public class ${activityClass} extends <#if isUseNet>BaseNetActivity<#else>BaseAppCompatActivity</#if> {


    @Override
    protected int getLayoutView() {
        return R.layout.${layoutName};
    }

    @Override
    protected void initView(Bundle savedInstanceState) {

    }
	
	 @Override
    protected void initListener() {

    }

    @Override
    protected void initData() {
        
    }

 

	<#if isUseNet>
	@Override
    protected void defineRefresh(NetEvent event) {

    }
	</#if>
}
