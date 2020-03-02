<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx }/css/list.css" media="all" />
    <link rel="stylesheet" href="${ctx }/css/font_eolqem241z66flxr.css"
          media="all" />
    <script>
        var ctx = "${ctx}";
    </script>
</head>
<body class="childrenBody">
<blockquote class="layui-elem-quote news_search">
    <form class="layui-form">
        <div class="layui-inline">
            <div class="layui-input-inline">
                <input type="text" id="username" value="" placeholder="请输入学生姓名"
                       class="layui-input search_input " style="margin-left: 10px">
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="sex" class="" id="sex">
                    <option value="-1">请选择性别</option>
                    <option value="1">男</option>
                    <option value="0">女</option>
                    <option value="2">保密</option>
                </select>
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="status" class="" id="status">
                    <option value="-1">请选择用户状态</option>
                    <option value="0">禁用</option>
                    <option value="1">正常</option>
                </select>
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="levelId" class="" id="levelId">
                    <option value="-1">请选择学生年级</option>
                    <option value="1">大一</option>
                    <option value="2">大二</option>
                    <option value="3">大三</option>
                    <option value="4">大四</option>
                </select>
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <div class="layui-inline">
                    <input type="text" id="birthdayStart" class="layui-input"
                           name="birthdayStart" placeholder="生日(开始)" value="">
                </div>
                -
                <div class="layui-inline">
                    <input type="text" id="birthdayEnd" class="layui-input"
                           name="birthdayEnd" placeholder="生日(结束)" value="">
                </div>
            </div>
        </div>
        <div style="margin-left: 10px">
            <div class="layui-inline">
                <input type="text" id="createTimeStart" class="layui-input"
                       name="createTimeStart" placeholder="注册时间(开始)" value="">
            </div>
            -
            <div class="layui-inline">
                <input type="text" id="createTimeEnd" class="layui-input"
                       name="createTimeEnd" placeholder="注册时间(结束)" value="">
            </div>
            <a style="margin-left: 10px" class="layui-btn search_btn" lay-submit="" data-type="search"
               lay-filter="search">查询</a>
            <div class="layui-inline" style="margin-left: 10px">
                <a class="layui-btn layui-btn-normal studentAdd_btn">添加用户</a>
            </div>
        </div>
    </form>
</blockquote>
    <div class="layui-form">
        <table id="studentList" lay-filter="studentList"></table>
    </div>
    <script type="text/html" id="sexTpl">
        {{#  if(d.sex==1){                                 }}
                <span style="color: #0000FF">男</span>
        {{#   }  else if(d.sex==0){                        }}
                <span style="color: #FF5722">女</span>
        {{#   }else {                                      }}
                 <span style="color: #1AA094">保密</span>
        {{#      }                                          }}
    </script>

<script type="text/html" id="statusTpl">
    <input type="checkbox" name="status" value="{{d.id}}"
           lay-skin="switch" lay-text="正常|禁用"
           lay-filter="statusSwitch" {{ d.status == 1 ? 'checked' : '' }}>
</script>

    <script type="text/html" id="levelTpl">
        {{#    if(d.levelId==1) {                        }}
                <span style="color: #1AA094">大学一年级</span>
        {{#      } else if(d.levelId==2) {                 }}
                <span style="color: #FF5722">大学二年级</span>
        {{#      } else if(d.levelId==3)  {                }}
                <span style="color: #00b83f">大学三年级</span>
        {{#      } else if(d.levelId==4) {                 }}
                <span style="color: #00F7DE">大学四年级</span>
        {{#      }                                       }}
    </script>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-sm" lay-event="edit">
            <i class="layui-icon">&#xe642;</i>
        </a>
        <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">
            <i class="layui-icon">&#xe640;</i>
        </a>
    </script>
    <script type="text/javascript" src="${ctx }/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx }/js/student/studentList.js"></script>
    <script type="text/javascript" src="${ctx }/js/pubilc.js"></script>

</body>




</html>