// JavaScript Document// these are labels for the days of the week
time_days_labels = ['DOMINGO', 'SEGUNDA-FEIRA', 'TERÇA-FEIRA', 'QUARTA-FEIRA', 'QUINTA-FEIRA', 'SEXTA-FEIRA', 'SÁBADO'];

// these are human-readable month name labels, in order
time_days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// this is the current date
time_today = new Date(); 



function timeScheduleGenerator(today, thisMonth, year){
	var firstDay = new Date(year, (thisMonth-1), 1);
	var realDay = new Date();
	var monthLength = time_days_in_month[thisMonth-1];
	var html = '<table class="time-schedule-table">';
	html += '<tr><th class="ts-center" colspan="2">';
	var check = false;
	var day = 1;
	for(var i = 0; i < 9; i++){
		for(var j = 0; j < 7; j++){
			if (day <= monthLength && (i > 0 || j >= firstDay.getDay())) {
				if(day == today)
					html += '<strong>' + time_days_labels[j];
				day++;
			}
			
		}
	}

	var day = today;
	if(day < 10){
		day = '0' + today;
	}
	var month = thisMonth;
	if(month < 10){
		month = '0' + thisMonth;
	}
	html += '&nbsp;(' + day + '/' + month + '/' + year + ')</strong>';
	html += '</th></tr>';
	
	var first_hour = 4;
	for(var i = 0; i < 10; i++){
		html += '<tr>';
		if(first_hour < 10)
			html += '<th class="ts-hour" id="hour-' + first_hour +'"><strong>0' + first_hour + ':00</strong></th>';
		else
			html += '<th class="ts-hour" id="hour-' + first_hour +'"><strong>' + first_hour + ':00</strong></th>';
		html += '<th class="ts-hour" id="hour-' + (first_hour+10) +'"><strong>' + (first_hour + 10) + ':00</strong></th>';	
		html += '</tr>'
		first_hour++;
	}
	
	html += '</table>';

	return html;
}
