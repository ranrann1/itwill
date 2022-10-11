function checkEmail(){
        var email = $('#email').val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
            url:'./emailCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            dataType: "json",
            data:{email:email},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
            	if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.id_ok_email').css("display","inline-block"); 
                    $('.id_already_email').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already_email').css("display","inline-block");
                    $('.id_ok_email').css("display", "none");
                   
                }
               
            },
           
        });
        };