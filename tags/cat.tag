<cat>

	<img src="images/cat4.gif"> <strong>CAT</strong> <span>{ magicNum } days no seeing</span>
	<p>The cat hears: <span>{ data }</span></p>
	<button onclick={ talkToDog }>"WOOF" to Dog</button>

	<script>
		var that = this;
		console.log('cat.tag');

		this.data = "...";
		this.magicNum = 0;

		var alphabet = ['Hello','Oh,hi','Charlie','Miss you','So good to hear your voice','Hey buddy','Fine','How are you','Where are you'];

		talkToDog(event) {
			var randomAlpha = Math.floor(Math.random() * alphabet.length);
			var catMsg = "May I speak to Dog? This is Cat.";
			observable.trigger('woof', catMsg, alphabet[randomAlpha]);
			/*Step 2. observable.trigger sends out the signal*/
			observable.trigger('countConv');
		}

		/* step 3, on receiving trigger receive data, perform action */
		observable.on('meow', function(passedData, someNum){
		  that.data = passedData;
			that.magicNum = someNum;
			that.update();
		});

		observable.on('reset', function(){
			that.data = "...";
			that.magicNum = 0;
		});

	</script>

	<style>
		:scope {
      width: 40%;
			display: block;
			background-color:yellow;
			margin-top: 1em;
			padding: 1em;
		}
		span {
			display: inline-block;
			padding: 0.25em;
			background-color: tomato;
			border-radius: 1em;
			font-weight: bold;
		}
		img {
			width: 250px;
			text-align: center;
		}
	</style>
</cat>
