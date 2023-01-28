$(function(){
	/*********** 혼잡도 체크 Chart JS ***********/
	// 사용자 입력값 받아옴   
	$('#default').remove();
	
	// 차트 띄우기
	visitor();
	visitorProgress();
	
	// 검색 버튼 클릭할 때마다 차트 종류 변경
	$('#testtest').click(function(){
		let idx2 = $('#select_chart').val();
		visitorProgress(idx2);
	})
})//end of function

// 광역별 방문자 수
function visitor(){
	$.ajax({
        type : 'get',
        url: '/smart/visitor',
        dataType: 'JSON',
        success : function(result){
			
			//배열 생성
			let x_axis = new Array();		// x 축으로 들어갈 배열 : 지역명
			let y_axis = new Array();		// y 축으로 들어갈 배열 : 방문자 비율
			let datas = new Array();		// 값으로 들어갈 배열 : 방문자 수
			
			//배열에 값 삽입
			for (row of result){
				x_axis.push(row[0]);
				y_axis.push(row[3]);
				datas.push(row[2]);
			}
			
			//배열 중복 제거, 제목 열/행 제거
			x_axis = remove_duplicate(x_axis);
			x_axis.shift();
			y_axis = remove_duplicate(y_axis);
			y_axis.shift();
			datas = remove_duplicate(datas);
			datas.shift();
			
			//기존의 차트를 지우고 다시 붙임
			$('#myChart1').remove(); // this is my <canvas> element
    		$('#myChartDiv1').append('<canvas id="myChart1"></canvas>');
	        
	        my_bar_chart(x_axis, y_axis, datas)
        },//end of success
        error : function(err){
            console.log(err);
            alert('ChartJS 오류 : 일대일 문의로 오류 사항을 보내주시면 빠르게 처리하겠습니다.');
        }//end of error
    })//end of ajax
}//end of visitor

/* 방문자 수 추이 */
function visitorProgress(idx){

	$.ajax({

        type : 'get',
        url: '/smart/visitorProgress',
        dataType: 'JSON',
        success : function(result){
			//배열 생성
			let x_labels = new Array();	// x축으로 들어갈 배열 : 기준년월
			let datas = new Array();		// 값으로 들어갈 배열 : 전년도 대비 방문자수 비율
			let temp1 = new Array(), temp2= new Array(), temp3= new Array(), temp4= new Array(), temp5= new Array(); //전체 비교하기 위한 임시 배열
			let labels = new Array();		// 차트 종류 : 현지인 방문자 / 외지인 방문자 ...
			
			//배열에 값 삽입
			for (row of result){
				switch(idx){
					case '1' :
						//현지인 방문자 클릭 시
						if (row[2] == '현지인방문자(a)'){
							x_labels.push(row[0]);
							datas.push(row[5]);	
						}
						break;						
					case '2' :
						//외지인 방문자 클릭 시
						if (row[2] == '외지인방문자(b)'){
							x_labels.push(row[0]); 
							datas.push(row[5]);					
						}
						break;
					case '3' :
						//외국인 방문자 클릭 시
						if (row[2] == '외국인방문자(c)'){
							x_labels.push(row[0]); 
							datas.push(row[5]);					
						}
 						break;
					case '4' :
						//외부 방문자 클릭 시
						if (row[2] == '외부방문자(b+c)'){
							x_labels.push(row[0]); 
							datas.push(row[5]);					
						}
 						break;
					case '5' :
						//전체 방문자 클릭 시
						if (row[2] == '전체방문자(a+b+c)'){
							x_labels.push(row[0]); 
							datas.push(row[5]);					
						}
						break;
					default :
						//전체 비교 클릭 시 / 아무것도 클릭하지 않았을 때
						x_labels.push(row[0]); 
						x_labels = remove_duplicate(x_labels); //x축 중복 제거
						
						labels.push(row[2]);
						labels = remove_duplicate(labels);		//차트 종류 중복 제거
						
						switch(row[2]){
							case '현지인방문자(a)':
								temp1.push(row[5]);
								break;
							case '외지인방문자(b)':
								temp2.push(row[5]);
								break;
							case '외국인방문자(c)':
								temp3.push(row[5]);
								break;
							case '외부방문자(b+c)':
								temp4.push(row[5]);
								break;
							case '전체방문자(a+b+c)':
								temp5.push(row[5]);
								break;
						}//end of switch
						
						
						
						break;
				}//end of switch
				
			}//end of for
			
			datas.push(temp1);
			datas.push(temp2);
			datas.push(temp3);
			datas.push(temp4);
			datas.push(temp5);
			
			//제목 열, 행 제거
			x_labels.shift();
			
			
			//기존의 차트를 지우고 다시 붙임
			$('#myChart2').remove(); // this is my <canvas> element
    		$('#myChartDiv2').append('<canvas id="myChart2"></canvas>');
	        
	        console.log(datas);
	        my_line_chart(x_labels, labels, datas);
        },//end of success
        error : function(err){
            console.log(err);
            alert('ChartJS 오류 : 일대일 문의로 오류 사항을 보내주시면 빠르게 처리하겠습니다.');
        }//end of error
    })//end of ajax
	
}//end of visitorProgress

