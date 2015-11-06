    $(document).ready(function () {  
        $("#msg").click(function () {  
            $.ajax({  
                url:'/ourmanager/test',  
                type:'POST',  
                data:"{}",  
                dataType:'json',  
                success:function (data) {  
                	console.log(data.om);
                    $("#allUser").append("<div>输出了：id:" + data.om.bills + ", name: " + data + "</div>");  
                }  
            });  
            /*$.getJSON("/test/input_user!queryHello", function (data) { 
             //通过.操作符可以从data.hello中获得Action中hello的值 
             $("#allUser").html("输出了: " + data.hello); 
             });*/  
        });  

        $("#msgUserInfo").click(function () {  
            $.ajax({  
                url:'/ourmanager/test',  
                type:'post',  
                data:"{}",  
                dataType:'json',  
                success:function (data) {  
                    $("#allUser").append("<div>输出了：id:" + data + ", name: " + data + "</div>");  
                }  
            });  
        });  
      
        $("#msgUserInfoList").click(function () {  
            $.ajax({  
                url:'/ourmanager/test',  
                type:'post',  
                data:"{}",  
                dataType:'json',  
                success:function (data) {  
                    /*$.each(data.userList, function(i, value){ 
                     $("#allUser").append("<div>输出了：id:"+value.id+", name: "+value.name+"</div>"); 
                     });*/  
               
                        $("#allUser").append("<div>输出了：id:" + data + ", name: " + data + "</div>");  
 
      
                }  
            });  
        });  
      
        $("#addUser").click(function () {  
            //必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法  
            var params = $("#subUserForm").serialize();  
            $.ajax({  
                url:'/ourmanager/test',  
                type:'post',  
                data:params,  
                dataType:'json',  
                success:function (data) {  
                    /*$.each(data.userList, function(i, value){ 
                     $("#allUser").append("<div>输出了：id:"+value.id+", name: "+value.name+"</div>"); 
                     });*/  
                    $("#allUser").append("<div>输出了：id:" + data + ", name: " + data + "</div>");  

      
                }  
            });  
        });  
      
        $("#users").click(function () {  
            $.ajax({  
                url:'/ourmanager/test',  
                type:'post',  
                data:"{}",  
                dataType:'json',  
                success:function (data) {  
                    /*$.each(data.userList, function (i, value) { 
                     $("#allUser").append("<div>输出了：id:" + value.id + ", name: " + value.name + "</div>"); 
                     });*/  
                    $("#allUser").append("<div>输出了：id:" + data + ", name: " + data + "</div>");  
 
      
                }  
            });  
        });  
    });  

