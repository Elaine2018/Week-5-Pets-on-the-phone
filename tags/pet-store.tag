<pet-store>

	<div class="record">
		<strong>Let's have {conversationNum} phone calls</strong>
		<button onclick={ resetAll }>Redial</button>
	</div>

	<dog></dog>
	<cat></cat>

	<script>
		var that = this;
		console.log('pet-store.tag');
		this.conversationNum = 0;

		resetAll(event) {
			observable.trigger('reset');
		}

    observable.on('countConv',function(){
			that.conversationNum = that.conversationNum+1;
			that.update();
		});

	</script>

	<style>
		:scope {
			display: flex;
			/* border: 2px solid gold; */
			margin-top: 1em;
			margin-left: 3em;
			padding: 1em;
		}
		.record {
			margin-top: 1em;
			width:16%;
		}

		button{
			margin-top:1em;
			display:block;
			background-color: gold;
			width:auto;
			height: 40px;
			font-size: 16px;
		}
	</style>
</pet-store>
