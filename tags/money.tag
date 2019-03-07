<money>
  <div>
      <input type="text" ref="hmm" placeholder="how much money">
      <input tupe="text" ref="currency" placeholder="Enter currency">

      <button type="button" onclick={giveMoney}>Give Redpocket</button>
  </div>


    <div show={myMoney.length == 0 }>
      <p>No Money</p>
    </div>

    <child each={ myMoney }>
    </child>



  <script>

    this.myMoney = [{
      income: "100",
      currency: "dollar"
    },{
      income: "5",
      currency: "yuan"
    },{
      income: "10",
      currency: "dollar"
  }];

  var that = this;

  this.remove = function(event) {
    console.log('EVENT. event');
    //var index = this.myMoney.indexOF()

    var redpocketObj = event.item;

    var index = that.myMoney.indexOf (redpocketObj);
    that.myMoney.splice(index, 1);


  that.update();
};

  this.giveMoney = function(event) {
    console.log(event);
    var income = this.refs.hmm.value;
    var currency = this.refs.currency.value;

    var emoji = {
      income: income,
      currency: currency
    };
     this.myMoney.push(emoji);
     this.refs.hmm.value = "";
     this.refs.currency.value = "";
  };

  </script>



</money>
