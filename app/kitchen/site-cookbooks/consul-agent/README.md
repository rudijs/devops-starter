# consul-agent-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['consul-agent']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### consul-agent::default

Include `consul-agent` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[consul-agent::default]"
  ]
}
```

## License and Authors

Author:: Rudi Starcevic (<ooly.me@gmail.com>)
