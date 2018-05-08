# AndroidTemplate
AndroidStudio模板库--MVP<br/>
在项目根下的build.gradle添加 <br/>
allprojects { <br/>
repositories { <br/>
... <br/>
maven { url "https://jitpack.io" }<br/>
}<br/>
}<br/>

必须结合AndroidFrame--Android自定义框架来使用 依赖方式如下：<br/>
compile 'com.github.Duckdan:AndroidDefineFrame:v1.2'
