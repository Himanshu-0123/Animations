/*
 * Copyright (C) 2022 Application Library Engineering Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { AnimateModel } from './animateModel'

@Entry
@Component
struct Index {
  @State model: AnimateModel = new AnimateModel()

  bounce() {
    this.model.reset()

    animateTo(
      {
        duration: 200,
        onFinish: () => {
          // Revert to original position
          this.model.setTranslateY(0)
          animateTo(
            {
              duration: 100,
              onFinish: () => {
                // Revert to original position
                this.model.setTranslateY(0)
              }
            },
            () => {
              // Show second animation
              this.model.setTranslateY(-10)
            })
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateY(-20)
      }
    )
  }

  bounceIn() {
    this.model.reset()

    this.model.setScaleX(0)
    this.model.setScaleY(0)

    animateTo(
      {
        duration: 400,
        onFinish: () => {
          // Revert to original position
          animateTo({ duration: 200 }, () => {
            // Show second animation
            this.model.setScaleX(1)
            this.model.setScaleY(1)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setScaleX(1.2)
        this.model.setScaleY(1.2)
      }
    )
  }

  bounceInDown() {
    this.model.reset()

    this.model.setTranslateY(-100)

    animateTo(
      {
        duration: 500,
        onFinish: () => {
          // Revert to original position
          animateTo({ duration: 100 }, () => {
            // Show second animation
            this.model.setScaleX(1)
            this.model.setScaleY(1)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateY(0)
        this.model.setScaleX(0.8)
        this.model.setScaleY(0.8)
      }
    )
  }

  bounceInLeft() {
    this.model.reset()

    this.model.setTranslateX(-500)

    animateTo(
      {
        duration: 500,
        onFinish: () => {
          // Revert to original position
          animateTo({ duration: 100 }, () => {
            // Show second animation
            this.model.setScaleX(1)
            this.model.setScaleY(1)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateX(0)
        this.model.setScaleX(0.8)
        this.model.setScaleY(0.8)
      }
    )
  }

  bounceInRight() {
    this.model.reset()

    this.model.setTranslateX(500)

    animateTo(
      {
        duration: 500,
        onFinish: () => {
          // Revert to original position
          animateTo({ duration: 100 }, () => {
            // Show second animation
            this.model.setScaleX(1)
            this.model.setScaleY(1)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateX(0)
        this.model.setScaleX(0.8)
        this.model.setScaleY(0.8)
      }
    )
  }

  bounceInUp() {
    this.model.reset()

    this.model.setTranslateY(3000)

    animateTo(
      {
        duration: 500,
        onFinish: () => {
          // Revert to original position
          animateTo({ duration: 100 }, () => {
            // Show second animation
            this.model.setScaleX(1)
            this.model.setScaleY(1)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateY(0)
        this.model.setScaleX(0.8)
        this.model.setScaleY(0.8)
      }
    )
  }

  bounceOut() {
    this.model.reset()

    animateTo(
      {
        duration: 100,
        onFinish: () => {
          // Revert to original position
          animateTo(
            {
              duration: 400,
              onFinish: () => {
                this.model.setScaleX(1)
                this.model.setScaleY(1)
              }
            }, () => {
            // Show second animation
            this.model.setScaleX(0)
            this.model.setScaleY(0)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setScaleX(1.1)
        this.model.setScaleY(1.1)
      }
    )
  }

  bounceOutDown() {
    this.model.reset()

    animateTo(
      {
        duration: 100,
        onFinish: () => {
          // Revert to original position
          animateTo({
            duration: 500,
            onFinish: () => {
              // Revert to original position
              this.model.setTranslateY(0)
              this.model.setScaleX(1)
              this.model.setScaleY(1)
            }
          }, () => {
            // Show second animation
            this.model.setTranslateY(3000)
          })
        }
      },
      () => {
        // Show first animation
        this.model.setScaleX(0.8)
        this.model.setScaleY(0.8)
      }
    )
  }

  bounceOutLeft() {
    this.model.reset()

    animateTo(
      {
        duration: 200,
        onFinish: () => {
          // Revert to original position
          animateTo({
            duration: 500,
            onFinish: () => {
              // Revert to original position
              this.model.setTranslateX(0)
              this.model.setOffsetX(0)
              this.model.setOffsetY(0)
            }
          }, () => {
            // Show second animation
            this.model.setTranslateX(-1000)
          })
        }
      },
      () => {
        // Show first animation
        //        this.model.setScaleX(0.8)
        this.model.setOffsetX(100)
        this.model.setOffsetY(0)
      }
    )
  }

  flash() {
    this.model.reset()

    animateTo(
      {
        duration: 300,
        onFinish: () => {
          // Revert to original position
          this.model.setOpacity(1)
          animateTo(
            {
              duration: 300,
              onFinish: () => {
                // Revert to original position
                this.model.setOpacity(1)
              }
            },
            () => {
              // Show second animation
              this.model.setOpacity(0.4)
            }
          )
        }
      },
      () => {
        // Show first animation
        this.model.setOpacity(0.4)
      }
    )
  }

  pulse() {
    this.model.reset()

    animateTo(
      {
        duration: 300,
        onFinish: () => {
          // Revert to original position
          animateTo({ duration: 300 }, () => {
            this.model.setScaleX(1)
            this.model.setScaleY(1)
          })
        }
      },
      () => {
        // Show animation
        this.model.setScaleX(1.2)
        this.model.setScaleY(1.2)
      }
    )
  }

  rubberBand() {
    this.model.reset()

    animateTo(
      {
        duration: 100,
        onFinish: () => {
          // Revert to original position
          this.model.setScaleX(1)
          this.model.setScaleY(1)
          animateTo(
            {
              duration: 100,
              onFinish: () => {
                // Revert to original position
                this.model.setScaleX(1)
                this.model.setScaleY(1)
              }
            },
            () => {
              // Show second animation
              this.model.setScaleX(1.15)
              this.model.setScaleY(0.85)
            }
          )
        }
      },
      () => {
        // Show first animation
        this.model.setScaleX(1.25)
        this.model.setScaleY(0.75)
      }
    )
  }

  shakeX() {
    this.model.reset()

    animateTo(
      {
        duration: 200,
        onFinish: () => {
          // Revert to original position
          this.model.setTranslateX(0)
          this.model.setTranslateY(0)
          animateTo(
            {
              duration: 100,
              onFinish: () => {
                // Revert to original position
                this.model.setTranslateX(0)
                this.model.setTranslateY(0)
              }
            },
            () => {
              // Show second animation
              this.model.setTranslateX(-20)
              this.model.setTranslateY(0)
            }
          )
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateX(20)
        this.model.setTranslateY(0)
      }
    )
  }

  shakeY() {
    this.model.reset()

    animateTo(
      {
        duration: 200,
        onFinish: () => {
          // Revert to original position
          this.model.setTranslateX(0)
          this.model.setTranslateY(0)
          animateTo(
            {
              duration: 100,
              onFinish: () => {
                // Revert to original position
                this.model.setTranslateX(0)
                this.model.setTranslateY(0)
              }
            },
            () => {
              // Show second animation
              this.model.setTranslateX(0)
              this.model.setTranslateY(-10)
            }
          )
        }
      },
      () => {
        // Show first animation
        this.model.setTranslateX(0)
        this.model.setTranslateY(10)
      }
    )
  }

  swing() {
    this.model.reset()

    animateTo(
      {
        duration: 10,
        onFinish: () => {
          // Revert to original position
          this.model.setRotateZ(0)
          this.model.setRotateAngle(0)
          animateTo(
            {
              duration: 10,
              onFinish: () => {
                // Revert to original position
                this.model.setRotateZ(0)
                this.model.setRotateAngle(0)
              }
            },
            () => {
              // Show second animation
              this.model.setRotateZ(1)
              this.model.setRotateAngle(0)
            }
          )
        }
      },
      () => {
        // Show first animation
        this.model.setRotateZ(1)
        this.model.setRotateAngle(8)
      }
    )
  }

  tada() {
    this.model.reset()

    animateTo(
      {
        duration: 10,
        onFinish: () => {
          // Revert to original position
          this.model.setScaleX(1)
          this.model.setScaleY(1)
          this.model.setScaleZ(1)
          this.model.setRotateZ(0)
          this.model.setRotateAngle(0)
          animateTo(
            {
              duration: 10,
              onFinish: () => {
                // Revert to original position
                this.model.setScaleX(1)
                this.model.setScaleY(1)
                this.model.setScaleZ(1)
                this.model.setRotateZ(0)
                this.model.setRotateAngle(0)
              }
            },
            () => {
              // Show second animation
              this.model.setScaleX(1.1)
              this.model.setScaleY(1.1)
              this.model.setScaleZ(1.1)
              this.model.setRotateZ(0.1)
              this.model.setRotateAngle(3)
            }
          )
        }
      },
      () => {
        // Show first animation
        this.model.setScaleX(0.7)
        this.model.setScaleY(0.7)
        this.model.setScaleZ(0.7)
        this.model.setRotateZ(0.1)
        this.model.setRotateAngle(-3)
      }
    )
  }

  build() {
    Column() {

      Text('Animating Label')
        .fontSize('36fp')
        .fontWeight(FontWeight.Bold)
        .opacity(this.model.getOpacity())
        .offset({
          x: this.model.getOffsetX(),
          y: this.model.getOffsetY()
        })
        .scale({
          x: this.model.getScaleX(),
          y: this.model.getScaleY(),
          z: this.model.getScaleZ(),
          centerX: this.model.getScaleCenterX(),
          centerY: this.model.getScaleCenterY()
        })
        .rotate({
          x: this.model.getRotateX(),
          y: this.model.getRotateY(),
          z: this.model.getRotateZ(),
          angle: this.model.getRotateAngle()
        })
        .translate({
          x: this.model.getTranslateX(),
          y: this.model.getTranslateY(),
          z: this.model.getTranslateZ()
        })

      List() {
        ListItem() {
          Column() {
            Button('Bounce').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounce())

            Button('Bounce In').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceIn())

            Button('Bounce In Down').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceInDown())

            Button('Bounce In Left').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceInLeft())

            Button('Bounce In Right').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceInRight())

            Button('Bounce In Up').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceInUp())

            Button('Bounce Out').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceOut())

            Button('Bounce Out Down').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceOutDown())

            Button('Bounce Out Left').width('100%').margin({ top: '24vp' })
              .onClick(() => this.bounceOutLeft())

            Button('Flash').width('100%').margin({ top: '24vp' })
              .onClick(() => this.flash())

            Button('Pulse').width('100%').margin({ top: '24vp' })
              .onClick(() => this.pulse())

            Button('Rubber Band').width('100%').margin({ top: '24vp' })
              .onClick(() => this.rubberBand())

            Button('Shake X').width('100%').margin({ top: '24vp' })
              .onClick(() => this.shakeX())

            Button('Shake Y').width('100%').margin({ top: '24vp' })
              .onClick(() => this.shakeY())

            Button('Swing').width('100%').margin({ top: '24vp' })
              .onClick(() => this.swing())

            Button('Tada').width('100%').margin({ top: '24vp' })
              .onClick(() => this.tada())
          }
        }
      }

    }
    .width('100%').height('100%')
    .padding('24vp')
  }
}