/*
 * Copyright (C) 2024. Huawei Device Co., Ltd. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the Apache-2.0 license.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * Apache-2.0 license for more details.
 */

import { ExtWeb } from 'WebSceneKitHsp';
import { ExtWebParams } from '../../interfaces/SameLayer';




@Component
struct ExtWebComponent {
  @ObjectLink params: ExtWebParams

  build() {
    Column() {
      ExtWeb({ url: this.params.url, asMixWeb:  this.params.asMixWeb })
    }
    .width(this.params.width)
    .height(this.params.height)
  }
}

@Builder
export function NativeExtWebBuilder(params: ExtWebParams) {
  ExtWebComponent({ params: params })
}