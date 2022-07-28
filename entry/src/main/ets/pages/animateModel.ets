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

export class AnimateModel {
  private offsetX: number = 0
  private offsetY: number = 0

  private translateX: number = 0
  private translateY: number = 0
  private translateZ: number = 0

  private opacity: number = 1

  private rotateX: number = 0
  private rotateY: number = 0
  private rotateZ: number = 0
  private rotateAngle: number = 90

  private scaleX: number = 1
  private scaleY: number = 1
  private scaleZ: number = 1
  private scaleCenterX: number = 1
  private scaleCenterY: number = 1

  getOffsetX(): number {
    return this.offsetX
  }

  setOffsetX(x: number): AnimateModel {
    this.offsetX = x
    return this
  }

  getOffsetY(): number {
    return this.offsetY
  }

  setOffsetY(y: number): AnimateModel {
    this.offsetY = y
    return this
  }

  getTranslateX(): number {
    return this.translateX
  }

  setTranslateX(x: number): AnimateModel {
    this.translateX = x
    return this
  }

  getTranslateY(): number {
    return this.translateY
  }

  setTranslateY(y: number): AnimateModel {
    this.translateY = y
    return this
  }

  getTranslateZ(): number {
    return this.translateZ
  }

  setTranslateZ(z: number): AnimateModel {
    this.translateZ = z
    return this
  }

  getOpacity(): number {
    return this.opacity
  }

  setOpacity(opacity: number): AnimateModel {
    this.opacity = opacity
    return this
  }

  getRotateX(): number {
    return this.rotateX
  }

  setRotateX(x: number): AnimateModel {
    this.rotateX = x
    return this
  }

  getRotateY(): number {
    return this.rotateY
  }

  setRotateY(y: number): AnimateModel {
    this.rotateY = y
    return this
  }

  getRotateZ(): number {
    return this.rotateZ
  }

  setRotateZ(z: number): AnimateModel {
    this.rotateZ = z
    return this
  }

  getRotateAngle(): number {
    return this.rotateAngle
  }

  setRotateAngle(angle: number): AnimateModel {
    this.rotateAngle = angle
    return this
  }

  getScaleX(): number {
    return this.scaleX
  }

  setScaleX(x: number): AnimateModel {
    this.scaleX = x
    return this
  }

  getScaleY(): number {
    return this.scaleY
  }

  setScaleY(y: number): AnimateModel {
    this.scaleY = y
    return this
  }

  getScaleZ(): number {
    return this.scaleZ
  }

  setScaleZ(z: number): AnimateModel {
    this.scaleZ = z
    return this
  }

  getScaleCenterX(): number {
    return this.scaleCenterX
  }

  setScaleCenterX(x: number): AnimateModel {
    this.scaleCenterX = x
    return this
  }

  getScaleCenterY(): number {
    return this.scaleCenterY
  }

  setScaleCenterY(y: number): AnimateModel {
    this.scaleCenterY = y
    return this
  }

  reset() {
    this.offsetX = 0
    this.offsetY = 0

    this.translateX = 0
    this.translateY = 0
    this.translateZ = 0

    this.opacity = 1

    this.rotateX = 0
    this.rotateY = 0
    this.rotateZ = 0
    this.rotateAngle = 90

    this.scaleX = 1
    this.scaleY = 1
    this.scaleZ = 1
    this.scaleCenterX = 1
    this.scaleCenterY = 1
  }
}