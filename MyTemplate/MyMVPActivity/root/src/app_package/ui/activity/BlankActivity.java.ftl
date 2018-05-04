package ${packageName}.ui${dotSubpackage};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

import ${superClassFqcn};

<#if packageName??>
import ${packageName}.R;
</#if>

<#if useAdapter>
import ${packageName}.ui${dotSubpackage}.adapter.${adapterName};
</#if >

import ${packageName}.utils.ActivityUtils;
import ${packageName}.utils.Injections;

public class ${className} extends ${superClassName} implements ${contractName}.View 
<#if makeOnClickListener>
, ${adapterName}.ClickListener
</#if >
{
    public static final String TAG = "${className}";
 
 <#if includePresenter>
	private ${contractName}.Presenter mPresenter  = new ${presenterName}();
 </#if >

 <#if useAdapter>
	private ${adapterName} mAdapter  = null;
 </#if >
	
	
	<#if includeLayout>

	@Override
	protected void onCreate(@Nullable Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.${activityName});
		mPresenter = new ${presenterName}(Injections.provideSchedulerProvider(),
                Injections.provideAppDataManager(${className}.this));
		initView();
		initData();
        mPresenter.onAttach(this);
        mPresenter.onViewInitialized();
	}
	</#if>
	
	@Override
    protected void initView() {
     
    }
	
	@Override
    protected void initData() {
		<#if useAdapter>
			mAdapter = new ${adapterName}(getApplicationContext());
			<#if makeOnClickListener>
			mAdapter.setClickListener(this);
			</#if >
		</#if >
        Bundle extraData = getIntent().getExtras();
        Intent intentData = this.getIntent();
        if (intentData != null) {
            //Set up Presenter's data
        }
    }
		
	<#if makeOnClickListener>
	@Override
    public void onItemClicked(View v, int position) {

    }
	</#if >
}
