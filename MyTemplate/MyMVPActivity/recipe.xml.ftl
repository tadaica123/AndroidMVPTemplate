<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/activity_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />
    </#if>

	<instantiate from="src/app_package/ui/activity/BlankActivity.java.ftl"
			   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${className}.java" />
	
    <open file="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${className}.java" />

    <#if includePresenter||includeView>
		<instantiate from="src/app_package/ui/contract/BlankContract.java.ftl"
					   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${contractName}.java" />

    </#if>
	
	<#if includePresenter>
		<instantiate from="src/app_package/ui/presenter/BlankPresenter.java.ftl"
					   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}${presenterName}.java" />

    </#if>
	
	<#if useAdapter>
		<instantiate from="src/app_package/ui/adapter/BlankAdapter.java.ftl"
					   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}adapter/${adapterName}.java" />
		<instantiate from="src/app_package/ui/adapter/BlankHolder.java.ftl"
					   to="${escapeXmlAttribute(srcOut)}/ui/${subpackage}adapter/${holderName}.java" />
		<instantiate from="src/app_package/ui/adapter/model/BlankModel.java.ftl"
					   to="${escapeXmlAttribute(srcOut)}/model/${modelsubpackage}${modelName}.java" />
		<instantiate from="res/layout/adapter_layout_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(adapterLayoutName)}.xml" />
		<open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(adapterLayoutName)}.xml" />			
    </#if>


    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
                                      
</recipe>
