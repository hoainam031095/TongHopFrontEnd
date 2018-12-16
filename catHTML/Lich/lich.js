		function tinhngay(y,m)
		{	
			var d;
			if(((y%4 == 0) && (y%100 != 0)) || ((y%100 == 0) && (y%400 != 0)))
				{
					if(m== "1" || m== "3" || m == "5" || m == "7" || m == "8" || m == "10" || m == "12" )
						{
							d = 31;
							return d;
							//alert(d);
						}
					else
						if(m == "4" || m == "6" || m == "9" || m == "11")
							{
								d=30;
								return d;
								//alert(d);
							}
						else
						{
							d = 29;
							return d;
							//alert(d);
						}
				}
			else
				{
					if(m== "1" || m== "3" || m == "5" || m == "7" || m == "8" || m == "10" || m == "12" )
						{
							 d = 31;
							 return d;
							//alert(d);
						}
					else
						if(m == "4" || m == "6" || m == "9" || m== "11")
						{
							d = 30;
							return d;
						//	alert(d);
						}
						else
						{
							d = 28;
							return d;
						//	alert(d);
						}
				}
		}
		function tinhngaythangtruoc()
		{
			var y = document.getElementById("nam").value;
			var m = document.getElementById("thang").value;
			if(m == 1)
				{
					var yt = eval(y - 1);
					var mt = 12;
				}
			else
				{
					var yt = y;
					var mt = eval(m - 1);
				}
			
			var dt = tinhngay(yt,mt);
			return dt;
		}
		function tinhthu()
		{
			var y = document.getElementById("nam").value;
			var m = document.getElementById("thang").value;
			var d = tinhngay(y,m);
			var dt = tinhngaythangtruoc();
			var time = new Date(y+"/"+m+"/01");
			var thu = time.getDay();
			var bien = thu+1;
			var x = "n";
			var n = d + thu;
			for(var i = bien; i <= n; i++)
			{
				//alert(n); 
				var id = x.concat(i.toString());
				document.getElementById(id).value = i-thu;
			}
				// //to mau;
				// 	var date = new Date();
				// 	var dht = date.getDate() - thu;
				// 	var idht = x.concat(dht.toString());
				// 	if(id == idht)
				// 	{
				// 		document.getElementById(id).style.background = "red";

				// 	}
				// //

			if(bien > 1)
			for(var i = bien-1;i>=1;i--)
				{
					var id = x.concat(i.toString());
					document.getElementById(id).value = dt;
					dt--;
				}
			var ds = 1;
			for(var i=n+1; i<=42;i++)
				{
					var id = x.concat(i.toString());
					document.getElementById(id).value = ds;
					ds++;
				}
		}
		function pre()
		{
			var y = document.getElementById("nam").value;
			var m = document.getElementById("thang").value;
			if(m == 1)
				{
					document.getElementById("nam").value = eval(y-1);
					document.getElementById("thang").value = 12;
					tinhthu();
				}
			else
			{
				document.getElementById("thang").value = eval(m - 1);
				tinhthu();
			}	
		}
		function next()
		{
			var y = document.getElementById("nam").value;
			var m = document.getElementById("thang").value;
			if(m == 12)
				{
					document.getElementById("nam").value = eval(parseInt(y)+1);
					document.getElementById("thang").value = 1;
					tinhthu();
				}
			else
			{
				document.getElementById("thang").value = eval(parseInt(m) +1);
				tinhthu();
			}	
		}
