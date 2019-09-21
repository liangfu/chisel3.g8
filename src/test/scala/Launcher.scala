// See LICENSE.txt for license details.
package examples

import chisel3.iotesters.{Driver, TesterOptionsManager}
import utils.TutorialRunner
import freechips.rocketchip.config.Parameters

object Launcher {
  implicit val p = (new DefaultConfig).toInstance
  val modules = Map(
      "ALU" -> { (manager: TesterOptionsManager) =>
        Driver.execute(() => new ALU(), manager) {
          (c) => new ALUTests(c)
        }
      },
  )
  def main(args: Array[String]): Unit = {
    TutorialRunner("examples", modules, args)
  }
}

