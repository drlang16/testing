!function(){"use strict";var a=window.document,b={STYLES:"https://c.disquscdn.com/next/embed/styles/lounge.cef06fba9afb581ee691b2d4ff616400.css",RTL_STYLES:"https://c.disquscdn.com/next/embed/styles/lounge_rtl.e83a014a3ff7b44a54d0d6d6cf746938.css","lounge/main":"https://c.disquscdn.com/next/embed/lounge.bundle.e6d687a00e582afde8931b86b8940457.js","remote/config":"https://disqus.com/next/config.js","common/vendor_extensions/highlight":"https://c.disquscdn.com/next/embed/highlight.6fbf348532f299e045c254c49c4dbedf.js"};window.require={baseUrl:"https://c.disquscdn.com/next/current/embed/embed",paths:["lounge/main","remote/config","common/vendor_extensions/highlight"].reduce(function(a,c){return a[c]=b[c].slice(0,-3),a},{})};var c=a.createElement("script");c.onload=function(){require(["common/main"],function(a){a.init("lounge",b)})},c.src="https://c.disquscdn.com/next/embed/common.bundle.6719fe9dbe70a5a047052a905ea1cbc5.js",a.body.appendChild(c);var d=["astarostin-test","hovseptestrealm","disqus-pse-stock-v2"],e=!1;if(d.forEach(function(a){(window.location.hostname===a||window.location.search.includes(a))&&(e=!0)}),e){var f=a.createElement("script");f.src="https://c.disquscdn.com/embedv2/latest/embedv2.js",a.body.appendChild(f)}}();