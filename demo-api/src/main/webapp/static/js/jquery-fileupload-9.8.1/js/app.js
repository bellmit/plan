(function(){var b=window.location.hostname==="blueimp.github.io",a=b?"//jquery-file-upload.appspot.com/":"server/php/";angular.module("demo",["blueimp.fileupload"]).config(["$httpProvider","fileUploadProvider",function(d,c){delete d.defaults.headers.common["X-Requested-With"];c.defaults.redirect=window.location.href.replace(/\/[^\/]*$/,"/cors/result.html?%s");if(b){angular.extend(c.defaults,{disableImageResize:/Android(?!.*Chrome)|Opera/.test(window.navigator.userAgent),maxFileSize:5000000,acceptFileTypes:/(\.|\/)(gif|jpe?g|png)$/i})}}]).controller("DemoFileUploadController",["$scope","$http","$filter","$window",function(c,d){c.options={url:a};if(!b){c.loadingFiles=true;d.get(a).then(function(e){c.loadingFiles=false;c.queue=e.data.files||[]},function(){c.loadingFiles=false})}}]).controller("FileDestroyController",["$scope","$http",function(c,f){var d=c.file,e;if(d.url){d.$state=function(){return e};d.$destroy=function(){e="pending";return f({url:d.deleteUrl,method:d.deleteType}).then(function(){e="resolved";c.clear(d)},function(){e="rejected"})}}else{if(!d.$cancel&&!d._index){d.$cancel=function(){c.clear(d)}}}}])}());