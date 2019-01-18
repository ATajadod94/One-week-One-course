new Vue({
  el:'#vue-app',
  data: {
    name: 'Shaun',
    job: 'ninja',
    age: 0,
    website: 'http://www.theninja.com',
    websiteTag: '<a href="http://www.google.com"> the net</a>',
    x: 0,
    y: 0
  },
  methods: {
    greet: function(time){
      return 'Good ' +time + ' '+  this.name;
    },
    add: function(){
      this.age++;
    },
    subtract: function () {
      this.age--;
    },
    updateXY: function(event){
      this.x = event.offsetX
      this.y = event.offsetY
    },
    click: function(){
      alert('you clicked me');
    },
    click:function(){
      this.name = event.text
    },
    click: function(){
      this.name = event
    }
  }
});
