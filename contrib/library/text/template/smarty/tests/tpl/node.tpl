{assign name="old" expression=":$offset" /}{assign name="offset" expression="$offset:$offset_step" /}{$offset/}- {$NodeData.name /}{if isset="$NodeData.unicode_text"} Unicode=[{htmlentities}{$NodeData.unicode_text/}{/htmlentities}]{/if} (#{$NodeData.nodes.count /}){unless isempty="$NodeData.nodes" }{foreach item="node" from="$NodeData.nodes" }
{include file="node.tpl" }{assign name="NodeData" expression="$node" /}{/include}{/foreach}{/unless}{assign name="offset" expression=":$old" /}
