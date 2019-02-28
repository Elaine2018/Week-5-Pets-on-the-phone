<dog>

	<img src="images/dog1.gif"> <strong>DOG</strong> <span>{ magicAlpha }</span>
	<p>The dog hears:<span> { data }</span></p>
	<button onclick={ talkToCat }>"MEOW" to Cat</button>

	<script>
		var that = this;
		console.log('dog.tag');

		this.data = "...";
		this.magicAlpha = "...";

		talkToCat(event) {
			var randomNum = Math.floor(Math.random()*100)+1;
			var dogMsg = "This is Dog. How are you?";
			/* step 2, trigger some action, and pass parameters */
			observable.trigger('meow', dogMsg, randomNum);
			observable.trigger('countConv');
		}

		observable.on('woof', function(passedData, someAlpha){
		  that.data = passedData;
			that.magicAlpha = someAlpha;
			that.update();
		});

		observable.on('reset', function(){
		  that.data = "...";
			that.magicAlpha = "...";
		});

	</script>

	<style>
		:scope {
      width:40%;
			display: block;
			background-color: tomato;
			margin-top: 1em;
			padding: 1em;
		}
		span {
			display: inline-block;
			padding: 0.25em;
			background-color: dodgerblue;
			border-radius: 1em;
			color: #FFF;
			font-weight: bold;
		}
		img {
			width: 300px;
			vertical-align: middle;
		}
	</style>
</dog>
