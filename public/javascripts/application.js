$(function() {

	// signature events carosel
	$("#sigevents").carouFredSel({
		width: 960,
		prev : {
			button : "#rctl",
			key : "left"
		},
		next : {
			button : "#lctl",
			key : "right"
		},
		scroll : {
			effect			: "easeOutBounce",
			duration		: 1000,							
			pauseOnHover	: true
		}
	});
	
	// twitter
	$(".tweet").tweet({
		join_text: "auto",
		username: "USCwelcome2011",
		avatar_size: 20,
		count: 3,
		auto_join_text_default: "we said,",
		auto_join_text_ed: "we",
		auto_join_text_ing: "we were",
		auto_join_text_reply: "we replied",
		auto_join_text_url: "we were checking out",
		loading_text: "loading tweets..."
	});	
	
	// event filter
	$('cDates').filterable({
		animationSpeed: 2000,
		hide: { width: 'hide', opacity: 'hide' },
		show: { height: 'show' },
	});
	
	// date picker
	$('#event_event_date').datetimepicker({
		timeFormat: 'hh:mm:ss',
		dateFormat: 'yy-mm-dd'
	});
	$('#event_event_dateend').datetimepicker({
		timeFormat: 'hh:mm:ss',
		dateFormat: 'yy-mm-dd'
	});
		
});