/**** 배열 중복제거 함수 ****/
function remove_duplicate(array){
	let result = [];
	array.forEach((element) => {
		if (!result.includes(element)) {
			result.push(element);
		}//end of if
	}); // end of forEach
	return result;
}



/* 차트 데이터 숫자형 형식 지정 함수 */
function number_format(number, decimals, dec_point, thousands_sep) {
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };//end of function
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }//end of if
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }//end of if
  return s.join(dec);
}// end of function : number_format

/* bar chart 그리는 함수 */	
function my_bar_chart(x_axis, y_axis, data) {
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#858796';
	
	// Bar Chart Example
	var ctx = document.getElementById("myChart1");
	
	var myBarChart = new Chart(ctx, {
	  type: 'bar',
	  data: {
	    labels: x_axis, //x축
	    datasets: [{
	      label: "방문자 비율 ",
	      backgroundColor: "#4e73df",
	      hoverBackgroundColor: "#2e59d9",
	      borderColor: "#4e73df",
	      borderRadius: Number.MAX_VALUE,
	      data: y_axis, //y축
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    layout: {
	      padding: {
	        left: 10,
	        right: 25,
	        top: 25,
	        bottom: 0
	      }
	    },
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'month'
	        },
	        gridLines: {
	          display: false,
	          drawBorder: false
	        },
	        ticks: {
	          maxTicksLimit: 6
	        },
	        maxBarThickness: 25,
	      }],
	      yAxes: [{
	        ticks: {
	          min: 0,
	          max: 40, //y축 최대값
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return number_format(value)+'%';
	          }
	        },
	        gridLines: {
	          color: "rgb(234, 236, 244)",
	          zeroLineColor: "rgb(234, 236, 244)",
	          drawBorder: false,
	          borderDash: [2],
	          zeroLineBorderDash: [2]
	        }
	      }],
	    },
	    legend: {
	      display: false
	    },
	    tooltips: {
	      titleMarginBottom: 10,
	      titleFontColor: '#6e707e',
	      titleFontSize: 18,
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      caretPadding: 10,
	      callbacks: {
	        label: function(tooltipItem, chart) {
	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	          return datasetLabel + ':' + number_format(tooltipItem.yLabel)+'%';
	        }
	      }
	    }
	  }
	});//end of myBarChart


}// end of function : my_bar_chart

