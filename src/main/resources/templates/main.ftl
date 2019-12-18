<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <@l.logout />
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Enter your message"/>
            <input type="text" name="tag" placeholder="Tag"/>
            <input type="hidden" name="_csrf" value="{_csrf.token}">
            <button type="submit">Add</button>
        </form>
    </div>
    <h3>Message list:</h3>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Find</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else><h4>No messages</h4>
    </#list>
</@c.page>