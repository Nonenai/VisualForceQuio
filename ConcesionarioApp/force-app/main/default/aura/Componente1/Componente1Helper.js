({
    helperMethod : function() {

    },
    populateObjectList: function(component, event){
        var concessionarie = [];
        component.set('v.concessionarie', concessionarie);
    },

    createObj: function(model, color, price){
        var car = new Object();
        car.model = model;
        car.color = color;
        car.price = price;
        return car;
    },

    augmentObject: function(component, event){
        var concessionarie = component.get('v.concessionarie');
        var model = component.get('v.model');
        var color = component.get('v.color');
        var price = component.get('v.price');
        concessionarie.push(this.createObj(model, color, price));
        component.set('v.concessionarie', concessionarie);
        var appevent =$A.get("e.c:myevent");
        appevent.setParams({"coche":this.createObj(model, color, price)});
        
       // appevent.setParams({"model":model, "color": color ,"price" :price});
        console.log("firing event");
        appevent.fire();
    }
})
