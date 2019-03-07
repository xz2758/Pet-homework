<emoji>
  <img src="image/{emoji}.gif">

  <div>
    <p>Happy New Year: { redpocket }</p>
  </div>

  <button onclick={ money }>money</button>
  <button onclick={ candy }>candy</button>


  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state/propoerty
    this.redpocket = 50;
    this.emoji = "happy";


    decMoney() {
      <!-- js if statement shorthand -->
      this.redpocket = this.redpocket - 10 < 0 ? 0 : this.redpocket - 10;
    }

    incMoney() {
      console.log(this.redpocket);
      this.redpocket = this.repocket + 10 > 100 ? 100 : this.redpocket + 10;
    }

    checkStatus() {
      if (this.redpocket >= 70){
        this.emoji = "love";
      } else if (this.redpocket <= 45){
        this.emoji = "angery";
      }else{
        this.emoji = "happy";
      }
    }

// functions that respond to events
    money() {
      this.incMoney();
      this.checkStatus();
    }

    candy() {
      this.decMoney();
      this.checkStatus();
    }

    //tell DOM window to increase hunger every three second
    //console.log(that);


    window.setInterval(function(){
      that.decMoney();
      console.log("wait");
      that.update();
      that.checkStatus();
    }, 3000);
  </script>

  <style>
  /* styles that will be applied to the root level of my tag */
  :scope{
    margin:center;
    color: white;
  }

  img{
    weight:auto;
    height:200px;
  }


  </style>



</emoji>
