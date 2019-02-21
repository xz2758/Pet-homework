<emoji>
  <img src="image/{emoji}.gif">

  <div>
    <p>Happy New Year: { redpocket }</p>
  </div>

  <button onclick={ redpocket }>money</button>
  <button onclick={ candy }>no money</button>


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
        this.petImage = "angery";
      } else if (this.redpocket <= 30){
        this.petImage = "love";
      }else{
        this.petImage = "happy";
      }
    }

// functions that respond to events
    money() {
      this.decMoney();
      this.checkStatus();
    }

    nomoney() {
      this.inMoney();
      this.checkStatus();
    }

    //tell DOM window to increase hunger every three second
    //console.log(that);


    window.setInterval(function(){
      that.incMoney();
      console.log("wait");
      that.update();
      that.checkStatus();
    }, 3000);
  </script>

  <style>
  /* styles that will be applied to the root level of my tag */
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>



</emoji>
