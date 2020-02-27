({
    
    populateObjectList: function(component, event){
        var concesionario = [];
        component.set('v.concessionarie', concesionario);
    },

    createObj: function(model, color, year){
        var coche = new Object();
        coche.model = model;
        coche.color = color;
        coche.year = year;
        return coche;
    },

    setObjectValues: function(component, event){
        var concesionario = component.get('v.concessionarie');
        var model = component.get('v.model');
        var color = component.get('v.color');
        var year = component.get('v.year');
        concesionario.push(this.createObj(model, color, year));
        component.set('v.concessionarie', concesionario);
        var appevent =$A.get("e.c:passCarEvent");
        appevent.setParams({"car":this.createObj(model, color, year)});
        console.log("firing event");
        appevent.fire();
    }
})
