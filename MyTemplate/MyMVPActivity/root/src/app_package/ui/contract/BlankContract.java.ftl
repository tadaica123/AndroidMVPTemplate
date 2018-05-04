package ${packageName}.ui${dotSubpackage};

import android.support.annotation.NonNull;
import ${packageName}.ui.base.MVPPresenter;
import ${packageName}.ui.base.MVPView;

public interface ${contractName}{

<#if includePresenter>
	interface Presenter<V extends View> extends MVPPresenter<V> {

    }
</#if>

<#if includeView>
    interface View extends MVPView {
      
    }
</#if>


}
