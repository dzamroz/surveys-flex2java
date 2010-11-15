package ${package} {
	
	<#list imports as import>
  	import ${import.package}.${import.name};
	</#list>

	/**
	 * NOTE: This file is autogenerated and will be overwritten every time.
	 */	
	[Bindable]
	public class ${name}Base <#if subclass>extends ${superType.name} </#if>{

		<#list properties as property>
	 	<#if property.type.generic>
		/**
		 * ${property.type.name} of <#list property.type.actualGenericArguments as generic>${generic.name}<#if generic_has_next>, </#if></#list>
		 */
		</#if>
  		public var ${property.name}:${property.type.name};
  		
		</#list>
		public function ${name}Base(){
		}
	}
}