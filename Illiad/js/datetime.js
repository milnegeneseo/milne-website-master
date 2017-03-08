// JavaScript Document

function getNiceDate()
{ 
  var now = new Date();
  var day = now.getDate();
  var dayofweek = now.getDay();
  var mymonth = now.getMonth();
  var year = now.getYear();
  var fixed_year = y2k(year);


var weekday = new Array(6);
weekday[1]="Sun";
weekday[2]="Mon";
weekday[3]="Tues";
weekday[4]="Wed";
weekday[5]="Thurs";
weekday[6]="Fri";
weekday[7]="Sat";
myweekday = weekday[dayofweek+1];

if(mymonth == 0)
               month = "January "
      else if(mymonth ==1)
               month = "February "
      else if(mymonth ==2)
              month = "March "
      else if(mymonth ==3)
             month = "April "
      else if(mymonth ==4)
               month = "May "
      else if(mymonth ==5)
               month = "June "
      else if(mymonth ==6)
               month = "July "
      else if(mymonth ==7)
             month = "August "
      else if(mymonth ==8)
            month = "September "
      else if(mymonth ==9)
           month = "October "
      else if(mymonth ==10)
           month = "November "
      else if(mymonth ==11)
           month = "December"
  
  var nice_date = myweekday + ", " + month + " " + day + ", " + fixed_year;  

  //This bit selects the PNG image for IE7+ and others, and the gif for IE6-
  //Detect IE5.5+
version=0
if (navigator.appVersion.indexOf("MSIE")!=-1){
temp=navigator.appVersion.split("MSIE")
version=parseFloat(temp[1])
if (version<7) {
//document.getElementById('topleft').src="http://library.geneseo.edu/images/logo_header.gif";
}else{
//document.getElementById('topleft').src="http://library.geneseo.edu/images/logoPNG24.png";
}
}else{
//document.getElementById('topleft').src="http://library.geneseo.edu/images/logoPNG24.png";
}

  
  return nice_date;
}  


