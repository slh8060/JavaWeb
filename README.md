1、JSONP：JSONP(JSON with Padding)是JSON的 一种“使用模式”，可用于解决主流浏览器的跨域数据访问的问题。由于同源策略，一般来说位于 server1.example.com 的网页无法与不是 server1.example.com的服务器沟通，而 HTML 的<script> 元素是一个例外。利用 <script> 元素的这个开放策略，网页可以得到从其他来源动态产生的 JSON 资料，而这种使用模式就是所谓的 JSONP。用 JSONP 抓到的资料并不是 JSON，而是任意的JavaScript，用 JavaScript 直译器执行而不是用 JSON 解析器解析。



2、JSON是一种轻量级的数据交换格式，像xml一样，是用来描述数据间的。
JSONP是一种使用JSON数据的方式，返回的不是JSON对象，是包含JSON对象的javaScript脚本。


3、JSONP的工作原理：由于同源策略的限制，XmlHttpRequest只允许请求当前源（域名、协议、端口）的资源。若要跨域请求出于安全性考虑是不行的，但是我们发现，Web页面上调用js文件时则不受是否跨域的影响，而且拥有”src”这个属性的标签都拥有跨域的能力，比如<script>、<img>、<iframe>，这时候，聪明的程序猿就想到了变通的方法，如果要进行跨域请求， 通过使用html的script标记来进行跨域请求，并在响应中返回要执行的script代码，其中可以直接使用JSON传递 javascript对象。即在跨域的服务端生成JSON数据，然后包装成script脚本回传，着不就突破同源策略的限制，解决了跨域访问的问题了么。


4、缺点：只支持get 方式；
       JSONP不提供错误处理。如果动态插入的代码正常运行，你可以得到返回，但是如果失败了，那么什么都不会发生。
       
