jQuery.validator.addMethod("isPhoneNumber",function(b,a){if(b.length==0){return true}return CommValidate.checkPhone(b)||CommValidate.checkTel(b)},"请输入正确的联系电话");jQuery.validator.addMethod("isDouble",function(b,a){return CommValidate.isDouble(b)},"请输入正确的数值");jQuery.validator.addMethod("isMobileNumber",function(b,a){return CommValidate.checkPhone(b)},"请输入正确的手机号码");jQuery.validator.addMethod("IdCardValidate",function(b,a){return CommValidate.IdCardValidate(b)},"请输入正确的身份证号码");jQuery.validator.addMethod("isUsername",function(b,a){if(b.length==0){return true}return CommValidate.isUsername(b)},"请输入正确的用户名");jQuery.validator.addMethod("isInteger8Fraction8",function(d,b){var c=d.split(".");for(var a=0;a<c.length;a++){if(c[a].length>8){return false}}return true},"请输入正确的数值");jQuery.validator.addMethod("isPostiveDigit",function(b,a){return CommValidate.isPositiveDouble(b)||CommValidate.isPositiveInteger(b)},"请输入正确的数值");
