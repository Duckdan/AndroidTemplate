package ${packageName};

import android.os.Bundle;
import android.view.View;

import ${packageName}.view.${viewClass};
import ${packageName}.presenter.${presenterClass};
import ${packageName}.presenter.${presenterClass+"Impl"};
import com.wstro.app.common.base.BaseFragment;
<#if isUseNet>
import study.com.androidframe.fragment.BaseNetFragment;
import study.com.androidframe.event.NetEvent;
<#else>
import study.com.androidframe.fragment.BaseFragment;
</#if>

public class ${activityClass} extends <#if isUseNet>BaseNetFragment<#else>BaseFragment</#if> implements ${viewClass}{

    ${presenterClass+"Impl"} presenter;

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
        presenter = new ${presenterClass+"Impl"}(activity,this);
        
    }

 

	<#if isUseNet>
	@Override
    protected void defineRefresh(NetEvent event) {

    }
	</#if>

}
