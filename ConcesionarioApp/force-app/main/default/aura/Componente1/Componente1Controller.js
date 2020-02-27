({  
    myAction : function(component, event, helper) {

    },
    setCar: function(component,event ){
        var modelo = component.find("modelo").get('v.value');
        component.set("v.model", modelo);
        
        var color = component.find("color").get('v.value');
        component.set("v.color", color);

        var anyo = component.find("anyo").get('v.value');
        component.set("v.year", anyo);
        
       
        
    },
    doInit: function(component, event, helper){
        helper.populateObjectList(component,event);
    },

    handleClick: function(component, event, helper){
        helper.setObjectValues(component, event);
    }
})
