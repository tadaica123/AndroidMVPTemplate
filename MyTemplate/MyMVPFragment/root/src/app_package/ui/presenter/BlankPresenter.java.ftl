package ${packageName}.ui${dotSubpackage};

import android.support.annotation.NonNull;
import ${packageName}.data.DataManager;
import ${packageName}.utils.SchedulerProvider;
import ${packageName}.ui.base.MVPPresenter;
import ${packageName}.ui.base.MVPView;
import ${packageName}.ui.base.BasePresenter;

public class ${presenterName}<V extends ${contractName}.View> extends BasePresenter<V> implements ${contractName}.Presenter<V> {

	public ${presenterName}(SchedulerProvider schedulerProvider, DataManager dataManager) {
        super(schedulerProvider, dataManager);
    }

    public ${presenterName}() {
        super();
    }
	
	@Override
    public void onViewInitialized() {
        super.onViewInitialized();
    }

}
