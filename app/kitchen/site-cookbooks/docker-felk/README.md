# docker-felk-cookbook

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
    <td><tt>['docker-felk']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### docker-felk::default

Include `docker-felk` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[docker-felk::default]"
  ]
}
```

## License and Authors

Author:: Rudi Starcevic (<ooly.me@gmail.com>)
