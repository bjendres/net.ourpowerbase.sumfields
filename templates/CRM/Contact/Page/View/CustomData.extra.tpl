{* find out if we're displaying summary fields}
{foreach from=$viewCustomData item=outer}
	{foreach from=$outer item=inner}
		{if $inner.name eq "Summary_Fields"}
			{assign var="is_summary_fields" value="YES"}
		{/if}
	{/foreach}
{/foreach}


{if $is_summary_fields}
{literal}
<script type="text/javascript">
// remove edit data button
cj("#Akkumulierte_Daten .edit-icon").parent().parent().parent().hide();
// remove delete data button
cj("#Akkumulierte_Daten .delete-icon").parent().parent().parent().hide();
</script>
{/literal}
{/if}