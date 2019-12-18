<#import "parts/common.ftl" as c>
<@c.page>
    <h4>List of Users<h4>
            <table>
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Role</td>
                        <td>Commands</td>
                    </tr>
                </thead>
                <tbody>
                <#list userList as user>
                    <tr>
                        <td>${user.username}</td>
                        <td><#list user.roles as role>${role}<#sep>, </#list></td>
                        <td><a href="/user/${user.id}" />Edit</td>
                    </tr>
                </#list>
                </tbody>
            </table>
</@c.page>

