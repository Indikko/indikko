// these are labels for the days of the week
cal_days_labels = ['DOM', 'SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];

// these are human-readable month name labels, in order
cal_months_labels = ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio',
					 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro',
					 'Novembro', 'Dezembro'];

// these are the days of the week for each month, in order
cal_days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];


// this is the current date
cal_current_date = new Date(); 


function MainCalendar(month, year) {
  this.day = new Date();
  this.month = (isNaN(month) || month == null) ? cal_current_date.getMonth() : month;
  this.year  = (isNaN(year) || year == null) ? cal_current_date.getFullYear() : year;
  this.html = '';
}


MainCalendar.prototype.generateHTML = function(){
	var dd = cal_current_date.getDate();
	var firstDay = new Date(this.year, this.month, 1);
	var startingDay = firstDay.getDay();
	var monthLength = cal_days_in_month[this.month];
	var literalMonth = this.month+1;
	var year = this.year;

	if (this.month == 1) { // February only!
		if ((this.year % 4 == 0 && this.year % 100 != 0) || this.year % 400 == 0){
			monthLength = 29;
		}
	}

	var monthName = cal_months_labels[this.month];
	var html = '<table class="calendar-table">';
	html += '<tr><th class="calendar-table-left">&lt;</th><th class="calendar-table-center" colspan="5">';
	html +=  '<strong>' +monthName + "</strong>&nbsp;" + this.year;
	html += '</th><th class="calendar-table-right">&gt;</th></tr>';
	html += '<tr class="calendar-header">';
	for (var i = 0; i <= 6; i++ ){
	  html += '<td class="calendar-header-day">';
	  html += '<strong>' + cal_days_labels[i] + '</strong>';
	  html += '</td>';
	}
	html += '</tr><tr class"calendar-table">';

	var day = 1;
	
	
	
	// this loop is for is weeks (rows)
	for (var i = 0; i < 9; i++) {
	  // this loop is for weekdays (cells)
	  for (var j = 0; j <= 6; j++) { 
	  	if(day == dd){
			if(i == 4)
				html += '<td class="today-last-row" onclick="service_for_today('+day + ', ' + (this.month+1) + ', ' + year +')"';
			else
				html += '<td class="today" onclick="service_for_today('+day + ', ' + (this.month+1) + ', ' + year +')"';
		}else{
			if(i == 4)
				html += '<td class="calendar-day-last-row" onclick="service_for_today('+day + ', ' + (this.month+1) + ', ' + year +')"';
			else
				html += '<td class="calendar-day" ';
		}
	    if (day <= monthLength && (i > 0 || j >= startingDay)) {
			html += 'onclick="service_for_today('+day + ', ' + (this.month+1) + ', ' + year +')" id="' + day + '-' + literalMonth + '-' + year + '">';
			if(day<10)
	      		html += '<span style="padding: 10px 5px"><strong>0' +day + '</strong></span><br>';
			else
				html += '<span style="padding: 10px 5px"><strong>' +day + '</strong></span><br>'
		  day++;
	    }else{
			html += '>';
		}
	    html += '</td>';
	  }
	  // stop making rows if we've run out of days
	  if (day > monthLength) {
	    break;
	  } else {
	    html += '</tr><tr>';
	  }
	}
	
	html += '</tr></table>';

	this.html = html;
}

MainCalendar.prototype.getHTML = function() {
  return this.html;
}