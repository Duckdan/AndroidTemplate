package ${packageName}.presenter.impl;

import ${packageName}.view.${viewClass};
import ${packageName}.presenter.${presenterClass};

import android.content.Context;

public class ${presenterClass +"Impl"} implements ${presenterClass}
{
	private Context context;
	private ${viewClass} view;
    public ${presenterClass +"Impl"}(Context context,${viewClass} view){
		this.context = context;
		this.view = view;
    }
}