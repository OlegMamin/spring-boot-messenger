<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h3>Add new user:</h3>
<h4 style="color: crimson">${message}<h4>
<@l.login "/registration" />
</@c.page>