function getFallHours()
{
	var new_dayofweek = new Date();
	var day = new_dayofweek.getDay();
	var month = new_dayofweek.getMonth();
	var real_month = month + 1;
	var date = new_dayofweek.getDate();
	var month_date = real_month + "/" + date
	
	//May & June

		if ((real_month == "5") || (real_month == "6"))

	//***************** Spring Semester 2013 Finals Week ****************//
			if ((month_date == "5/1") || (month_date == "5/2"))
					{libhours = "7:30am to 1:00am";} 

	                else if (month_date == "5/3")
					{libhours = "7:30am to 9:00pm";} 

	                else if (month_date == "5/4")
					{libhours = "10:00am to 9:00pm";} 

	                else if (month_date == "5/5")
					{libhours = "10:00am to 1:00am";} 

	                else if ((month_date == "5/6") || (month_date == "5/7") || (month_date == "5/8"))
					{libhours = "7:30am to 1:00am";} 

	                else if (month_date == "5/9")
				{libhours = "7:30am to 1:00am";}

			else if (month_date == "5/10")
				{libhours = "7:30am to 12:00am";}

			else if (month_date == "5/11")
				{libhours = "10:00am to 12:00am";}

			else if (month_date == "5/12")
				{libhours = "10:00am to 1:00am";}

			else if ((month_date == "5/13") || (month_date == "5/14"))
				{libhours = "7:30am to 1:00am";}

			else if (month_date == "5/15")
				{libhours = "7:30am to 10:00pm";}

			else if ((month_date == "5/16") || (month_date == "5/17"))
				{libhours = "7:30am to 4:00pm";}	

			else if ((month_date == "5/18") || (month_date == "5/19"))
				{libhours = "Closed.";}

			else if (month_date == "5/27")
				{libhours = "Closed.";}	

	                else if (month_date == "6/28")
			       {libhours = "8:00am to 5:00pm";} 

	//***************** Summer Hours 2013 ****************//
	//May & June 2013
			//Monday
			else if (day == 1) 
				{libhours = "8:00am to 6:00pm";}

			//Friday
			else if (day == 5) 
				{libhours = "8:00am to 4:00pm";}

			//Saturday
			else if (day == 6) 
				{libhours = "Closed.";}

			//Sunday
			else if (day == 0) 
				{libhours = "Closed.";}	

			//Tues - Thurs
			else 
				{libhours = "8:00am to 6:00pm";}	

	//July 2013
		else if (real_month == "7")

			//Exceptions
			if ((month_date == "7/1") || (month_date == "7/2") || (month_date == "7/3"))
				{libhours = "8:00am to 6:00pm";}

	                else if (month_date == "7/4")
				{libhours = "Closed.";}

			else if (month_date == "7/12")
				{libhours = "8:00am to 8:00pm";}	

			else if (month_date == "7/13")
				{libhours = "8:00am to 9:00pm";}

			else if (month_date == "7/14")
				{libhours = "1:00pm to 9:00pm";}	
			//Friday
			else if (day == 5) 
				{libhours = "8:00am to 4:00pm";}

			//Saturday
			else if (day == 6) 
				{libhours = "Closed.";}

			//Sunday
			else if (day == 0) 
				{libhours = "1:00pm to 9:00pm";}		

			//Mon - Thurs
			else
				{libhours = "8:00am to 9:00pm";}

	//August 2013
		else if (real_month == "8")

			//Exceptions
			if (month_date == "8/1")
				{libhours = "8:00am to 9:00pm";}

		        else if ((month_date == "8/5") || (month_date == "8/6") || (month_date == "8/7") || (month_date == "8/8"))
				{libhours = "8:00am to 6:00pm";}

	                else if ((month_date == "8/26") || (month_date == "8/27") || (month_date == "8/28") || (month_date == "8/29"))
				{libhours = "7:30am to 1:00am";}

	                else if (month_date == "8/30")
	                       {libhours = "7:30am to 9:00pm";}

	                else if (month_date == "8/31")
				{libhours = "10:00am to 9:00pm";}

			//Mon - Fri	
			else if ((day == 1) || (day == 2) || (day == 3) || (day == 4) || (day == 5)) 
				{libhours = "8:00am to 4:00pm";}

			//Saturday & sunday
			else 
				{libhours = "Closed.";}
			
// All Other Months (2012)
	else
		//Labor Day Break
		if ((month_date == "9/1") || (month_date == "9/2"))
			{libhours = "Noon to 6:00pm";}

		else if (month_date == "9/3")
			{libhours = "6:00pm to 1:00am";}

	        else if (month_date == "9/4")
			{libhours = "7:30am to 1:00am";}

		//Fall Break
		else if (month_date == "10/5")
			{libhours = "7:30am to 4:00pm";}

		else if ((month_date == "10/6") || (month_date == "10/7"))
			{libhours = "Noon to 6:00pm";}

		else if (month_date == "10/8")
			{libhours = "8:00am to 9:00pm";}

		else if (month_date == "10/9")
			{libhours = "7:30am to 1:00am";}
	
		//Thanksgiving Break
		else if (month_date == "11/21")
			{libhours = "8:00am to 4:00pm";}

		else if	((month_date == "11/22") || (month_date == "11/23") || (month_date == "11/24"))
			{libhours = "Closed.";}

		else if (month_date == "11/25")
			{libhours = "6:00pm to 1:00am";}	
	
		//Fall Semester Finals
		else if ((month_date == "12/10") || (month_date == "12/11") || (month_date == "12/12") || (month_date == "12/13"))
			{libhours = "7:30am to 1:00am";}

		else if (month_date == "12/14")
			{libhours = "7:30am to 12:00am";}

		else if (month_date == "12/15")
			{libhours = "10:00am to 12:00am";}

		else if (month_date == "12/16")
			{libhours = "10:00am to 1:00am";}

		else if (month_date == "12/17")
			{libhours = "7:30am to 1:00am";}

		else if (month_date == "12/18")
			{libhours = "7:30am to 7:00pm";}

		else if ((month_date == "12/19") || (month_date == "12/20") || (month_date == "12/21"))
			{libhours = "8:00am to 4:00pm";}	

		else if ((month_date == "12/22") || (month_date == "12/23"))
			{libhours = "Closed.";}	
			
               //Winter Intersession Hours
               else if ((month_date == "12/24") || (month_date == "12/25") || (month_date == "12/26") || (month_date == "12/29") || (month_date == "12/30") || (month_date == "12/31") || (month_date == "1/1"))
						{libhours = "Closed.";}

			               else if ((month_date == "1/2") || (month_date == "1/3") || (month_date == "1/4")) 
						{libhours = "8:00am to 4:00pm";}	

			               else if ((month_date == "1/5") || (month_date == "1/6") || (month_date == "1/12") || (month_date == "1/13") || (month_date == "1/19") || (month_date == "1/20"))
						{libhours = "Closed.";}	

			               else if ((month_date == "1/7") || (month_date == "1/8") || (month_date == "1/9") || (month_date == "1/10") || (month_date == "1/11") || (month_date == "1/14") || (month_date == "1/15") || (month_date == "1/16") || (month_date == "1/17") || (month_date == "1/18")) 
						{libhours = "8:00am to 4:00pm";}	

					else if (month_date == "1/21")
						{libhours = "12:00pm to 1:00am";}

                //spring Break
		else if (month_date == "3/15")
			{libhours = "7:30am to 4:00pm";}
			
		else if ((month_date == "3/16") || (month_date == "3/17") || (month_date == "3/23"))
			{libhours = "Closed.";}

		else if ((month_date == "3/18") || (month_date == "3/19") || (month_date == "3/20") || (month_date == "3/21") || (month_date == "3/22"))
			{libhours = "8:00am to 4:00pm";}

		else if ((month_date == "3/24") || (month_date == "3/31"))
			{libhours = "6:00pm to 1:00am";}			
										
		//Sunday regular hours		
		else if (day == 0)
			{libhours = "10:00am to 1:00am";}

		//Saturday regular hours	
		else if (day == 6)
			{libhours = "10:00am to 9:00pm";}

		//Friday regular hours	
		else if (day == 5)
			{libhours = "7:30am to 9:00pm";}

		//Monday - Thursday regular hours	
		else
			{libhours = "7:30am to 1:00am";}

	return libhours;

}

function y2k(the_date)
{
   if (the_date < 1000)
   { the_date = the_date + 1900; }
   
   return the_date;
}