package ${packageName};

import android.os.Bundle;

import ${packageName}.view.${viewClass};
import ${packageName}.presenter.${presenterClass};
import ${packageName}.presenter.impl.${presenterClass+"Impl"};
<#if isUseNet>
import study.com.androidframe.BaseNetActivity;
import study.com.androidframe.event.NetEvent;
<#else>
import study.com.androidframe.BaseAppCompatActivity;
</#if>

public class ${activityClass} extends <#if isUseNet>BaseNetActivity<#else>BaseAppCompatActivity</#if> implements ${viewClass}{

    ${presenterClass} presenter;

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
        presenter = new ${presenterClass+"Impl"}(this,this);
        
    }

 

	<#if isUseNet>
	@Override
    protected void defineRefresh(NetEvent event) {

    }
	</#if>
}