/* Line 차트 그리는 함수 */
function my_line_chart(x, l, data2){
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#858796';
	
	// Line Chart Example
	var ctx = document.getElementById("myChart2");
	
	// color array
	var color = ["#6BABF0", "#4f81bd", "#4863E0", "#F0B153", "#FFCF4F"]
	var random = Math.floor(Math.random() * 5);
	
	// 전체 비교하기 (배열의 요소 개수가 5개일 경우)
	if (data2.length == 5){
		var ds = new Array(); // dataset 변수 배열 생성
		var i = 0;
		
		// dataset 변수 종류별로 저장
		for ( var name of l ){
			var temp = {
		            label: name, //변수이름
		            lineTension: 0,
		            backgroundColor: "rgb(234, 236, 244,0)",
		            borderColor: color[i],
		            pointRadius: 3,
		            pointBackgroundColor: color[i],
		            pointBorderColor: color[i],
		            pointHoverRadius: 3,
		            pointHoverBackgroundColor: color[i],
		            pointHoverBorderColor: color[i],
		            pointHitRadius: 10,
		            pointBorderWidth: 2,
		            data: data2[i]            //data 값
		          };
			ds.push(temp);
			i++;
		}
		
		var myLineChart = new Chart(ctx, {
	        type: 'line',
	        data: {
	          labels: x,       //가로축 이름
	          datasets: ds, //end of datasets
	        },//end of data
	        options: {
	          maintainAspectRatio: false,
	          layout: {
	            padding: {
	              left: 10,
	              right: 25,
	              top: 25,
	              bottom: 0
	            }
	          },
	          scales: {
	            xAxes: [{
	              time: {
	                unit: 'date'
	              },
	              gridLines: {
	                display: false,
	                drawBorder: false
	              },
	              ticks: {
	                maxTicksLimit: 7
	              }
	            }],
	            yAxes: [{
	              ticks: {
	                maxTicksLimit: 5,
	                padding: 10,
	                // Include a dollar sign in the ticks
	                callback: function(value, index, values) {
	                  return number_format(value)+'%';
	                }
	              },
	              gridLines: {
	                color: "rgb(234, 236, 244)",
	                zeroLineColor: "rgb(234, 236, 244)",
	                drawBorder: false,
	                borderDash: [2],
	                zeroLineBorderDash: [2]
	              }
	            }],
	          },
	          legend: {
	            display: false
	          },
	          tooltips: {
	            backgroundColor: "rgb(255,255,255)",
	            bodyFontColor: "#858796",
	            titleMarginBottom: 10,
	            titleFontColor: '#6e707e',
	            titleFontSize: 14,
	            borderColor: '#dddfeb',
	            borderWidth: 1,
	            xPadding: 15,
	            yPadding: 15,
	            displayColors: false,
	            intersect: false,
	            mode: 'index',
	            caretPadding: 10,
	            callbacks: {
	              label: function(tooltipItem, chart) {
	                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	                return datasetLabel + ': ' + number_format(tooltipItem.yLabel)+'%';
	              }
	            }
	          }
	        }
	      });//end of myLineChart
	} else {
		
		// 나머지 차트
		 var myLineChart = new Chart(ctx, {
	        type: 'line',
	        data: {
	          labels: x,       //가로축 이름
	          datasets: [{
	            label: "전년도 대비 비율", //변수이름
	            lineTension: 0.3,
	            borderColor: color[random],
	            backgroundColor: "rgb(234, 236, 244,0)",
	            pointRadius: 3,
	            pointBorderColor: color[random],
	            pointBackgroundColor: color[random],
	            pointHoverRadius: 3,
	            pointHoverBackgroundColor: color[random],
	            pointHoverBorderColor: color[random],
	            pointHitRadius: 10,
	            pointBorderWidth: 2,
	            data: data2            //data 값
	          }], //end of datasets
	        },//end of data
	        options: {
	          maintainAspectRatio: false,
	          layout: {
	            padding: {
	              left: 10,
	              right: 25,
	              top: 25,
	              bottom: 0
	            }
	          },
	          scales: {
	            xAxes: [{
	              time: {
	                unit: 'date'
	              },
	              gridLines: {
	                display: false,
	                drawBorder: false
	              },
	              ticks: {
	                maxTicksLimit: 7
	              }
	            }],
	            yAxes: [{
	              ticks: {
	                maxTicksLimit: 5,
	                padding: 10,
	                // Include a dollar sign in the ticks
	                callback: function(value, index, values) {
	                  return number_format(value)+'%';
	                }
	              },
	              gridLines: {
	                color: "rgb(234, 236, 244)",
	                zeroLineColor: "rgb(234, 236, 244)",
	                drawBorder: false,
	                borderDash: [2],
	                zeroLineBorderDash: [2]
	              }
	            }],
	          },
	          legend: {
	            display: false
	          },
	          tooltips: {
	            backgroundColor: "rgb(255,255,255)",
	            bodyFontColor: "#858796",
	            titleMarginBottom: 10,
	            titleFontColor: '#6e707e',
	            titleFontSize: 14,
	            borderColor: '#dddfeb',
	            borderWidth: 1,
	            xPadding: 15,
	            yPadding: 15,
	            displayColors: false,
	            intersect: false,
	            mode: 'index',
	            caretPadding: 10,
	            callbacks: {
	              label: function(tooltipItem, chart) {
	                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	                return datasetLabel + ': ' + number_format(tooltipItem.yLabel)+'%';
	              }
	            }
	          }
	        }
	      });//end of myLineChart
	}
	
}// end of function : my_line_chart
