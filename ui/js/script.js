$(function(){
    window.onload = (e) => { 
        window.addEventListener('message', (event) => {	            
            var item = event.data;
            if (item !== undefined && item.type === "ui") {		                
                if (item.display === true) {
                    $("#main").show();
                    console.log("Progress Bar Created.");
                    var start = new Date();
                    var maxTime = item.time;
                    var text = item.text;
                    var timeoutVal = Math.floor(maxTime/100);
                    animateUpdate();

                    $('#textin').text(text);

                    function updateProgress(percentage) {
                        $('#divin').css("width", percentage + "%");
                    }

                    function animateUpdate() {
                        var now = new Date();
                        var timeDiff = now.getTime() - start.getTime();
                        var perc = Math.round((timeDiff/maxTime)*100);
                        //console.log(perc);
                        if (perc <= 100) {
                            updateProgress(perc);
                            setTimeout(animateUpdate, timeoutVal);
                        } else {
                            $("#main").hide();
                        }
                    }


                } else {
                    $("#main").hide();
                }
            }
        });
    };
});