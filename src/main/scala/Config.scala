// See LICENSE for license details.

package examples

import chisel3.Module
import freechips.rocketchip.config.{Parameters, Config}

class DefaultConfig extends Config((site, here, up) => {
  // Core
  case XLEN => 8
}
)
