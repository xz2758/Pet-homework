<right>
  <img onmouseover={speak} src="image/{ emoji }.gif">
  <p if={visible}>{data}{myCurrentJoke}</p>

<script>
  var that = this;

  //initial state/propoerty
  //this.hunger = 50;
  this.emoji = "tongue";
  this.visible = false;
  this.myCurrentJoke = "temp joke";
  this.data = "";
  this.myJokes = [
    {
      value: "sldkjf"
    }, {
      value: "oiuerm"
    }, {
      value: "vnfjj"
    }, {
      value: "skjdfiu"
    }, {
      value: "qasdjf"
    }
  ]
  this.hide = function () {
  this.visible = false;
  }

  this.clearData = function(){
  this.data = "";
  }

  this.selectJoke = function(){
  var max = that.myJokes.length;
  var tempIndex = Math.floor(Math.random() * Math.floor(max));
  that.myCurrentJoke = that.myJokes[tempIndex].value;
  }

  observable.on('leftSpeak', function(passedData){
  that.data = passedData;
  that.wait();
  });


  this.wait = function(){
  setTimeout(function () {
    that.respond();
  }, 1000);
  }

  this.respond = function () {
  that.selectJoke();
  that.visible = true;
  that.update();
  // console.log(this);
  setTimeout(function () {
    that.hide();
    that.update();
  }, 1000);
  }

  this.speak = function () {
  this.clearData();
  console.log(this.data);
  this.selectJoke();

  //console.log(that.myCurrentJoke);
  observable.trigger('rightSpeak', that.myCurrentJoke);
  this.visible = true;

  this.update();
  // console.log(this);
  setTimeout(function () {
    that.hide();
    that.update();
  }, 1000);
  }


</script>

<style>
  :scope{
    color: white;
  }
  P{
      text-align: right;
      padding-right: 4em;
    }
</style>


</right>
