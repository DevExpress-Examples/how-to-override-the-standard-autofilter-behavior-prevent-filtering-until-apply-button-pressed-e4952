<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to override the standard AutoFilter behavior (Prevent filtering until "Apply" button pressed)
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4952/)**
<!-- run online end -->


<p>The example implements a custom FilterCell Template in order to prevent filtering until the user presses the “Apply" button. It overrides the Autofilter's default behavior (applying the filter after each input control loses focus).<br /><br /></p>
<p><strong>Update:</strong><br />Starting with version v2013 vol 2.5, we have implemented the new 'on click' filter mode. In this mode, a filter is applied to the grid by clicking the <strong>Apply</strong> button, which is displayed in a command column. </p>
<p>To provide your application with this functionality, display the filter row in the grid by setting the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridViewSettings_ShowFilterRowtopic">ShowFilterRow</a> property to <strong>true</strong> and set the <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridViewBehaviorSettings_FilterRowModetopic">FilterRowMode</a> property to <strong>OnClick</strong>.</p>

<br/>


