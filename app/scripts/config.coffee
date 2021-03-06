# 37:left 38:up 39:right 40:down
# 32:space
config =
  redirect :
    "/welcome" :
      38 : "/manage"
      39 : "/act"
      40 : "/list"
    "/act" :
      38 : "/manage"
      40 : "/list"
    "/list" :
      38 : "/act"
      40 : "/manage"
    "/manage" :
      38 : "/list"
      40 : "/act"

ConfigPath = './JoyLotteryPath'
BasedataPath = '/basedata'
BasedataFile = '/basedata.json'
WorkspacePath = '/workspace'


Array.prototype.contains = (element) ->
  for i in this
    if i == element
      return true
  return false

String.prototype.endWith = (str) ->
  if(str==null||str==""||this.length==0||str.length>this.length)
    return false;
  if(this.substring(this.length-str.length)==str)
    return true;
  else
    return false;
  return true;

String.prototype.startWith = (str) ->
  if(str==null||str==""||this.length==0||str.length>this.length)
    return false;
  if(this.substr(0,str.length)==str)
    return true;
  else
    return false;
  return true;
