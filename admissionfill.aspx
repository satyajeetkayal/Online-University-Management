﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admissionfill.aspx.cs" Inherits="admissionfill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
         @charset "UTF-8";

/*!
Animate.css - http://daneden.me/animate
Licensed under the MIT license - http://opensource.org/licenses/MIT

Copyright (c) 2015 Daniel Eden
*/

.animated {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

.animated.infinite {
  -webkit-animation-iteration-count: infinite;
  animation-iteration-count: infinite;
}

.animated.hinge {
  -webkit-animation-duration: 2s;
  animation-duration: 2s;
}

.animated.bounceIn,
.animated.bounceOut {
  -webkit-animation-duration: .75s;
  animation-duration: .75s;
}

.animated.flipOutX,
.animated.flipOutY {
  -webkit-animation-duration: .75s;
  animation-duration: .75s;
}

@-webkit-keyframes bounce {
  from, 20%, 53%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    -webkit-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
  }

  40%, 43% {
    -webkit-animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    -webkit-transform: translate3d(0, -30px, 0);
    transform: translate3d(0, -30px, 0);
  }

  70% {
    -webkit-animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    -webkit-transform: translate3d(0, -15px, 0);
    transform: translate3d(0, -15px, 0);
  }

  90% {
    -webkit-transform: translate3d(0,-4px,0);
    transform: translate3d(0,-4px,0);
  }
}

@keyframes bounce {
  from, 20%, 53%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    -webkit-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
  }

  40%, 43% {
    -webkit-animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    -webkit-transform: translate3d(0, -30px, 0);
    transform: translate3d(0, -30px, 0);
  }

  70% {
    -webkit-animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    animation-timing-function: cubic-bezier(0.755, 0.050, 0.855, 0.060);
    -webkit-transform: translate3d(0, -15px, 0);
    transform: translate3d(0, -15px, 0);
  }

  90% {
    -webkit-transform: translate3d(0,-4px,0);
    transform: translate3d(0,-4px,0);
  }
}

.bounce {
  -webkit-animation-name: bounce;
  animation-name: bounce;
  -webkit-transform-origin: center bottom;
  transform-origin: center bottom;
}

@-webkit-keyframes flash {
  from, 50%, to {
    opacity: 1;
  }

  25%, 75% {
    opacity: 0;
  }
}

@keyframes flash {
  from, 50%, to {
    opacity: 1;
  }

  25%, 75% {
    opacity: 0;
  }
}

.flash {
  -webkit-animation-name: flash;
  animation-name: flash;
}

/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */

@-webkit-keyframes pulse {
  from {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

  50% {
    -webkit-transform: scale3d(1.05, 1.05, 1.05);
    transform: scale3d(1.05, 1.05, 1.05);
  }

  to {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

@keyframes pulse {
  from {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

  50% {
    -webkit-transform: scale3d(1.05, 1.05, 1.05);
    transform: scale3d(1.05, 1.05, 1.05);
  }

  to {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

.pulse {
  -webkit-animation-name: pulse;
  animation-name: pulse;
}

@-webkit-keyframes rubberBand {
  from {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }

  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }

  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }

  65% {
    -webkit-transform: scale3d(.95, 1.05, 1);
    transform: scale3d(.95, 1.05, 1);
  }

  75% {
    -webkit-transform: scale3d(1.05, .95, 1);
    transform: scale3d(1.05, .95, 1);
  }

  to {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

@keyframes rubberBand {
  from {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }

  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }

  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }

  65% {
    -webkit-transform: scale3d(.95, 1.05, 1);
    transform: scale3d(.95, 1.05, 1);
  }

  75% {
    -webkit-transform: scale3d(1.05, .95, 1);
    transform: scale3d(1.05, .95, 1);
  }

  to {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

.rubberBand {
  -webkit-animation-name: rubberBand;
  animation-name: rubberBand;
}

@-webkit-keyframes shake {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes shake {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

.shake {
  -webkit-animation-name: shake;
  animation-name: shake;
}

@-webkit-keyframes swing {
  20% {
    -webkit-transform: rotate3d(0, 0, 1, 15deg);
    transform: rotate3d(0, 0, 1, 15deg);
  }

  40% {
    -webkit-transform: rotate3d(0, 0, 1, -10deg);
    transform: rotate3d(0, 0, 1, -10deg);
  }

  60% {
    -webkit-transform: rotate3d(0, 0, 1, 5deg);
    transform: rotate3d(0, 0, 1, 5deg);
  }

  80% {
    -webkit-transform: rotate3d(0, 0, 1, -5deg);
    transform: rotate3d(0, 0, 1, -5deg);
  }

  to {
    -webkit-transform: rotate3d(0, 0, 1, 0deg);
    transform: rotate3d(0, 0, 1, 0deg);
  }
}

@keyframes swing {
  20% {
    -webkit-transform: rotate3d(0, 0, 1, 15deg);
    transform: rotate3d(0, 0, 1, 15deg);
  }

  40% {
    -webkit-transform: rotate3d(0, 0, 1, -10deg);
    transform: rotate3d(0, 0, 1, -10deg);
  }

  60% {
    -webkit-transform: rotate3d(0, 0, 1, 5deg);
    transform: rotate3d(0, 0, 1, 5deg);
  }

  80% {
    -webkit-transform: rotate3d(0, 0, 1, -5deg);
    transform: rotate3d(0, 0, 1, -5deg);
  }

  to {
    -webkit-transform: rotate3d(0, 0, 1, 0deg);
    transform: rotate3d(0, 0, 1, 0deg);
  }
}

.swing {
  -webkit-transform-origin: top center;
  transform-origin: top center;
  -webkit-animation-name: swing;
  animation-name: swing;
}

@-webkit-keyframes tada {
  from {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

  10%, 20% {
    -webkit-transform: scale3d(.9, .9, .9) rotate3d(0, 0, 1, -3deg);
    transform: scale3d(.9, .9, .9) rotate3d(0, 0, 1, -3deg);
  }

  30%, 50%, 70%, 90% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, 3deg);
    transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, 3deg);
  }

  40%, 60%, 80% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, -3deg);
    transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, -3deg);
  }

  to {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

@keyframes tada {
  from {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

  10%, 20% {
    -webkit-transform: scale3d(.9, .9, .9) rotate3d(0, 0, 1, -3deg);
    transform: scale3d(.9, .9, .9) rotate3d(0, 0, 1, -3deg);
  }

  30%, 50%, 70%, 90% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, 3deg);
    transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, 3deg);
  }

  40%, 60%, 80% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, -3deg);
    transform: scale3d(1.1, 1.1, 1.1) rotate3d(0, 0, 1, -3deg);
  }

  to {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

.tada {
  -webkit-animation-name: tada;
  animation-name: tada;
}

/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */

@-webkit-keyframes wobble {
  from {
    -webkit-transform: none;
    transform: none;
  }

  15% {
    -webkit-transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
    transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
  }

  30% {
    -webkit-transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
    transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
  }

  45% {
    -webkit-transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
    transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
  }

  60% {
    -webkit-transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
    transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
  }

  75% {
    -webkit-transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
    transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes wobble {
  from {
    -webkit-transform: none;
    transform: none;
  }

  15% {
    -webkit-transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
    transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
  }

  30% {
    -webkit-transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
    transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
  }

  45% {
    -webkit-transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
    transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
  }

  60% {
    -webkit-transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
    transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
  }

  75% {
    -webkit-transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
    transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

.wobble {
  -webkit-animation-name: wobble;
  animation-name: wobble;
}

@-webkit-keyframes jello {
  from, 11.1%, to {
    -webkit-transform: none;
    transform: none;
  }

  22.2% {
    -webkit-transform: skewX(-12.5deg) skewY(-12.5deg);
    transform: skewX(-12.5deg) skewY(-12.5deg);
  }

  33.3% {
    -webkit-transform: skewX(6.25deg) skewY(6.25deg);
    transform: skewX(6.25deg) skewY(6.25deg);
  }

  44.4% {
    -webkit-transform: skewX(-3.125deg) skewY(-3.125deg);
    transform: skewX(-3.125deg) skewY(-3.125deg);
  }

  55.5% {
    -webkit-transform: skewX(1.5625deg) skewY(1.5625deg);
    transform: skewX(1.5625deg) skewY(1.5625deg);
  }

  66.6% {
    -webkit-transform: skewX(-0.78125deg) skewY(-0.78125deg);
    transform: skewX(-0.78125deg) skewY(-0.78125deg);
  }

  77.7% {
    -webkit-transform: skewX(0.390625deg) skewY(0.390625deg);
    transform: skewX(0.390625deg) skewY(0.390625deg);
  }

  88.8% {
    -webkit-transform: skewX(-0.1953125deg) skewY(-0.1953125deg);
    transform: skewX(-0.1953125deg) skewY(-0.1953125deg);
  }
}

@keyframes jello {
  from, 11.1%, to {
    -webkit-transform: none;
    transform: none;
  }

  22.2% {
    -webkit-transform: skewX(-12.5deg) skewY(-12.5deg);
    transform: skewX(-12.5deg) skewY(-12.5deg);
  }

  33.3% {
    -webkit-transform: skewX(6.25deg) skewY(6.25deg);
    transform: skewX(6.25deg) skewY(6.25deg);
  }

  44.4% {
    -webkit-transform: skewX(-3.125deg) skewY(-3.125deg);
    transform: skewX(-3.125deg) skewY(-3.125deg);
  }

  55.5% {
    -webkit-transform: skewX(1.5625deg) skewY(1.5625deg);
    transform: skewX(1.5625deg) skewY(1.5625deg);
  }

  66.6% {
    -webkit-transform: skewX(-0.78125deg) skewY(-0.78125deg);
    transform: skewX(-0.78125deg) skewY(-0.78125deg);
  }

  77.7% {
    -webkit-transform: skewX(0.390625deg) skewY(0.390625deg);
    transform: skewX(0.390625deg) skewY(0.390625deg);
  }

  88.8% {
    -webkit-transform: skewX(-0.1953125deg) skewY(-0.1953125deg);
    transform: skewX(-0.1953125deg) skewY(-0.1953125deg);
  }
}

.jello {
  -webkit-animation-name: jello;
  animation-name: jello;
  -webkit-transform-origin: center;
  transform-origin: center;
}

@-webkit-keyframes bounceIn {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  0% {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }

  20% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1);
    transform: scale3d(1.1, 1.1, 1.1);
  }

  40% {
    -webkit-transform: scale3d(.9, .9, .9);
    transform: scale3d(.9, .9, .9);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
    transform: scale3d(1.03, 1.03, 1.03);
  }

  80% {
    -webkit-transform: scale3d(.97, .97, .97);
    transform: scale3d(.97, .97, .97);
  }

  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

@keyframes bounceIn {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  0% {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }

  20% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1);
    transform: scale3d(1.1, 1.1, 1.1);
  }

  40% {
    -webkit-transform: scale3d(.9, .9, .9);
    transform: scale3d(.9, .9, .9);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
    transform: scale3d(1.03, 1.03, 1.03);
  }

  80% {
    -webkit-transform: scale3d(.97, .97, .97);
    transform: scale3d(.97, .97, .97);
  }

  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

.bounceIn {
  -webkit-animation-name: bounceIn;
  animation-name: bounceIn;
}

@-webkit-keyframes bounceInDown {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -3000px, 0);
    transform: translate3d(0, -3000px, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(0, 25px, 0);
    transform: translate3d(0, 25px, 0);
  }

  75% {
    -webkit-transform: translate3d(0, -10px, 0);
    transform: translate3d(0, -10px, 0);
  }

  90% {
    -webkit-transform: translate3d(0, 5px, 0);
    transform: translate3d(0, 5px, 0);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes bounceInDown {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -3000px, 0);
    transform: translate3d(0, -3000px, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(0, 25px, 0);
    transform: translate3d(0, 25px, 0);
  }

  75% {
    -webkit-transform: translate3d(0, -10px, 0);
    transform: translate3d(0, -10px, 0);
  }

  90% {
    -webkit-transform: translate3d(0, 5px, 0);
    transform: translate3d(0, 5px, 0);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

.bounceInDown {
  -webkit-animation-name: bounceInDown;
  animation-name: bounceInDown;
}

@-webkit-keyframes bounceInLeft {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  0% {
    opacity: 0;
    -webkit-transform: translate3d(-3000px, 0, 0);
    transform: translate3d(-3000px, 0, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(25px, 0, 0);
    transform: translate3d(25px, 0, 0);
  }

  75% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  90% {
    -webkit-transform: translate3d(5px, 0, 0);
    transform: translate3d(5px, 0, 0);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes bounceInLeft {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  0% {
    opacity: 0;
    -webkit-transform: translate3d(-3000px, 0, 0);
    transform: translate3d(-3000px, 0, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(25px, 0, 0);
    transform: translate3d(25px, 0, 0);
  }

  75% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  90% {
    -webkit-transform: translate3d(5px, 0, 0);
    transform: translate3d(5px, 0, 0);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

.bounceInLeft {
  -webkit-animation-name: bounceInLeft;
  animation-name: bounceInLeft;
}

@-webkit-keyframes bounceInRight {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  from {
    opacity: 0;
    -webkit-transform: translate3d(3000px, 0, 0);
    transform: translate3d(3000px, 0, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(-25px, 0, 0);
    transform: translate3d(-25px, 0, 0);
  }

  75% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }

  90% {
    -webkit-transform: translate3d(-5px, 0, 0);
    transform: translate3d(-5px, 0, 0);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes bounceInRight {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  from {
    opacity: 0;
    -webkit-transform: translate3d(3000px, 0, 0);
    transform: translate3d(3000px, 0, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(-25px, 0, 0);
    transform: translate3d(-25px, 0, 0);
  }

  75% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }

  90% {
    -webkit-transform: translate3d(-5px, 0, 0);
    transform: translate3d(-5px, 0, 0);
  }

  to {
    -webkit-transform: none;
    transform: none;
  }
}

.bounceInRight {
  -webkit-animation-name: bounceInRight;
  animation-name: bounceInRight;
}

@-webkit-keyframes bounceInUp {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  from {
    opacity: 0;
    -webkit-transform: translate3d(0, 3000px, 0);
    transform: translate3d(0, 3000px, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(0, -20px, 0);
    transform: translate3d(0, -20px, 0);
  }

  75% {
    -webkit-transform: translate3d(0, 10px, 0);
    transform: translate3d(0, 10px, 0);
  }

  90% {
    -webkit-transform: translate3d(0, -5px, 0);
    transform: translate3d(0, -5px, 0);
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

@keyframes bounceInUp {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
    animation-timing-function: cubic-bezier(0.215, 0.610, 0.355, 1.000);
  }

  from {
    opacity: 0;
    -webkit-transform: translate3d(0, 3000px, 0);
    transform: translate3d(0, 3000px, 0);
  }

  60% {
    opacity: 1;
    -webkit-transform: translate3d(0, -20px, 0);
    transform: translate3d(0, -20px, 0);
  }

  75% {
    -webkit-transform: translate3d(0, 10px, 0);
    transform: translate3d(0, 10px, 0);
  }

  90% {
    -webkit-transform: translate3d(0, -5px, 0);
    transform: translate3d(0, -5px, 0);
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

.bounceInUp {
  -webkit-animation-name: bounceInUp;
  animation-name: bounceInUp;
}

@-webkit-keyframes bounceOut {
  20% {
    -webkit-transform: scale3d(.9, .9, .9);
    transform: scale3d(.9, .9, .9);
  }

  50%, 55% {
    opacity: 1;
    -webkit-transform: scale3d(1.1, 1.1, 1.1);
    transform: scale3d(1.1, 1.1, 1.1);
  }

  to {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }
}

@keyframes bounceOut {
  20% {
    -webkit-transform: scale3d(.9, .9, .9);
    transform: scale3d(.9, .9, .9);
  }

  50%, 55% {
    opacity: 1;
    -webkit-transform: scale3d(1.1, 1.1, 1.1);
    transform: scale3d(1.1, 1.1, 1.1);
  }

  to {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }
}

.bounceOut {
  -webkit-animation-name: bounceOut;
  animation-name: bounceOut;
}

@-webkit-keyframes bounceOutDown {
  20% {
    -webkit-transform: translate3d(0, 10px, 0);
    transform: translate3d(0, 10px, 0);
  }

  40%, 45% {
    opacity: 1;
    -webkit-transform: translate3d(0, -20px, 0);
    transform: translate3d(0, -20px, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 2000px, 0);
    transform: translate3d(0, 2000px, 0);
  }
}

@keyframes bounceOutDown {
  20% {
    -webkit-transform: translate3d(0, 10px, 0);
    transform: translate3d(0, 10px, 0);
  }

  40%, 45% {
    opacity: 1;
    -webkit-transform: translate3d(0, -20px, 0);
    transform: translate3d(0, -20px, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 2000px, 0);
    transform: translate3d(0, 2000px, 0);
  }
}

.bounceOutDown {
  -webkit-animation-name: bounceOutDown;
  animation-name: bounceOutDown;
}

@-webkit-keyframes bounceOutLeft {
  20% {
    opacity: 1;
    -webkit-transform: translate3d(20px, 0, 0);
    transform: translate3d(20px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }
}

@keyframes bounceOutLeft {
  20% {
    opacity: 1;
    -webkit-transform: translate3d(20px, 0, 0);
    transform: translate3d(20px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }
}

.bounceOutLeft {
  -webkit-animation-name: bounceOutLeft;
  animation-name: bounceOutLeft;
}

@-webkit-keyframes bounceOutRight {
  20% {
    opacity: 1;
    -webkit-transform: translate3d(-20px, 0, 0);
    transform: translate3d(-20px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(2000px, 0, 0);
    transform: translate3d(2000px, 0, 0);
  }
}

@keyframes bounceOutRight {
  20% {
    opacity: 1;
    -webkit-transform: translate3d(-20px, 0, 0);
    transform: translate3d(-20px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(2000px, 0, 0);
    transform: translate3d(2000px, 0, 0);
  }
}

.bounceOutRight {
  -webkit-animation-name: bounceOutRight;
  animation-name: bounceOutRight;
}

@-webkit-keyframes bounceOutUp {
  20% {
    -webkit-transform: translate3d(0, -10px, 0);
    transform: translate3d(0, -10px, 0);
  }

  40%, 45% {
    opacity: 1;
    -webkit-transform: translate3d(0, 20px, 0);
    transform: translate3d(0, 20px, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -2000px, 0);
    transform: translate3d(0, -2000px, 0);
  }
}

@keyframes bounceOutUp {
  20% {
    -webkit-transform: translate3d(0, -10px, 0);
    transform: translate3d(0, -10px, 0);
  }

  40%, 45% {
    opacity: 1;
    -webkit-transform: translate3d(0, 20px, 0);
    transform: translate3d(0, 20px, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -2000px, 0);
    transform: translate3d(0, -2000px, 0);
  }
}

.bounceOutUp {
  -webkit-animation-name: bounceOutUp;
  animation-name: bounceOutUp;
}

@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
}

.fadeIn {
  -webkit-animation-name: fadeIn;
  animation-name: fadeIn;
}

@-webkit-keyframes fadeInDown {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);*/
    -webkit-transform: translate3d(0, -50px, 0);
    transform: translate3d(0, -50px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);*/
    -webkit-transform: translate3d(0, -50px, 0);
    transform: translate3d(0, -50px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
}

@-webkit-keyframes fadeInDownBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(0, -2000px, 0);
    transform: translate3d(0, -2000px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDownBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(0, -2000px, 0);
    transform: translate3d(0, -2000px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInDownBig {
  -webkit-animation-name: fadeInDownBig;
  animation-name: fadeInDownBig;
}

@-webkit-keyframes fadeInLeft {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);*/
    -webkit-transform: translate3d(-50px, 0, 0);
    transform: translate3d(-50px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInLeft {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);*/
    -webkit-transform: translate3d(-50px, 0, 0);
    transform: translate3d(-50px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInLeft {
  -webkit-animation-name: fadeInLeft;
  animation-name: fadeInLeft;
}

@-webkit-keyframes fadeInLeftBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInLeftBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInLeftBig {
  -webkit-animation-name: fadeInLeftBig;
  animation-name: fadeInLeftBig;
}

@-webkit-keyframes fadeInRight {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);*/
    -webkit-transform: translate3d(50px, 0, 0);
    transform: translate3d(50px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInRight {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);*/
    -webkit-transform: translate3d(50px, 0, 0);
    transform: translate3d(50px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInRight {
  -webkit-animation-name: fadeInRight;
  animation-name: fadeInRight;
}

@-webkit-keyframes fadeInRightBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(2000px, 0, 0);
    transform: translate3d(2000px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInRightBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(2000px, 0, 0);
    transform: translate3d(2000px, 0, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInRightBig {
  -webkit-animation-name: fadeInRightBig;
  animation-name: fadeInRightBig;
}

@-webkit-keyframes fadeInUp {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);*/
    -webkit-transform: translate3d(0, 50px, 0);
    transform: translate3d(0, 50px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    /*-webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);*/
    -webkit-transform: translate3d(0, 50px, 0);
    transform: translate3d(0, 50px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
}

@-webkit-keyframes fadeInUpBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(0, 2000px, 0);
    transform: translate3d(0, 2000px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInUpBig {
  from {
    opacity: 0;
    -webkit-transform: translate3d(0, 2000px, 0);
    transform: translate3d(0, 2000px, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.fadeInUpBig {
  -webkit-animation-name: fadeInUpBig;
  animation-name: fadeInUpBig;
}

@-webkit-keyframes fadeOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

@keyframes fadeOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

.fadeOut {
  -webkit-animation-name: fadeOut;
  animation-name: fadeOut;
}

@-webkit-keyframes fadeOutDown {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
  }
}

@keyframes fadeOutDown {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
  }
}

.fadeOutDown {
  -webkit-animation-name: fadeOutDown;
  animation-name: fadeOutDown;
}

@-webkit-keyframes fadeOutDownBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 2000px, 0);
    transform: translate3d(0, 2000px, 0);
  }
}

@keyframes fadeOutDownBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 2000px, 0);
    transform: translate3d(0, 2000px, 0);
  }
}

.fadeOutDownBig {
  -webkit-animation-name: fadeOutDownBig;
  animation-name: fadeOutDownBig;
}

@-webkit-keyframes fadeOutLeft {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
  }
}

@keyframes fadeOutLeft {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
  }
}

.fadeOutLeft {
  -webkit-animation-name: fadeOutLeft;
  animation-name: fadeOutLeft;
}

@-webkit-keyframes fadeOutLeftBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }
}

@keyframes fadeOutLeftBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }
}

.fadeOutLeftBig {
  -webkit-animation-name: fadeOutLeftBig;
  animation-name: fadeOutLeftBig;
}

@-webkit-keyframes fadeOutRight {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
  }
}

@keyframes fadeOutRight {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
  }
}

.fadeOutRight {
  -webkit-animation-name: fadeOutRight;
  animation-name: fadeOutRight;
}

@-webkit-keyframes fadeOutRightBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(2000px, 0, 0);
    transform: translate3d(2000px, 0, 0);
  }
}

@keyframes fadeOutRightBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(2000px, 0, 0);
    transform: translate3d(2000px, 0, 0);
  }
}

.fadeOutRightBig {
  -webkit-animation-name: fadeOutRightBig;
  animation-name: fadeOutRightBig;
}

@-webkit-keyframes fadeOutUp {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
}

@keyframes fadeOutUp {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
}

.fadeOutUp {
  -webkit-animation-name: fadeOutUp;
  animation-name: fadeOutUp;
}

@-webkit-keyframes fadeOutUpBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -2000px, 0);
    transform: translate3d(0, -2000px, 0);
  }
}

@keyframes fadeOutUpBig {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -2000px, 0);
    transform: translate3d(0, -2000px, 0);
  }
}

.fadeOutUpBig {
  -webkit-animation-name: fadeOutUpBig;
  animation-name: fadeOutUpBig;
}

@-webkit-keyframes flip {
  from {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -360deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -360deg);
    -webkit-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
  }

  40% {
    -webkit-transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -190deg);
    transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -190deg);
    -webkit-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
  }

  50% {
    -webkit-transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -170deg);
    transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -170deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  80% {
    -webkit-transform: perspective(400px) scale3d(.95, .95, .95);
    transform: perspective(400px) scale3d(.95, .95, .95);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  to {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }
}

@keyframes flip {
  from {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -360deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -360deg);
    -webkit-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
  }

  40% {
    -webkit-transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -190deg);
    transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -190deg);
    -webkit-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
  }

  50% {
    -webkit-transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -170deg);
    transform: perspective(400px) translate3d(0, 0, 150px) rotate3d(0, 1, 0, -170deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  80% {
    -webkit-transform: perspective(400px) scale3d(.95, .95, .95);
    transform: perspective(400px) scale3d(.95, .95, .95);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  to {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }
}

.animated.flip {
  -webkit-backface-visibility: visible;
  backface-visibility: visible;
  -webkit-animation-name: flip;
  animation-name: flip;
}

@-webkit-keyframes flipInX {
  from {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  60% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
  }

  to {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }
}

@keyframes flipInX {
  from {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  60% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
  }

  to {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }
}

.flipInX {
  -webkit-backface-visibility: visible !important;
  backface-visibility: visible !important;
  -webkit-animation-name: flipInX;
  animation-name: flipInX;
}

@-webkit-keyframes flipInY {
  from {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -20deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -20deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  60% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, 10deg);
    transform: perspective(400px) rotate3d(0, 1, 0, 10deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -5deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -5deg);
  }

  to {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }
}

@keyframes flipInY {
  from {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -20deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -20deg);
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
  }

  60% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, 10deg);
    transform: perspective(400px) rotate3d(0, 1, 0, 10deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -5deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -5deg);
  }

  to {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }
}

.flipInY {
  -webkit-backface-visibility: visible !important;
  backface-visibility: visible !important;
  -webkit-animation-name: flipInY;
  animation-name: flipInY;
}

@-webkit-keyframes flipOutX {
  from {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }

  30% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    opacity: 1;
  }

  to {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    opacity: 0;
  }
}

@keyframes flipOutX {
  from {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }

  30% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    opacity: 1;
  }

  to {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    opacity: 0;
  }
}

.flipOutX {
  -webkit-animation-name: flipOutX;
  animation-name: flipOutX;
  -webkit-backface-visibility: visible !important;
  backface-visibility: visible !important;
}

@-webkit-keyframes flipOutY {
  from {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }

  30% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -15deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -15deg);
    opacity: 1;
  }

  to {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    opacity: 0;
  }
}

@keyframes flipOutY {
  from {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }

  30% {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, -15deg);
    transform: perspective(400px) rotate3d(0, 1, 0, -15deg);
    opacity: 1;
  }

  to {
    -webkit-transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    opacity: 0;
  }
}

.flipOutY {
  -webkit-backface-visibility: visible !important;
  backface-visibility: visible !important;
  -webkit-animation-name: flipOutY;
  animation-name: flipOutY;
}

@-webkit-keyframes lightSpeedIn {
  from {
    -webkit-transform: translate3d(100%, 0, 0) skewX(-30deg);
    transform: translate3d(100%, 0, 0) skewX(-30deg);
    opacity: 0;
  }

  60% {
    -webkit-transform: skewX(20deg);
    transform: skewX(20deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: skewX(-5deg);
    transform: skewX(-5deg);
    opacity: 1;
  }

  to {
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

@keyframes lightSpeedIn {
  from {
    -webkit-transform: translate3d(100%, 0, 0) skewX(-30deg);
    transform: translate3d(100%, 0, 0) skewX(-30deg);
    opacity: 0;
  }

  60% {
    -webkit-transform: skewX(20deg);
    transform: skewX(20deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: skewX(-5deg);
    transform: skewX(-5deg);
    opacity: 1;
  }

  to {
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

.lightSpeedIn {
  -webkit-animation-name: lightSpeedIn;
  animation-name: lightSpeedIn;
  -webkit-animation-timing-function: ease-out;
  animation-timing-function: ease-out;
}

@-webkit-keyframes lightSpeedOut {
  from {
    opacity: 1;
  }

  to {
    -webkit-transform: translate3d(100%, 0, 0) skewX(30deg);
    transform: translate3d(100%, 0, 0) skewX(30deg);
    opacity: 0;
  }
}

@keyframes lightSpeedOut {
  from {
    opacity: 1;
  }

  to {
    -webkit-transform: translate3d(100%, 0, 0) skewX(30deg);
    transform: translate3d(100%, 0, 0) skewX(30deg);
    opacity: 0;
  }
}

.lightSpeedOut {
  -webkit-animation-name: lightSpeedOut;
  animation-name: lightSpeedOut;
  -webkit-animation-timing-function: ease-in;
  animation-timing-function: ease-in;
}

@-webkit-keyframes rotateIn {
  from {
    -webkit-transform-origin: center;
    transform-origin: center;
    -webkit-transform: rotate3d(0, 0, 1, -200deg);
    transform: rotate3d(0, 0, 1, -200deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: center;
    transform-origin: center;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

@keyframes rotateIn {
  from {
    -webkit-transform-origin: center;
    transform-origin: center;
    -webkit-transform: rotate3d(0, 0, 1, -200deg);
    transform: rotate3d(0, 0, 1, -200deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: center;
    transform-origin: center;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

.rotateIn {
  -webkit-animation-name: rotateIn;
  animation-name: rotateIn;
}

@-webkit-keyframes rotateInDownLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, -45deg);
    transform: rotate3d(0, 0, 1, -45deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

@keyframes rotateInDownLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, -45deg);
    transform: rotate3d(0, 0, 1, -45deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

.rotateInDownLeft {
  -webkit-animation-name: rotateInDownLeft;
  animation-name: rotateInDownLeft;
}

@-webkit-keyframes rotateInDownRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, 45deg);
    transform: rotate3d(0, 0, 1, 45deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

@keyframes rotateInDownRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, 45deg);
    transform: rotate3d(0, 0, 1, 45deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

.rotateInDownRight {
  -webkit-animation-name: rotateInDownRight;
  animation-name: rotateInDownRight;
}

@-webkit-keyframes rotateInUpLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, 45deg);
    transform: rotate3d(0, 0, 1, 45deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

@keyframes rotateInUpLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, 45deg);
    transform: rotate3d(0, 0, 1, 45deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

.rotateInUpLeft {
  -webkit-animation-name: rotateInUpLeft;
  animation-name: rotateInUpLeft;
}

@-webkit-keyframes rotateInUpRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, -90deg);
    transform: rotate3d(0, 0, 1, -90deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

@keyframes rotateInUpRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, -90deg);
    transform: rotate3d(0, 0, 1, -90deg);
    opacity: 0;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: none;
    transform: none;
    opacity: 1;
  }
}

.rotateInUpRight {
  -webkit-animation-name: rotateInUpRight;
  animation-name: rotateInUpRight;
}

@-webkit-keyframes rotateOut {
  from {
    -webkit-transform-origin: center;
    transform-origin: center;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: center;
    transform-origin: center;
    -webkit-transform: rotate3d(0, 0, 1, 200deg);
    transform: rotate3d(0, 0, 1, 200deg);
    opacity: 0;
  }
}

@keyframes rotateOut {
  from {
    -webkit-transform-origin: center;
    transform-origin: center;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: center;
    transform-origin: center;
    -webkit-transform: rotate3d(0, 0, 1, 200deg);
    transform: rotate3d(0, 0, 1, 200deg);
    opacity: 0;
  }
}

.rotateOut {
  -webkit-animation-name: rotateOut;
  animation-name: rotateOut;
}

@-webkit-keyframes rotateOutDownLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, 45deg);
    transform: rotate3d(0, 0, 1, 45deg);
    opacity: 0;
  }
}

@keyframes rotateOutDownLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, 45deg);
    transform: rotate3d(0, 0, 1, 45deg);
    opacity: 0;
  }
}

.rotateOutDownLeft {
  -webkit-animation-name: rotateOutDownLeft;
  animation-name: rotateOutDownLeft;
}

@-webkit-keyframes rotateOutDownRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, -45deg);
    transform: rotate3d(0, 0, 1, -45deg);
    opacity: 0;
  }
}

@keyframes rotateOutDownRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, -45deg);
    transform: rotate3d(0, 0, 1, -45deg);
    opacity: 0;
  }
}

.rotateOutDownRight {
  -webkit-animation-name: rotateOutDownRight;
  animation-name: rotateOutDownRight;
}

@-webkit-keyframes rotateOutUpLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, -45deg);
    transform: rotate3d(0, 0, 1, -45deg);
    opacity: 0;
  }
}

@keyframes rotateOutUpLeft {
  from {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: left bottom;
    transform-origin: left bottom;
    -webkit-transform: rotate3d(0, 0, 1, -45deg);
    transform: rotate3d(0, 0, 1, -45deg);
    opacity: 0;
  }
}

.rotateOutUpLeft {
  -webkit-animation-name: rotateOutUpLeft;
  animation-name: rotateOutUpLeft;
}

@-webkit-keyframes rotateOutUpRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, 90deg);
    transform: rotate3d(0, 0, 1, 90deg);
    opacity: 0;
  }
}

@keyframes rotateOutUpRight {
  from {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    opacity: 1;
  }

  to {
    -webkit-transform-origin: right bottom;
    transform-origin: right bottom;
    -webkit-transform: rotate3d(0, 0, 1, 90deg);
    transform: rotate3d(0, 0, 1, 90deg);
    opacity: 0;
  }
}

.rotateOutUpRight {
  -webkit-animation-name: rotateOutUpRight;
  animation-name: rotateOutUpRight;
}

@-webkit-keyframes hinge {
  0% {
    -webkit-transform-origin: top left;
    transform-origin: top left;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
  }

  20%, 60% {
    -webkit-transform: rotate3d(0, 0, 1, 80deg);
    transform: rotate3d(0, 0, 1, 80deg);
    -webkit-transform-origin: top left;
    transform-origin: top left;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
  }

  40%, 80% {
    -webkit-transform: rotate3d(0, 0, 1, 60deg);
    transform: rotate3d(0, 0, 1, 60deg);
    -webkit-transform-origin: top left;
    transform-origin: top left;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
    opacity: 1;
  }

  to {
    -webkit-transform: translate3d(0, 700px, 0);
    transform: translate3d(0, 700px, 0);
    opacity: 0;
  }
}

@keyframes hinge {
  0% {
    -webkit-transform-origin: top left;
    transform-origin: top left;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
  }

  20%, 60% {
    -webkit-transform: rotate3d(0, 0, 1, 80deg);
    transform: rotate3d(0, 0, 1, 80deg);
    -webkit-transform-origin: top left;
    transform-origin: top left;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
  }

  40%, 80% {
    -webkit-transform: rotate3d(0, 0, 1, 60deg);
    transform: rotate3d(0, 0, 1, 60deg);
    -webkit-transform-origin: top left;
    transform-origin: top left;
    -webkit-animation-timing-function: ease-in-out;
    animation-timing-function: ease-in-out;
    opacity: 1;
  }

  to {
    -webkit-transform: translate3d(0, 700px, 0);
    transform: translate3d(0, 700px, 0);
    opacity: 0;
  }
}

.hinge {
  -webkit-animation-name: hinge;
  animation-name: hinge;
}

/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */

@-webkit-keyframes rollIn {
  from {
    opacity: 0;
    -webkit-transform: translate3d(-100%, 0, 0) rotate3d(0, 0, 1, -120deg);
    transform: translate3d(-100%, 0, 0) rotate3d(0, 0, 1, -120deg);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes rollIn {
  from {
    opacity: 0;
    -webkit-transform: translate3d(-100%, 0, 0) rotate3d(0, 0, 1, -120deg);
    transform: translate3d(-100%, 0, 0) rotate3d(0, 0, 1, -120deg);
  }

  to {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

.rollIn {
  -webkit-animation-name: rollIn;
  animation-name: rollIn;
}

/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */

@-webkit-keyframes rollOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(100%, 0, 0) rotate3d(0, 0, 1, 120deg);
    transform: translate3d(100%, 0, 0) rotate3d(0, 0, 1, 120deg);
  }
}

@keyframes rollOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
    -webkit-transform: translate3d(100%, 0, 0) rotate3d(0, 0, 1, 120deg);
    transform: translate3d(100%, 0, 0) rotate3d(0, 0, 1, 120deg);
  }
}

.rollOut {
  -webkit-animation-name: rollOut;
  animation-name: rollOut;
}

@-webkit-keyframes zoomIn {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }

  50% {
    opacity: 1;
  }
}

@keyframes zoomIn {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }

  50% {
    opacity: 1;
  }
}

.zoomIn {
  -webkit-animation-name: zoomIn;
  animation-name: zoomIn;
}

@-webkit-keyframes zoomInDown {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, -1000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, -1000px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

@keyframes zoomInDown {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, -1000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, -1000px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

.zoomInDown {
  -webkit-animation-name: zoomInDown;
  animation-name: zoomInDown;
}

@-webkit-keyframes zoomInLeft {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(-1000px, 0, 0);
    transform: scale3d(.1, .1, .1) translate3d(-1000px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(10px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(10px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

@keyframes zoomInLeft {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(-1000px, 0, 0);
    transform: scale3d(.1, .1, .1) translate3d(-1000px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(10px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(10px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

.zoomInLeft {
  -webkit-animation-name: zoomInLeft;
  animation-name: zoomInLeft;
}

@-webkit-keyframes zoomInRight {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(1000px, 0, 0);
    transform: scale3d(.1, .1, .1) translate3d(1000px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(-10px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(-10px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

@keyframes zoomInRight {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(1000px, 0, 0);
    transform: scale3d(.1, .1, .1) translate3d(1000px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(-10px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(-10px, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

.zoomInRight {
  -webkit-animation-name: zoomInRight;
  animation-name: zoomInRight;
}

@-webkit-keyframes zoomInUp {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, 1000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, 1000px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

@keyframes zoomInUp {
  from {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, 1000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, 1000px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  60% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

.zoomInUp {
  -webkit-animation-name: zoomInUp;
  animation-name: zoomInUp;
}

@-webkit-keyframes zoomOut {
  from {
    opacity: 1;
  }

  50% {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }

  to {
    opacity: 0;
  }
}

@keyframes zoomOut {
  from {
    opacity: 1;
  }

  50% {
    opacity: 0;
    -webkit-transform: scale3d(.3, .3, .3);
    transform: scale3d(.3, .3, .3);
  }

  to {
    opacity: 0;
  }
}

.zoomOut {
  -webkit-animation-name: zoomOut;
  animation-name: zoomOut;
}

@-webkit-keyframes zoomOutDown {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  to {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, 2000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, 2000px, 0);
    -webkit-transform-origin: center bottom;
    transform-origin: center bottom;
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

@keyframes zoomOutDown {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, -60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  to {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, 2000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, 2000px, 0);
    -webkit-transform-origin: center bottom;
    transform-origin: center bottom;
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

.zoomOutDown {
  -webkit-animation-name: zoomOutDown;
  animation-name: zoomOutDown;
}

@-webkit-keyframes zoomOutLeft {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(42px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(42px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: scale(.1) translate3d(-2000px, 0, 0);
    transform: scale(.1) translate3d(-2000px, 0, 0);
    -webkit-transform-origin: left center;
    transform-origin: left center;
  }
}

@keyframes zoomOutLeft {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(42px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(42px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: scale(.1) translate3d(-2000px, 0, 0);
    transform: scale(.1) translate3d(-2000px, 0, 0);
    -webkit-transform-origin: left center;
    transform-origin: left center;
  }
}

.zoomOutLeft {
  -webkit-animation-name: zoomOutLeft;
  animation-name: zoomOutLeft;
}

@-webkit-keyframes zoomOutRight {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(-42px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(-42px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: scale(.1) translate3d(2000px, 0, 0);
    transform: scale(.1) translate3d(2000px, 0, 0);
    -webkit-transform-origin: right center;
    transform-origin: right center;
  }
}

@keyframes zoomOutRight {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(-42px, 0, 0);
    transform: scale3d(.475, .475, .475) translate3d(-42px, 0, 0);
  }

  to {
    opacity: 0;
    -webkit-transform: scale(.1) translate3d(2000px, 0, 0);
    transform: scale(.1) translate3d(2000px, 0, 0);
    -webkit-transform-origin: right center;
    transform-origin: right center;
  }
}

.zoomOutRight {
  -webkit-animation-name: zoomOutRight;
  animation-name: zoomOutRight;
}

@-webkit-keyframes zoomOutUp {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  to {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, -2000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, -2000px, 0);
    -webkit-transform-origin: center bottom;
    transform-origin: center bottom;
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

@keyframes zoomOutUp {
  40% {
    opacity: 1;
    -webkit-transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    transform: scale3d(.475, .475, .475) translate3d(0, 60px, 0);
    -webkit-animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
    animation-timing-function: cubic-bezier(0.550, 0.055, 0.675, 0.190);
  }

  to {
    opacity: 0;
    -webkit-transform: scale3d(.1, .1, .1) translate3d(0, -2000px, 0);
    transform: scale3d(.1, .1, .1) translate3d(0, -2000px, 0);
    -webkit-transform-origin: center bottom;
    transform-origin: center bottom;
    -webkit-animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
    animation-timing-function: cubic-bezier(0.175, 0.885, 0.320, 1);
  }
}

.zoomOutUp {
  -webkit-animation-name: zoomOutUp;
  animation-name: zoomOutUp;
}

@-webkit-keyframes slideInDown {
  from {
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

@keyframes slideInDown {
  from {
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

.slideInDown {
  -webkit-animation-name: slideInDown;
  animation-name: slideInDown;
}

@-webkit-keyframes slideInLeft {
  from {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

@keyframes slideInLeft {
  from {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

.slideInLeft {
  -webkit-animation-name: slideInLeft;
  animation-name: slideInLeft;
}

@-webkit-keyframes slideInRight {
  from {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

@keyframes slideInRight {
  from {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

.slideInRight {
  -webkit-animation-name: slideInRight;
  animation-name: slideInRight;
}

@-webkit-keyframes slideInUp {
  from {
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

@keyframes slideInUp {
  from {
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
    visibility: visible;
  }

  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

.slideInUp {
  -webkit-animation-name: slideInUp;
  animation-name: slideInUp;
}

@-webkit-keyframes slideOutDown {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
  }
}

@keyframes slideOutDown {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
  }
}

.slideOutDown {
  -webkit-animation-name: slideOutDown;
  animation-name: slideOutDown;
}

@-webkit-keyframes slideOutLeft {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
  }
}

@keyframes slideOutLeft {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
  }
}

.slideOutLeft {
  -webkit-animation-name: slideOutLeft;
  animation-name: slideOutLeft;
}

@-webkit-keyframes slideOutRight {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
  }
}

@keyframes slideOutRight {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
  }
}

.slideOutRight {
  -webkit-animation-name: slideOutRight;
  animation-name: slideOutRight;
}

@-webkit-keyframes slideOutUp {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
}

@keyframes slideOutUp {
  from {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  to {
    visibility: hidden;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
}

.slideOutUp {
  -webkit-animation-name: slideOutUp;
  animation-name: slideOutUp;
}
@charset "UTF-8";
/*!
 * Bootstrap v3.3.5 (http://getbootstrap.com)
 * Copyright 2011-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}

body {
  margin: 0;
}

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}

audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}

audio:not([controls]) {
  display: none;
  height: 0;
}

[hidden],
template {
  display: none;
}

a {
  background-color: transparent;
}

a:active,
a:hover {
  outline: 0;
}

abbr[title] {
  border-bottom: 1px dotted;
}

b,
strong {
  font-weight: bold;
}

dfn {
  font-style: italic;
}

h1 {
  font-size: 2em;
  margin: 0.67em 0;
}

mark {
  background: #ff0;
  color: #000;
}

small {
  font-size: 80%;
}

sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}

sup {
  top: -0.5em;
}

sub {
  bottom: -0.25em;
}

img {
  border: 0;
}

svg:not(:root) {
  overflow: hidden;
}

figure {
  margin: 1em 40px;
}

hr {
  box-sizing: content-box;
  height: 0;
}

pre {
  overflow: auto;
}

code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}

button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}

button {
  overflow: visible;
}

button,
select {
  text-transform: none;
}

button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}

button[disabled],
html input[disabled] {
  cursor: default;
}

button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}

input {
  line-height: normal;
}

input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}

input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}

input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box;
}

input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}

fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}

legend {
  border: 0;
  padding: 0;
}

textarea {
  overflow: auto;
}

optgroup {
  font-weight: bold;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

td,
th {
  padding: 0;
}

/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    background: transparent !important;
    color: #000 !important;
    box-shadow: none !important;
    text-shadow: none !important;
  }

  a,
  a:visited {
    text-decoration: underline;
  }

  a[href]:after {
    content: " (" attr(href) ")";
  }

  abbr[title]:after {
    content: " (" attr(title) ")";
  }

  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }

  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }

  thead {
    display: table-header-group;
  }

  tr,
  img {
    page-break-inside: avoid;
  }

  img {
    max-width: 100% !important;
  }

  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }

  h2,
  h3 {
    page-break-after: avoid;
  }

  .navbar {
    display: none;
  }

  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }

  .label {
    border: 1px solid #000;
  }

  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }

  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';
  src: url("../fonts/bootstrap/glyphicons-halflings-regular.eot");
  src: url("../fonts/bootstrap/glyphicons-halflings-regular.eot?#iefix") format("embedded-opentype"), url("../fonts/bootstrap/glyphicons-halflings-regular.woff2") format("woff2"), url("../fonts/bootstrap/glyphicons-halflings-regular.woff") format("woff"), url("../fonts/bootstrap/glyphicons-halflings-regular.ttf") format("truetype"), url("../fonts/bootstrap/glyphicons-halflings-regular.svg#glyphicons_halflingsregular") format("svg");
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.glyphicon-asterisk:before {
  content: "\2a";
}

.glyphicon-plus:before {
  content: "\2b";
}

.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}

.glyphicon-minus:before {
  content: "\2212";
}

.glyphicon-cloud:before {
  content: "\2601";
}

.glyphicon-envelope:before {
  content: "\2709";
}

.glyphicon-pencil:before {
  content: "\270f";
}

.glyphicon-glass:before {
  content: "\e001";
}

.glyphicon-music:before {
  content: "\e002";
}

.glyphicon-search:before {
  content: "\e003";
}

.glyphicon-heart:before {
  content: "\e005";
}

.glyphicon-star:before {
  content: "\e006";
}

.glyphicon-star-empty:before {
  content: "\e007";
}

.glyphicon-user:before {
  content: "\e008";
}

.glyphicon-film:before {
  content: "\e009";
}

.glyphicon-th-large:before {
  content: "\e010";
}

.glyphicon-th:before {
  content: "\e011";
}

.glyphicon-th-list:before {
  content: "\e012";
}

.glyphicon-ok:before {
  content: "\e013";
}

.glyphicon-remove:before {
  content: "\e014";
}

.glyphicon-zoom-in:before {
  content: "\e015";
}

.glyphicon-zoom-out:before {
  content: "\e016";
}

.glyphicon-off:before {
  content: "\e017";
}

.glyphicon-signal:before {
  content: "\e018";
}

.glyphicon-cog:before {
  content: "\e019";
}

.glyphicon-trash:before {
  content: "\e020";
}

.glyphicon-home:before {
  content: "\e021";
}

.glyphicon-file:before {
  content: "\e022";
}

.glyphicon-time:before {
  content: "\e023";
}

.glyphicon-road:before {
  content: "\e024";
}

.glyphicon-download-alt:before {
  content: "\e025";
}

.glyphicon-download:before {
  content: "\e026";
}

.glyphicon-upload:before {
  content: "\e027";
}

.glyphicon-inbox:before {
  content: "\e028";
}

.glyphicon-play-circle:before {
  content: "\e029";
}

.glyphicon-repeat:before {
  content: "\e030";
}

.glyphicon-refresh:before {
  content: "\e031";
}

.glyphicon-list-alt:before {
  content: "\e032";
}

.glyphicon-lock:before {
  content: "\e033";
}

.glyphicon-flag:before {
  content: "\e034";
}

.glyphicon-headphones:before {
  content: "\e035";
}

.glyphicon-volume-off:before {
  content: "\e036";
}

.glyphicon-volume-down:before {
  content: "\e037";
}

.glyphicon-volume-up:before {
  content: "\e038";
}

.glyphicon-qrcode:before {
  content: "\e039";
}

.glyphicon-barcode:before {
  content: "\e040";
}

.glyphicon-tag:before {
  content: "\e041";
}

.glyphicon-tags:before {
  content: "\e042";
}

.glyphicon-book:before {
  content: "\e043";
}

.glyphicon-bookmark:before {
  content: "\e044";
}

.glyphicon-print:before {
  content: "\e045";
}

.glyphicon-camera:before {
  content: "\e046";
}

.glyphicon-font:before {
  content: "\e047";
}

.glyphicon-bold:before {
  content: "\e048";
}

.glyphicon-italic:before {
  content: "\e049";
}

.glyphicon-text-height:before {
  content: "\e050";
}

.glyphicon-text-width:before {
  content: "\e051";
}

.glyphicon-align-left:before {
  content: "\e052";
}

.glyphicon-align-center:before {
  content: "\e053";
}

.glyphicon-align-right:before {
  content: "\e054";
}

.glyphicon-align-justify:before {
  content: "\e055";
}

.glyphicon-list:before {
  content: "\e056";
}

.glyphicon-indent-left:before {
  content: "\e057";
}

.glyphicon-indent-right:before {
  content: "\e058";
}

.glyphicon-facetime-video:before {
  content: "\e059";
}

.glyphicon-picture:before {
  content: "\e060";
}

.glyphicon-map-marker:before {
  content: "\e062";
}

.glyphicon-adjust:before {
  content: "\e063";
}

.glyphicon-tint:before {
  content: "\e064";
}

.glyphicon-edit:before {
  content: "\e065";
}

.glyphicon-share:before {
  content: "\e066";
}

.glyphicon-check:before {
  content: "\e067";
}

.glyphicon-move:before {
  content: "\e068";
}

.glyphicon-step-backward:before {
  content: "\e069";
}

.glyphicon-fast-backward:before {
  content: "\e070";
}

.glyphicon-backward:before {
  content: "\e071";
}

.glyphicon-play:before {
  content: "\e072";
}

.glyphicon-pause:before {
  content: "\e073";
}

.glyphicon-stop:before {
  content: "\e074";
}

.glyphicon-forward:before {
  content: "\e075";
}

.glyphicon-fast-forward:before {
  content: "\e076";
}

.glyphicon-step-forward:before {
  content: "\e077";
}

.glyphicon-eject:before {
  content: "\e078";
}

.glyphicon-chevron-left:before {
  content: "\e079";
}

.glyphicon-chevron-right:before {
  content: "\e080";
}

.glyphicon-plus-sign:before {
  content: "\e081";
}

.glyphicon-minus-sign:before {
  content: "\e082";
}

.glyphicon-remove-sign:before {
  content: "\e083";
}

.glyphicon-ok-sign:before {
  content: "\e084";
}

.glyphicon-question-sign:before {
  content: "\e085";
}

.glyphicon-info-sign:before {
  content: "\e086";
}

.glyphicon-screenshot:before {
  content: "\e087";
}

.glyphicon-remove-circle:before {
  content: "\e088";
}

.glyphicon-ok-circle:before {
  content: "\e089";
}

.glyphicon-ban-circle:before {
  content: "\e090";
}

.glyphicon-arrow-left:before {
  content: "\e091";
}

.glyphicon-arrow-right:before {
  content: "\e092";
}

.glyphicon-arrow-up:before {
  content: "\e093";
}

.glyphicon-arrow-down:before {
  content: "\e094";
}

.glyphicon-share-alt:before {
  content: "\e095";
}

.glyphicon-resize-full:before {
  content: "\e096";
}

.glyphicon-resize-small:before {
  content: "\e097";
}

.glyphicon-exclamation-sign:before {
  content: "\e101";
}

.glyphicon-gift:before {
  content: "\e102";
}

.glyphicon-leaf:before {
  content: "\e103";
}

.glyphicon-fire:before {
  content: "\e104";
}

.glyphicon-eye-open:before {
  content: "\e105";
}

.glyphicon-eye-close:before {
  content: "\e106";
}

.glyphicon-warning-sign:before {
  content: "\e107";
}

.glyphicon-plane:before {
  content: "\e108";
}

.glyphicon-calendar:before {
  content: "\e109";
}

.glyphicon-random:before {
  content: "\e110";
}

.glyphicon-comment:before {
  content: "\e111";
}

.glyphicon-magnet:before {
  content: "\e112";
}

.glyphicon-chevron-up:before {
  content: "\e113";
}

.glyphicon-chevron-down:before {
  content: "\e114";
}

.glyphicon-retweet:before {
  content: "\e115";
}

.glyphicon-shopping-cart:before {
  content: "\e116";
}

.glyphicon-folder-close:before {
  content: "\e117";
}

.glyphicon-folder-open:before {
  content: "\e118";
}

.glyphicon-resize-vertical:before {
  content: "\e119";
}

.glyphicon-resize-horizontal:before {
  content: "\e120";
}

.glyphicon-hdd:before {
  content: "\e121";
}

.glyphicon-bullhorn:before {
  content: "\e122";
}

.glyphicon-bell:before {
  content: "\e123";
}

.glyphicon-certificate:before {
  content: "\e124";
}

.glyphicon-thumbs-up:before {
  content: "\e125";
}

.glyphicon-thumbs-down:before {
  content: "\e126";
}

.glyphicon-hand-right:before {
  content: "\e127";
}

.glyphicon-hand-left:before {
  content: "\e128";
}

.glyphicon-hand-up:before {
  content: "\e129";
}

.glyphicon-hand-down:before {
  content: "\e130";
}

.glyphicon-circle-arrow-right:before {
  content: "\e131";
}

.glyphicon-circle-arrow-left:before {
  content: "\e132";
}

.glyphicon-circle-arrow-up:before {
  content: "\e133";
}

.glyphicon-circle-arrow-down:before {
  content: "\e134";
}

.glyphicon-globe:before {
  content: "\e135";
}

.glyphicon-wrench:before {
  content: "\e136";
}

.glyphicon-tasks:before {
  content: "\e137";
}

.glyphicon-filter:before {
  content: "\e138";
}

.glyphicon-briefcase:before {
  content: "\e139";
}

.glyphicon-fullscreen:before {
  content: "\e140";
}

.glyphicon-dashboard:before {
  content: "\e141";
}

.glyphicon-paperclip:before {
  content: "\e142";
}

.glyphicon-heart-empty:before {
  content: "\e143";
}

.glyphicon-link:before {
  content: "\e144";
}

.glyphicon-phone:before {
  content: "\e145";
}

.glyphicon-pushpin:before {
  content: "\e146";
}

.glyphicon-usd:before {
  content: "\e148";
}

.glyphicon-gbp:before {
  content: "\e149";
}

.glyphicon-sort:before {
  content: "\e150";
}

.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}

.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}

.glyphicon-sort-by-order:before {
  content: "\e153";
}

.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}

.glyphicon-sort-by-attributes:before {
  content: "\e155";
}

.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}

.glyphicon-unchecked:before {
  content: "\e157";
}

.glyphicon-expand:before {
  content: "\e158";
}

.glyphicon-collapse-down:before {
  content: "\e159";
}

.glyphicon-collapse-up:before {
  content: "\e160";
}

.glyphicon-log-in:before {
  content: "\e161";
}

.glyphicon-flash:before {
  content: "\e162";
}

.glyphicon-log-out:before {
  content: "\e163";
}

.glyphicon-new-window:before {
  content: "\e164";
}

.glyphicon-record:before {
  content: "\e165";
}

.glyphicon-save:before {
  content: "\e166";
}

.glyphicon-open:before {
  content: "\e167";
}

.glyphicon-saved:before {
  content: "\e168";
}

.glyphicon-import:before {
  content: "\e169";
}

.glyphicon-export:before {
  content: "\e170";
}

.glyphicon-send:before {
  content: "\e171";
}

.glyphicon-floppy-disk:before {
  content: "\e172";
}

.glyphicon-floppy-saved:before {
  content: "\e173";
}

.glyphicon-floppy-remove:before {
  content: "\e174";
}

.glyphicon-floppy-save:before {
  content: "\e175";
}

.glyphicon-floppy-open:before {
  content: "\e176";
}

.glyphicon-credit-card:before {
  content: "\e177";
}

.glyphicon-transfer:before {
  content: "\e178";
}

.glyphicon-cutlery:before {
  content: "\e179";
}

.glyphicon-header:before {
  content: "\e180";
}

.glyphicon-compressed:before {
  content: "\e181";
}

.glyphicon-earphone:before {
  content: "\e182";
}

.glyphicon-phone-alt:before {
  content: "\e183";
}

.glyphicon-tower:before {
  content: "\e184";
}

.glyphicon-stats:before {
  content: "\e185";
}

.glyphicon-sd-video:before {
  content: "\e186";
}

.glyphicon-hd-video:before {
  content: "\e187";
}

.glyphicon-subtitles:before {
  content: "\e188";
}

.glyphicon-sound-stereo:before {
  content: "\e189";
}

.glyphicon-sound-dolby:before {
  content: "\e190";
}

.glyphicon-sound-5-1:before {
  content: "\e191";
}

.glyphicon-sound-6-1:before {
  content: "\e192";
}

.glyphicon-sound-7-1:before {
  content: "\e193";
}

.glyphicon-copyright-mark:before {
  content: "\e194";
}

.glyphicon-registration-mark:before {
  content: "\e195";
}

.glyphicon-cloud-download:before {
  content: "\e197";
}

.glyphicon-cloud-upload:before {
  content: "\e198";
}

.glyphicon-tree-conifer:before {
  content: "\e199";
}

.glyphicon-tree-deciduous:before {
  content: "\e200";
}

.glyphicon-cd:before {
  content: "\e201";
}

.glyphicon-save-file:before {
  content: "\e202";
}

.glyphicon-open-file:before {
  content: "\e203";
}

.glyphicon-level-up:before {
  content: "\e204";
}

.glyphicon-copy:before {
  content: "\e205";
}

.glyphicon-paste:before {
  content: "\e206";
}

.glyphicon-alert:before {
  content: "\e209";
}

.glyphicon-equalizer:before {
  content: "\e210";
}

.glyphicon-king:before {
  content: "\e211";
}

.glyphicon-queen:before {
  content: "\e212";
}

.glyphicon-pawn:before {
  content: "\e213";
}

.glyphicon-bishop:before {
  content: "\e214";
}

.glyphicon-knight:before {
  content: "\e215";
}

.glyphicon-baby-formula:before {
  content: "\e216";
}

.glyphicon-tent:before {
  content: "\26fa";
}

.glyphicon-blackboard:before {
  content: "\e218";
}

.glyphicon-bed:before {
  content: "\e219";
}

.glyphicon-apple:before {
  content: "\f8ff";
}

.glyphicon-erase:before {
  content: "\e221";
}

.glyphicon-hourglass:before {
  content: "\231b";
}

.glyphicon-lamp:before {
  content: "\e223";
}

.glyphicon-duplicate:before {
  content: "\e224";
}

.glyphicon-piggy-bank:before {
  content: "\e225";
}

.glyphicon-scissors:before {
  content: "\e226";
}

.glyphicon-bitcoin:before {
  content: "\e227";
}

.glyphicon-btc:before {
  content: "\e227";
}

.glyphicon-xbt:before {
  content: "\e227";
}

.glyphicon-yen:before {
  content: "\00a5";
}

.glyphicon-jpy:before {
  content: "\00a5";
}

.glyphicon-ruble:before {
  content: "\20bd";
}

.glyphicon-rub:before {
  content: "\20bd";
}

.glyphicon-scale:before {
  content: "\e230";
}

.glyphicon-ice-lolly:before {
  content: "\e231";
}

.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}

.glyphicon-education:before {
  content: "\e233";
}

.glyphicon-option-horizontal:before {
  content: "\e234";
}

.glyphicon-option-vertical:before {
  content: "\e235";
}

.glyphicon-menu-hamburger:before {
  content: "\e236";
}

.glyphicon-modal-window:before {
  content: "\e237";
}

.glyphicon-oil:before {
  content: "\e238";
}

.glyphicon-grain:before {
  content: "\e239";
}

.glyphicon-sunglasses:before {
  content: "\e240";
}

.glyphicon-text-size:before {
  content: "\e241";
}

.glyphicon-text-color:before {
  content: "\e242";
}

.glyphicon-text-background:before {
  content: "\e243";
}

.glyphicon-object-align-top:before {
  content: "\e244";
}

.glyphicon-object-align-bottom:before {
  content: "\e245";
}

.glyphicon-object-align-horizontal:before {
  content: "\e246";
}

.glyphicon-object-align-left:before {
  content: "\e247";
}

.glyphicon-object-align-vertical:before {
  content: "\e248";
}

.glyphicon-object-align-right:before {
  content: "\e249";
}

.glyphicon-triangle-right:before {
  content: "\e250";
}

.glyphicon-triangle-left:before {
  content: "\e251";
}

.glyphicon-triangle-bottom:before {
  content: "\e252";
}

.glyphicon-triangle-top:before {
  content: "\e253";
}

.glyphicon-console:before {
  content: "\e254";
}

.glyphicon-superscript:before {
  content: "\e255";
}

.glyphicon-subscript:before {
  content: "\e256";
}

.glyphicon-menu-left:before {
  content: "\e257";
}

.glyphicon-menu-right:before {
  content: "\e258";
}

.glyphicon-menu-down:before {
  content: "\e259";
}

.glyphicon-menu-up:before {
  content: "\e260";
}

* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

html {
  font-size: 10px;
  -webkit-tap-highlight-color: transparent;
}

body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 1.42857;
  color: #333333;
  background-color: #fff;
}

input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}

a {
  color: #337ab7;
  text-decoration: none;
}
a:hover, a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: thin dotted;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}

figure {
  margin: 0;
}

img {
  vertical-align: middle;
}

.img-responsive {
  display: block;
  max-width: 100%;
  height: auto;
}

.img-rounded {
  border-radius: 6px;
}

.img-thumbnail {
  padding: 4px;
  line-height: 1.42857;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto;
}

.img-circle {
  border-radius: 50%;
}

hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #eeeeee;
}

.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}

.sr-only-focusable:active, .sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}

[role="button"] {
  cursor: pointer;
}

h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h1 .small, h2 small,
h2 .small, h3 small,
h3 .small, h4 small,
h4 .small, h5 small,
h5 .small, h6 small,
h6 .small,
.h1 small,
.h1 .small, .h2 small,
.h2 .small, .h3 small,
.h3 .small, .h4 small,
.h4 .small, .h5 small,
.h5 .small, .h6 small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777777;
}

h1, .h1,
h2, .h2,
h3, .h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
h1 small,
h1 .small, .h1 small,
.h1 .small,
h2 small,
h2 .small, .h2 small,
.h2 .small,
h3 small,
h3 .small, .h3 small,
.h3 .small {
  font-size: 65%;
}

h4, .h4,
h5, .h5,
h6, .h6 {
  margin-top: 10px;
  margin-bottom: 10px;
}
h4 small,
h4 .small, .h4 small,
.h4 .small,
h5 small,
h5 .small, .h5 small,
.h5 .small,
h6 small,
h6 .small, .h6 small,
.h6 .small {
  font-size: 75%;
}

h1, .h1 {
  font-size: 36px;
}

h2, .h2 {
  font-size: 30px;
}

h3, .h3 {
  font-size: 24px;
}

h4, .h4 {
  font-size: 18px;
}

h5, .h5 {
  font-size: 14px;
}

h6, .h6 {
  font-size: 12px;
}

p {
  margin: 0 0 10px;
}

.lead {
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 21px;
  }
}

small,
.small {
  font-size: 85%;
}

mark,
.mark {
  background-color: #fcf8e3;
  padding: .2em;
}

.text-left {
  text-align: left;
}

.text-right {
  text-align: right;
}

.text-center {
  text-align: center;
}

.text-justify {
  text-align: justify;
}

.text-nowrap {
  white-space: nowrap;
}

.text-lowercase {
  text-transform: lowercase;
}

.text-uppercase, .initialism {
  text-transform: uppercase;
}

.text-capitalize {
  text-transform: capitalize;
}

.text-muted {
  color: #777777;
}

.text-primary {
  color: #337ab7;
}

a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}

.text-success {
  color: #3c763d;
}

a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}

.text-info {
  color: #31708f;
}

a.text-info:hover,
a.text-info:focus {
  color: #245269;
}

.text-warning {
  color: #8a6d3b;
}

a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}

.text-danger {
  color: #a94442;
}

a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}

.bg-primary {
  color: #fff;
}

.bg-primary {
  background-color: #337ab7;
}

a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}

.bg-success {
  background-color: #dff0d8;
}

a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}

.bg-info {
  background-color: #d9edf7;
}

a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}

.bg-warning {
  background-color: #fcf8e3;
}

a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}

.bg-danger {
  background-color: #f2dede;
}

a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}

.page-header {
  padding-bottom: 9px;
  margin: 40px 0 20px;
  border-bottom: 1px solid #eeeeee;
}

ul,
ol {
  margin-top: 0;
  margin-bottom: 10px;
}
ul ul,
ul ol,
ol ul,
ol ol {
  margin-bottom: 0;
}

.list-unstyled {
  padding-left: 0;
  list-style: none;
}

.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px;
}
.list-inline > li {
  display: inline-block;
  padding-left: 5px;
  padding-right: 5px;
}

dl {
  margin-top: 0;
  margin-bottom: 20px;
}

dt,
dd {
  line-height: 1.42857;
}

dt {
  font-weight: bold;
}

dd {
  margin-left: 0;
}

.dl-horizontal dd:before, .dl-horizontal dd:after {
  content: " ";
  display: table;
}
.dl-horizontal dd:after {
  clear: both;
}
@media (min-width: 768px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}

abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777777;
}

.initialism {
  font-size: 90%;
}

blockquote {
  padding: 10px 20px;
  margin: 0 0 20px;
  font-size: 17.5px;
  border-left: 5px solid #eeeeee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857;
  color: #777777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}

.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
  text-align: right;
}
.blockquote-reverse footer:before,
.blockquote-reverse small:before,
.blockquote-reverse .small:before,
blockquote.pull-right footer:before,
blockquote.pull-right small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
.blockquote-reverse small:after,
.blockquote-reverse .small:after,
blockquote.pull-right footer:after,
blockquote.pull-right small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}

address {
  margin-bottom: 20px;
  font-style: normal;
  line-height: 1.42857;
}

code,
kbd,
pre,
samp {
  font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
}

code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 4px;
}

kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #fff;
  background-color: #333;
  border-radius: 3px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  box-shadow: none;
}

pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 1.42857;
  word-break: break-all;
  word-wrap: break-word;
  color: #333333;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 4px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}

.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}

.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 15px;
  padding-right: 15px;
}
.container:before, .container:after {
  content: " ";
  display: table;
}
.container:after {
  clear: both;
}
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1170px;
  }
}

.container-fluid {
  margin-right: auto;
  margin-left: auto;
  padding-left: 15px;
  padding-right: 15px;
}
.container-fluid:before, .container-fluid:after {
  content: " ";
  display: table;
}
.container-fluid:after {
  clear: both;
}

.row {
  margin-left: -15px;
  margin-right: -15px;
}
.row:before, .row:after {
  content: " ";
  display: table;
}
.row:after {
  clear: both;
}

.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-left: 15px;
  padding-right: 15px;
}

.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}

.col-xs-1 {
  width: 8.33333%;
}

.col-xs-2 {
  width: 16.66667%;
}

.col-xs-3 {
  width: 25%;
}

.col-xs-4 {
  width: 33.33333%;
}

.col-xs-5 {
  width: 41.66667%;
}

.col-xs-6 {
  width: 50%;
}

.col-xs-7 {
  width: 58.33333%;
}

.col-xs-8 {
  width: 66.66667%;
}

.col-xs-9 {
  width: 75%;
}

.col-xs-10 {
  width: 83.33333%;
}

.col-xs-11 {
  width: 91.66667%;
}

.col-xs-12 {
  width: 100%;
}

.col-xs-pull-0 {
  right: auto;
}

.col-xs-pull-1 {
  right: 8.33333%;
}

.col-xs-pull-2 {
  right: 16.66667%;
}

.col-xs-pull-3 {
  right: 25%;
}

.col-xs-pull-4 {
  right: 33.33333%;
}

.col-xs-pull-5 {
  right: 41.66667%;
}

.col-xs-pull-6 {
  right: 50%;
}

.col-xs-pull-7 {
  right: 58.33333%;
}

.col-xs-pull-8 {
  right: 66.66667%;
}

.col-xs-pull-9 {
  right: 75%;
}

.col-xs-pull-10 {
  right: 83.33333%;
}

.col-xs-pull-11 {
  right: 91.66667%;
}

.col-xs-pull-12 {
  right: 100%;
}

.col-xs-push-0 {
  left: auto;
}

.col-xs-push-1 {
  left: 8.33333%;
}

.col-xs-push-2 {
  left: 16.66667%;
}

.col-xs-push-3 {
  left: 25%;
}

.col-xs-push-4 {
  left: 33.33333%;
}

.col-xs-push-5 {
  left: 41.66667%;
}

.col-xs-push-6 {
  left: 50%;
}

.col-xs-push-7 {
  left: 58.33333%;
}

.col-xs-push-8 {
  left: 66.66667%;
}

.col-xs-push-9 {
  left: 75%;
}

.col-xs-push-10 {
  left: 83.33333%;
}

.col-xs-push-11 {
  left: 91.66667%;
}

.col-xs-push-12 {
  left: 100%;
}

.col-xs-offset-0 {
  margin-left: 0%;
}

.col-xs-offset-1 {
  margin-left: 8.33333%;
}

.col-xs-offset-2 {
  margin-left: 16.66667%;
}

.col-xs-offset-3 {
  margin-left: 25%;
}

.col-xs-offset-4 {
  margin-left: 33.33333%;
}

.col-xs-offset-5 {
  margin-left: 41.66667%;
}

.col-xs-offset-6 {
  margin-left: 50%;
}

.col-xs-offset-7 {
  margin-left: 58.33333%;
}

.col-xs-offset-8 {
  margin-left: 66.66667%;
}

.col-xs-offset-9 {
  margin-left: 75%;
}

.col-xs-offset-10 {
  margin-left: 83.33333%;
}

.col-xs-offset-11 {
  margin-left: 91.66667%;
}

.col-xs-offset-12 {
  margin-left: 100%;
}

@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }

  .col-sm-1 {
    width: 8.33333%;
  }

  .col-sm-2 {
    width: 16.66667%;
  }

  .col-sm-3 {
    width: 25%;
  }

  .col-sm-4 {
    width: 33.33333%;
  }

  .col-sm-5 {
    width: 41.66667%;
  }

  .col-sm-6 {
    width: 50%;
  }

  .col-sm-7 {
    width: 58.33333%;
  }

  .col-sm-8 {
    width: 66.66667%;
  }

  .col-sm-9 {
    width: 75%;
  }

  .col-sm-10 {
    width: 83.33333%;
  }

  .col-sm-11 {
    width: 91.66667%;
  }

  .col-sm-12 {
    width: 100%;
  }

  .col-sm-pull-0 {
    right: auto;
  }

  .col-sm-pull-1 {
    right: 8.33333%;
  }

  .col-sm-pull-2 {
    right: 16.66667%;
  }

  .col-sm-pull-3 {
    right: 25%;
  }

  .col-sm-pull-4 {
    right: 33.33333%;
  }

  .col-sm-pull-5 {
    right: 41.66667%;
  }

  .col-sm-pull-6 {
    right: 50%;
  }

  .col-sm-pull-7 {
    right: 58.33333%;
  }

  .col-sm-pull-8 {
    right: 66.66667%;
  }

  .col-sm-pull-9 {
    right: 75%;
  }

  .col-sm-pull-10 {
    right: 83.33333%;
  }

  .col-sm-pull-11 {
    right: 91.66667%;
  }

  .col-sm-pull-12 {
    right: 100%;
  }

  .col-sm-push-0 {
    left: auto;
  }

  .col-sm-push-1 {
    left: 8.33333%;
  }

  .col-sm-push-2 {
    left: 16.66667%;
  }

  .col-sm-push-3 {
    left: 25%;
  }

  .col-sm-push-4 {
    left: 33.33333%;
  }

  .col-sm-push-5 {
    left: 41.66667%;
  }

  .col-sm-push-6 {
    left: 50%;
  }

  .col-sm-push-7 {
    left: 58.33333%;
  }

  .col-sm-push-8 {
    left: 66.66667%;
  }

  .col-sm-push-9 {
    left: 75%;
  }

  .col-sm-push-10 {
    left: 83.33333%;
  }

  .col-sm-push-11 {
    left: 91.66667%;
  }

  .col-sm-push-12 {
    left: 100%;
  }

  .col-sm-offset-0 {
    margin-left: 0%;
  }

  .col-sm-offset-1 {
    margin-left: 8.33333%;
  }

  .col-sm-offset-2 {
    margin-left: 16.66667%;
  }

  .col-sm-offset-3 {
    margin-left: 25%;
  }

  .col-sm-offset-4 {
    margin-left: 33.33333%;
  }

  .col-sm-offset-5 {
    margin-left: 41.66667%;
  }

  .col-sm-offset-6 {
    margin-left: 50%;
  }

  .col-sm-offset-7 {
    margin-left: 58.33333%;
  }

  .col-sm-offset-8 {
    margin-left: 66.66667%;
  }

  .col-sm-offset-9 {
    margin-left: 75%;
  }

  .col-sm-offset-10 {
    margin-left: 83.33333%;
  }

  .col-sm-offset-11 {
    margin-left: 91.66667%;
  }

  .col-sm-offset-12 {
    margin-left: 100%;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }

  .col-md-1 {
    width: 8.33333%;
  }

  .col-md-2 {
    width: 16.66667%;
  }

  .col-md-3 {
    width: 25%;
  }

  .col-md-4 {
    width: 33.33333%;
  }

  .col-md-5 {
    width: 41.66667%;
  }

  .col-md-6 {
    width: 50%;
  }

  .col-md-7 {
    width: 58.33333%;
  }

  .col-md-8 {
    width: 66.66667%;
  }

  .col-md-9 {
    width: 75%;
  }

  .col-md-10 {
    width: 83.33333%;
  }

  .col-md-11 {
    width: 91.66667%;
  }

  .col-md-12 {
    width: 50%;
  }

  .col-md-pull-0 {
    right: auto;
  }

  .col-md-pull-1 {
    right: 8.33333%;
  }

  .col-md-pull-2 {
    right: 16.66667%;
  }

  .col-md-pull-3 {
    right: 25%;
  }

  .col-md-pull-4 {
    right: 33.33333%;
  }

  .col-md-pull-5 {
    right: 41.66667%;
  }

  .col-md-pull-6 {
    right: 50%;
  }

  .col-md-pull-7 {
    right: 58.33333%;
  }

  .col-md-pull-8 {
    right: 66.66667%;
  }

  .col-md-pull-9 {
    right: 75%;
  }

  .col-md-pull-10 {
    right: 83.33333%;
  }

  .col-md-pull-11 {
    right: 91.66667%;
  }

  .col-md-pull-12 {
    right: 50%;
  }

  .col-md-push-0 {
    left: auto;
  }

  .col-md-push-1 {
    left: 8.33333%;
  }

  .col-md-push-2 {
    left: 16.66667%;
  }

  .col-md-push-3 {
    left: 25%;
  }

  .col-md-push-4 {
    left: 33.33333%;
  }

  .col-md-push-5 {
    left: 41.66667%;
  }

  .col-md-push-6 {
    left: 50%;
  }

  .col-md-push-7 {
    left: 58.33333%;
  }

  .col-md-push-8 {
    left: 66.66667%;
  }

  .col-md-push-9 {
    left: 75%;
  }

  .col-md-push-10 {
    left: 83.33333%;
  }

  .col-md-push-11 {
    left: 91.66667%;
  }

  .col-md-push-12 {
    left: 50%;
  }

  .col-md-offset-0 {
    margin-left: 0%;
  }

  .col-md-offset-1 {
    margin-left: 8.33333%;
  }

  .col-md-offset-2 {
    margin-left: 16.66667%;
  }

  .col-md-offset-3 {
    margin-left: 25%;
  }

  .col-md-offset-4 {
    margin-left: 33.33333%;
  }

  .col-md-offset-5 {
    margin-left: 41.66667%;
  }

  .col-md-offset-6 {
    margin-left: 50%;
  }

  .col-md-offset-7 {
    margin-left: 58.33333%;
  }

  .col-md-offset-8 {
    margin-left: 66.66667%;
  }

  .col-md-offset-9 {
    margin-left: 75%;
  }

  .col-md-offset-10 {
    margin-left: 83.33333%;
  }

  .col-md-offset-11 {
    margin-left: 91.66667%;
  }

  .col-md-offset-12 {
    margin-left: 100%;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }

  .col-lg-1 {
    width: 8.33333%;
  }

  .col-lg-2 {
    width: 16.66667%;
  }

  .col-lg-3 {
    width: 25%;
  }

  .col-lg-4 {
    width: 33.33333%;
  }

  .col-lg-5 {
    width: 41.66667%;
  }

  .col-lg-6 {
    width: 50%;
  }

  .col-lg-7 {
    width: 58.33333%;
  }

  .col-lg-8 {
    width: 66.66667%;
  }

  .col-lg-9 {
    width: 75%;
  }

  .col-lg-10 {
    width: 83.33333%;
  }

  .col-lg-11 {
    width: 91.66667%;
  }

  .col-lg-12 {
    width: 100%;
  }

  .col-lg-pull-0 {
    right: auto;
  }

  .col-lg-pull-1 {
    right: 8.33333%;
  }

  .col-lg-pull-2 {
    right: 16.66667%;
  }

  .col-lg-pull-3 {
    right: 25%;
  }

  .col-lg-pull-4 {
    right: 33.33333%;
  }

  .col-lg-pull-5 {
    right: 41.66667%;
  }

  .col-lg-pull-6 {
    right: 50%;
  }

  .col-lg-pull-7 {
    right: 58.33333%;
  }

  .col-lg-pull-8 {
    right: 66.66667%;
  }

  .col-lg-pull-9 {
    right: 75%;
  }

  .col-lg-pull-10 {
    right: 83.33333%;
  }

  .col-lg-pull-11 {
    right: 91.66667%;
  }

  .col-lg-pull-12 {
    right: 100%;
  }

  .col-lg-push-0 {
    left: auto;
  }

  .col-lg-push-1 {
    left: 8.33333%;
  }

  .col-lg-push-2 {
    left: 16.66667%;
  }

  .col-lg-push-3 {
    left: 25%;
  }

  .col-lg-push-4 {
    left: 33.33333%;
  }

  .col-lg-push-5 {
    left: 41.66667%;
  }

  .col-lg-push-6 {
    left: 50%;
  }

  .col-lg-push-7 {
    left: 58.33333%;
  }

  .col-lg-push-8 {
    left: 66.66667%;
  }

  .col-lg-push-9 {
    left: 75%;
  }

  .col-lg-push-10 {
    left: 83.33333%;
  }

  .col-lg-push-11 {
    left: 91.66667%;
  }

  .col-lg-push-12 {
    left: 100%;
  }

  .col-lg-offset-0 {
    margin-left: 0%;
  }

  .col-lg-offset-1 {
    margin-left: 8.33333%;
  }

  .col-lg-offset-2 {
    margin-left: 16.66667%;
  }

  .col-lg-offset-3 {
    margin-left: 25%;
  }

  .col-lg-offset-4 {
    margin-left: 33.33333%;
  }

  .col-lg-offset-5 {
    margin-left: 41.66667%;
  }

  .col-lg-offset-6 {
    margin-left: 50%;
  }

  .col-lg-offset-7 {
    margin-left: 58.33333%;
  }

  .col-lg-offset-8 {
    margin-left: 66.66667%;
  }

  .col-lg-offset-9 {
    margin-left: 75%;
  }

  .col-lg-offset-10 {
    margin-left: 83.33333%;
  }

  .col-lg-offset-11 {
    margin-left: 91.66667%;
  }

  .col-lg-offset-12 {
    margin-left: 100%;
  }
}
table {
  background-color: transparent;
}

caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777777;
  text-align: left;
}

th {
  text-align: left;
}

.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 20px;
}
.table > thead > tr > th,
.table > thead > tr > td,
.table > tbody > tr > th,
.table > tbody > tr > td,
.table > tfoot > tr > th,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > th,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}

.table-condensed > thead > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > th,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > th,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}

.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > th,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > th,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}

.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}

.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}

table col[class*="col-"] {
  position: static;
  float: none;
  display: table-column;
}

table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  float: none;
  display: table-cell;
}

.table > thead > tr > td.active,
.table > thead > tr > th.active, .table > thead > tr.active > td, .table > thead > tr.active > th,
.table > tbody > tr > td.active,
.table > tbody > tr > th.active,
.table > tbody > tr.active > td,
.table > tbody > tr.active > th,
.table > tfoot > tr > td.active,
.table > tfoot > tr > th.active,
.table > tfoot > tr.active > td,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}

.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover, .table-hover > tbody > tr.active:hover > td, .table-hover > tbody > tr:hover > .active, .table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}

.table > thead > tr > td.success,
.table > thead > tr > th.success, .table > thead > tr.success > td, .table > thead > tr.success > th,
.table > tbody > tr > td.success,
.table > tbody > tr > th.success,
.table > tbody > tr.success > td,
.table > tbody > tr.success > th,
.table > tfoot > tr > td.success,
.table > tfoot > tr > th.success,
.table > tfoot > tr.success > td,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}

.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover, .table-hover > tbody > tr.success:hover > td, .table-hover > tbody > tr:hover > .success, .table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}

.table > thead > tr > td.info,
.table > thead > tr > th.info, .table > thead > tr.info > td, .table > thead > tr.info > th,
.table > tbody > tr > td.info,
.table > tbody > tr > th.info,
.table > tbody > tr.info > td,
.table > tbody > tr.info > th,
.table > tfoot > tr > td.info,
.table > tfoot > tr > th.info,
.table > tfoot > tr.info > td,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}

.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover, .table-hover > tbody > tr.info:hover > td, .table-hover > tbody > tr:hover > .info, .table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}

.table > thead > tr > td.warning,
.table > thead > tr > th.warning, .table > thead > tr.warning > td, .table > thead > tr.warning > th,
.table > tbody > tr > td.warning,
.table > tbody > tr > th.warning,
.table > tbody > tr.warning > td,
.table > tbody > tr.warning > th,
.table > tfoot > tr > td.warning,
.table > tfoot > tr > th.warning,
.table > tfoot > tr.warning > td,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}

.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover, .table-hover > tbody > tr.warning:hover > td, .table-hover > tbody > tr:hover > .warning, .table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}

.table > thead > tr > td.danger,
.table > thead > tr > th.danger, .table > thead > tr.danger > td, .table > thead > tr.danger > th,
.table > tbody > tr > td.danger,
.table > tbody > tr > th.danger,
.table > tbody > tr.danger > td,
.table > tbody > tr.danger > th,
.table > tfoot > tr > td.danger,
.table > tfoot > tr > th.danger,
.table > tfoot > tr.danger > td,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}

.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover, .table-hover > tbody > tr.danger:hover > td, .table-hover > tbody > tr:hover > .danger, .table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}

.table-responsive {
  overflow-x: auto;
  min-height: 0.01%;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 15px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}

fieldset {
  padding: 0;
  margin: 0;
  border: 0;
  min-width: 0;
}

legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: inherit;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}

label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}

input[type="file"] {
  display: block;
}

input[type="range"] {
  display: block;
  width: 100%;
}

select[multiple],
select[size] {
  height: auto;
}

input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: thin dotted;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}

output {
  display: block;
  padding-top: 11px;
  font-size: 14px;
  line-height: 1.42857;
  color: #555555;
}

.form-control {
  display: block;
  width: 100%;
  height: 42px;
  padding: 10px 20px;
  font-size: 14px;
  line-height: 1.42857;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  -o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control {
  background-color: #eeeeee;
  opacity: 1;
}
.form-control[disabled], fieldset[disabled] .form-control {
  cursor: not-allowed;
}

textarea.form-control {
  height: auto;
}

input[type="search"] {
  -webkit-appearance: none;
}

@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 42px;
  }
  input[type="date"].input-sm, .input-group-sm > input[type="date"].form-control,
  .input-group-sm > input[type="date"].input-group-addon,
  .input-group-sm > .input-group-btn > input[type="date"].btn, .input-group-sm input[type="date"],
  input[type="time"].input-sm,
  .input-group-sm > input[type="time"].form-control,
  .input-group-sm > input[type="time"].input-group-addon,
  .input-group-sm > .input-group-btn > input[type="time"].btn, .input-group-sm
  input[type="time"],
  input[type="datetime-local"].input-sm,
  .input-group-sm > input[type="datetime-local"].form-control,
  .input-group-sm > input[type="datetime-local"].input-group-addon,
  .input-group-sm > .input-group-btn > input[type="datetime-local"].btn, .input-group-sm
  input[type="datetime-local"],
  input[type="month"].input-sm,
  .input-group-sm > input[type="month"].form-control,
  .input-group-sm > input[type="month"].input-group-addon,
  .input-group-sm > .input-group-btn > input[type="month"].btn, .input-group-sm
  input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg, .input-group-lg > input[type="date"].form-control,
  .input-group-lg > input[type="date"].input-group-addon,
  .input-group-lg > .input-group-btn > input[type="date"].btn, .input-group-lg input[type="date"],
  input[type="time"].input-lg,
  .input-group-lg > input[type="time"].form-control,
  .input-group-lg > input[type="time"].input-group-addon,
  .input-group-lg > .input-group-btn > input[type="time"].btn, .input-group-lg
  input[type="time"],
  input[type="datetime-local"].input-lg,
  .input-group-lg > input[type="datetime-local"].form-control,
  .input-group-lg > input[type="datetime-local"].input-group-addon,
  .input-group-lg > .input-group-btn > input[type="datetime-local"].btn, .input-group-lg
  input[type="datetime-local"],
  input[type="month"].input-lg,
  .input-group-lg > input[type="month"].form-control,
  .input-group-lg > input[type="month"].input-group-addon,
  .input-group-lg > .input-group-btn > input[type="month"].btn, .input-group-lg
  input[type="month"] {
    line-height: 46px;
  }
}
.form-group {
  margin-bottom: 15px;
}

.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 20px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}

.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-left: -20px;
  margin-top: 4px \9;
}

.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}

.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  vertical-align: middle;
  font-weight: normal;
  cursor: pointer;
}

.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}

input[type="radio"][disabled], input[type="radio"].disabled, fieldset[disabled] input[type="radio"],
input[type="checkbox"][disabled],
input[type="checkbox"].disabled, fieldset[disabled]
input[type="checkbox"] {
  cursor: not-allowed;
}

.radio-inline.disabled, fieldset[disabled] .radio-inline,
.checkbox-inline.disabled, fieldset[disabled]
.checkbox-inline {
  cursor: not-allowed;
}

.radio.disabled label, fieldset[disabled] .radio label,
.checkbox.disabled label, fieldset[disabled]
.checkbox label {
  cursor: not-allowed;
}

.form-control-static {
  padding-top: 11px;
  padding-bottom: 11px;
  margin-bottom: 0;
  min-height: 34px;
}
.form-control-static.input-lg, .input-group-lg > .form-control-static.form-control,
.input-group-lg > .form-control-static.input-group-addon,
.input-group-lg > .input-group-btn > .form-control-static.btn, .form-control-static.input-sm, .input-group-sm > .form-control-static.form-control,
.input-group-sm > .form-control-static.input-group-addon,
.input-group-sm > .input-group-btn > .form-control-static.btn {
  padding-left: 0;
  padding-right: 0;
}

.input-sm, .input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 20px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}

select.input-sm, .input-group-sm > select.form-control,
.input-group-sm > select.input-group-addon,
.input-group-sm > .input-group-btn > select.btn {
  height: 30px;
  line-height: 30px;
}

textarea.input-sm, .input-group-sm > textarea.form-control,
.input-group-sm > textarea.input-group-addon,
.input-group-sm > .input-group-btn > textarea.btn,
select[multiple].input-sm,
.input-group-sm > select[multiple].form-control,
.input-group-sm > select[multiple].input-group-addon,
.input-group-sm > .input-group-btn > select[multiple].btn {
  height: auto;
}

.form-group-sm .form-control {
  height: 30px;
  padding: 5px 20px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 32px;
  padding: 6px 20px;
  font-size: 12px;
  line-height: 1.5;
}

.input-lg, .input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  padding: 10px 20px;
  font-size: 18px;
  line-height: 1.33333;
  border-radius: 6px;
}

select.input-lg, .input-group-lg > select.form-control,
.input-group-lg > select.input-group-addon,
.input-group-lg > .input-group-btn > select.btn {
  height: 46px;
  line-height: 46px;
}

textarea.input-lg, .input-group-lg > textarea.form-control,
.input-group-lg > textarea.input-group-addon,
.input-group-lg > .input-group-btn > textarea.btn,
select[multiple].input-lg,
.input-group-lg > select[multiple].form-control,
.input-group-lg > select[multiple].input-group-addon,
.input-group-lg > .input-group-btn > select[multiple].btn {
  height: auto;
}

.form-group-lg .form-control {
  height: 46px;
  padding: 10px 20px;
  font-size: 18px;
  line-height: 1.33333;
  border-radius: 6px;
}
.form-group-lg select.form-control {
  height: 46px;
  line-height: 46px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 46px;
  min-height: 38px;
  padding: 11px 20px;
  font-size: 18px;
  line-height: 1.33333;
}

.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 52.5px;
}

.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 42px;
  height: 42px;
  line-height: 42px;
  text-align: center;
  pointer-events: none;
}

.input-lg + .form-control-feedback, .input-group-lg > .form-control + .form-control-feedback,
.input-group-lg > .input-group-addon + .form-control-feedback,
.input-group-lg > .input-group-btn > .btn + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 46px;
  height: 46px;
  line-height: 46px;
}

.input-sm + .form-control-feedback, .input-group-sm > .form-control + .form-control-feedback,
.input-group-sm > .input-group-addon + .form-control-feedback,
.input-group-sm > .input-group-btn > .btn + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}

.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline, .has-success.radio label, .has-success.checkbox label, .has-success.radio-inline label, .has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  border-color: #3c763d;
  background-color: #dff0d8;
}
.has-success .form-control-feedback {
  color: #3c763d;
}

.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline, .has-warning.radio label, .has-warning.checkbox label, .has-warning.radio-inline label, .has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  border-color: #8a6d3b;
  background-color: #fcf8e3;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}

.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline, .has-error.radio label, .has-error.checkbox label, .has-error.radio-inline label, .has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  border-color: #a94442;
  background-color: #f2dede;
}
.has-error .form-control-feedback {
  color: #a94442;
}

.has-feedback label ~ .form-control-feedback {
  top: 25px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}

.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #737373;
}

@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}

.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  margin-top: 0;
  margin-bottom: 0;
  padding-top: 11px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 31px;
}
.form-horizontal .form-group {
  margin-left: -15px;
  margin-right: -15px;
}
.form-horizontal .form-group:before, .form-horizontal .form-group:after {
  content: " ";
  display: table;
}
.form-horizontal .form-group:after {
  clear: both;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 11px;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 15px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 14.33333px;
    font-size: 18px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}

.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 10px 20px;
  font-size: 14px;
  line-height: 1.42857;
  border-radius: 4px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.btn:focus, .btn.focus, .btn:active:focus, .btn:active.focus, .btn.active:focus, .btn.active.focus {
  outline: thin dotted;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover, .btn:focus, .btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active, .btn.active {
  outline: 0;
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn.disabled, .btn[disabled], fieldset[disabled] .btn {
  cursor: not-allowed;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  box-shadow: none;
}

a.btn.disabled, fieldset[disabled] a.btn {
  pointer-events: none;
}

.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus, .btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active, .btn-default.active, .open > .btn-default.dropdown-toggle {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover, .btn-default:active:focus, .btn-default:active.focus, .btn-default.active:hover, .btn-default.active:focus, .btn-default.active.focus, .open > .btn-default.dropdown-toggle:hover, .open > .btn-default.dropdown-toggle:focus, .open > .btn-default.dropdown-toggle.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active, .btn-default.active, .open > .btn-default.dropdown-toggle {
  background-image: none;
}
.btn-default.disabled, .btn-default.disabled:hover, .btn-default.disabled:focus, .btn-default.disabled.focus, .btn-default.disabled:active, .btn-default.disabled.active, .btn-default[disabled], .btn-default[disabled]:hover, .btn-default[disabled]:focus, .btn-default[disabled].focus, .btn-default[disabled]:active, .btn-default[disabled].active, fieldset[disabled] .btn-default, fieldset[disabled] .btn-default:hover, fieldset[disabled] .btn-default:focus, fieldset[disabled] .btn-default.focus, fieldset[disabled] .btn-default:active, fieldset[disabled] .btn-default.active {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}

.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus, .btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active, .btn-primary.active, .open > .btn-primary.dropdown-toggle {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover, .btn-primary:active:focus, .btn-primary:active.focus, .btn-primary.active:hover, .btn-primary.active:focus, .btn-primary.active.focus, .open > .btn-primary.dropdown-toggle:hover, .open > .btn-primary.dropdown-toggle:focus, .open > .btn-primary.dropdown-toggle.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active, .btn-primary.active, .open > .btn-primary.dropdown-toggle {
  background-image: none;
}
.btn-primary.disabled, .btn-primary.disabled:hover, .btn-primary.disabled:focus, .btn-primary.disabled.focus, .btn-primary.disabled:active, .btn-primary.disabled.active, .btn-primary[disabled], .btn-primary[disabled]:hover, .btn-primary[disabled]:focus, .btn-primary[disabled].focus, .btn-primary[disabled]:active, .btn-primary[disabled].active, fieldset[disabled] .btn-primary, fieldset[disabled] .btn-primary:hover, fieldset[disabled] .btn-primary:focus, fieldset[disabled] .btn-primary.focus, fieldset[disabled] .btn-primary:active, fieldset[disabled] .btn-primary.active {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}

.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus, .btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active, .btn-success.active, .open > .btn-success.dropdown-toggle {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover, .btn-success:active:focus, .btn-success:active.focus, .btn-success.active:hover, .btn-success.active:focus, .btn-success.active.focus, .open > .btn-success.dropdown-toggle:hover, .open > .btn-success.dropdown-toggle:focus, .open > .btn-success.dropdown-toggle.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active, .btn-success.active, .open > .btn-success.dropdown-toggle {
  background-image: none;
}
.btn-success.disabled, .btn-success.disabled:hover, .btn-success.disabled:focus, .btn-success.disabled.focus, .btn-success.disabled:active, .btn-success.disabled.active, .btn-success[disabled], .btn-success[disabled]:hover, .btn-success[disabled]:focus, .btn-success[disabled].focus, .btn-success[disabled]:active, .btn-success[disabled].active, fieldset[disabled] .btn-success, fieldset[disabled] .btn-success:hover, fieldset[disabled] .btn-success:focus, fieldset[disabled] .btn-success.focus, fieldset[disabled] .btn-success:active, fieldset[disabled] .btn-success.active {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}

.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus, .btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active, .btn-info.active, .open > .btn-info.dropdown-toggle {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover, .btn-info:active:focus, .btn-info:active.focus, .btn-info.active:hover, .btn-info.active:focus, .btn-info.active.focus, .open > .btn-info.dropdown-toggle:hover, .open > .btn-info.dropdown-toggle:focus, .open > .btn-info.dropdown-toggle.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active, .btn-info.active, .open > .btn-info.dropdown-toggle {
  background-image: none;
}
.btn-info.disabled, .btn-info.disabled:hover, .btn-info.disabled:focus, .btn-info.disabled.focus, .btn-info.disabled:active, .btn-info.disabled.active, .btn-info[disabled], .btn-info[disabled]:hover, .btn-info[disabled]:focus, .btn-info[disabled].focus, .btn-info[disabled]:active, .btn-info[disabled].active, fieldset[disabled] .btn-info, fieldset[disabled] .btn-info:hover, fieldset[disabled] .btn-info:focus, fieldset[disabled] .btn-info.focus, fieldset[disabled] .btn-info:active, fieldset[disabled] .btn-info.active {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}

.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus, .btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active, .btn-warning.active, .open > .btn-warning.dropdown-toggle {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover, .btn-warning:active:focus, .btn-warning:active.focus, .btn-warning.active:hover, .btn-warning.active:focus, .btn-warning.active.focus, .open > .btn-warning.dropdown-toggle:hover, .open > .btn-warning.dropdown-toggle:focus, .open > .btn-warning.dropdown-toggle.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active, .btn-warning.active, .open > .btn-warning.dropdown-toggle {
  background-image: none;
}
.btn-warning.disabled, .btn-warning.disabled:hover, .btn-warning.disabled:focus, .btn-warning.disabled.focus, .btn-warning.disabled:active, .btn-warning.disabled.active, .btn-warning[disabled], .btn-warning[disabled]:hover, .btn-warning[disabled]:focus, .btn-warning[disabled].focus, .btn-warning[disabled]:active, .btn-warning[disabled].active, fieldset[disabled] .btn-warning, fieldset[disabled] .btn-warning:hover, fieldset[disabled] .btn-warning:focus, fieldset[disabled] .btn-warning.focus, fieldset[disabled] .btn-warning:active, fieldset[disabled] .btn-warning.active {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}

.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus, .btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active, .btn-danger.active, .open > .btn-danger.dropdown-toggle {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover, .btn-danger:active:focus, .btn-danger:active.focus, .btn-danger.active:hover, .btn-danger.active:focus, .btn-danger.active.focus, .open > .btn-danger.dropdown-toggle:hover, .open > .btn-danger.dropdown-toggle:focus, .open > .btn-danger.dropdown-toggle.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active, .btn-danger.active, .open > .btn-danger.dropdown-toggle {
  background-image: none;
}
.btn-danger.disabled, .btn-danger.disabled:hover, .btn-danger.disabled:focus, .btn-danger.disabled.focus, .btn-danger.disabled:active, .btn-danger.disabled.active, .btn-danger[disabled], .btn-danger[disabled]:hover, .btn-danger[disabled]:focus, .btn-danger[disabled].focus, .btn-danger[disabled]:active, .btn-danger[disabled].active, fieldset[disabled] .btn-danger, fieldset[disabled] .btn-danger:hover, fieldset[disabled] .btn-danger:focus, fieldset[disabled] .btn-danger.focus, fieldset[disabled] .btn-danger:active, fieldset[disabled] .btn-danger.active {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}

.btn-link {
  color: #337ab7;
  font-weight: normal;
  border-radius: 0;
}
.btn-link, .btn-link:active, .btn-link.active, .btn-link[disabled], fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn-link, .btn-link:hover, .btn-link:focus, .btn-link:active {
  border-color: transparent;
}
.btn-link:hover, .btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover, .btn-link[disabled]:focus, fieldset[disabled] .btn-link:hover, fieldset[disabled] .btn-link:focus {
  color: #777777;
  text-decoration: none;
}

.btn-lg, .btn-group-lg > .btn {
  padding: 10px 20px;
  font-size: 18px;
  line-height: 1.33333;
  border-radius: 6px;
}

.btn-sm, .btn-group-sm > .btn {
  padding: 5px 20px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}

.btn-xs, .btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}

.btn-block {
  display: block;
  width: 100%;
}

.btn-block + .btn-block {
  margin-top: 5px;
}

input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}

.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
.fade.in {
  opacity: 1;
}

.collapse {
  display: none;
}
.collapse.in {
  display: block;
}

tr.collapse.in {
  display: table-row;
}

tbody.collapse.in {
  display: table-row-group;
}

.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease;
}

.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}

.dropup,
.dropdown {
  position: relative;
}

.dropdown-toggle:focus {
  outline: 0;
}

.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  font-size: 14px;
  text-align: left;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 4px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857;
  color: #333333;
  white-space: nowrap;
}

.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}

.dropdown-menu > .active > a, .dropdown-menu > .active > a:hover, .dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  outline: 0;
  background-color: #337ab7;
}

.dropdown-menu > .disabled > a, .dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
  color: #777777;
}
.dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}

.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}

.dropdown-menu-right {
  left: auto;
  right: 0;
}

.dropdown-menu-left {
  left: 0;
  right: auto;
}

.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857;
  color: #777777;
  white-space: nowrap;
}

.dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}

.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}

.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
  content: "";
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}

@media (min-width: 768px) {
  .navbar-right .dropdown-menu {
    right: 0;
    left: auto;
  }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover, .btn-group > .btn:focus, .btn-group > .btn:active, .btn-group > .btn.active,
.btn-group-vertical > .btn:hover,
.btn-group-vertical > .btn:focus,
.btn-group-vertical > .btn:active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}

.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}

.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar:before, .btn-toolbar:after {
  content: " ";
  display: table;
}
.btn-toolbar:after {
  clear: both;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}

.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}

.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}

.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}

.btn-group > .btn-group {
  float: left;
}

.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}

.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}

.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}

.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}

.btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
}

.btn-group > .btn-lg + .dropdown-toggle, .btn-group-lg.btn-group > .btn + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
}

.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
  box-shadow: none;
}

.btn .caret {
  margin-left: 0;
}

.btn-lg .caret, .btn-group-lg > .btn .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}

.dropup .btn-lg .caret, .dropup .btn-group-lg > .btn .caret {
  border-width: 0 5px 5px;
}

.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after {
  content: " ";
  display: table;
}
.btn-group-vertical > .btn-group:after {
  clear: both;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}

.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-bottom-left-radius: 4px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}

.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}

.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}

.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  float: none;
  display: table-cell;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}

[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}

.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-left: 0;
  padding-right: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}

.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}

.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}

.input-group-addon {
  padding: 10px 20px;
  font-size: 14px;
  font-weight: normal;
  line-height: 1;
  color: #555555;
  text-align: center;
  background-color: #eeeeee;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.input-group-addon.input-sm,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .input-group-addon.btn {
  padding: 5px 20px;
  font-size: 12px;
  border-radius: 3px;
}
.input-group-addon.input-lg,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .input-group-addon.btn {
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 6px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}

.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}

.input-group-addon:first-child {
  border-right: 0;
}

.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}

.input-group-addon:last-child {
  border-left: 0;
}

.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover, .input-group-btn > .btn:focus, .input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}

.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}
.nav:before, .nav:after {
  content: " ";
  display: table;
}
.nav:after {
  clear: both;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover, .nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #777777;
}
.nav > li.disabled > a:hover, .nav > li.disabled > a:focus {
  color: #777777;
  text-decoration: none;
  background-color: transparent;
  cursor: not-allowed;
}
.nav .open > a, .nav .open > a:hover, .nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}

.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857;
  border: 1px solid transparent;
  border-radius: 4px 4px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #ddd;
}
.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}

.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 4px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}

.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}

.nav-justified, .nav-tabs.nav-justified {
  width: 100%;
}
.nav-justified > li, .nav-tabs.nav-justified > li {
  float: none;
}
.nav-justified > li > a, .nav-tabs.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li, .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a, .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}

.nav-tabs-justified, .nav-tabs.nav-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a, .nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs-justified > .active > a, .nav-tabs.nav-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a, .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs-justified > .active > a, .nav-tabs.nav-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}

.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}

.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}

.navbar {
  position: relative;
  min-height: 55px;
  margin-bottom: 20px;
  border: 1px solid transparent;
}
.navbar:before, .navbar:after {
  content: " ";
  display: table;
}
.navbar:after {
  clear: both;
}
@media (min-width: 768px) {
  .navbar {
    border-radius: 4px;
  }
}

.navbar-header:before, .navbar-header:after {
  content: " ";
  display: table;
}
.navbar-header:after {
  clear: both;
}
@media (min-width: 768px) {
  .navbar-header {
    float: left;
  }
}

.navbar-collapse {
  overflow-x: visible;
  padding-right: 15px;
  padding-left: 15px;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch;
}
.navbar-collapse:before, .navbar-collapse:after {
  content: " ";
  display: table;
}
.navbar-collapse:after {
  clear: both;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 768px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse, .navbar-static-top .navbar-collapse, .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}

.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 480px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}

.container > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-header,
.container-fluid > .navbar-collapse {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .container > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-header,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}

.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 768px) {
  .navbar-static-top {
    border-radius: 0;
  }
}

.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 768px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}

.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}

.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}

.navbar-brand {
  float: left;
  padding: 17.5px 15px;
  font-size: 18px;
  line-height: 20px;
  height: 55px;
}
.navbar-brand:hover, .navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 768px) {
  .navbar > .container .navbar-brand, .navbar > .container-fluid .navbar-brand {
    margin-left: -15px;
  }
}

.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 15px;
  padding: 9px 10px;
  margin-top: 10.5px;
  margin-bottom: 10.5px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 768px) {
  .navbar-toggle {
    display: none;
  }
}

.navbar-nav {
  margin: 8.75px -15px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 20px;
}
@media (max-width: 767px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 20px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 768px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 17.5px;
    padding-bottom: 17.5px;
  }
}

.navbar-form {
  margin-left: -15px;
  margin-right: -15px;
  padding: 10px 15px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: 6.5px;
  margin-bottom: 6.5px;
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 767px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 768px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
}

.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}

.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-right-radius: 4px;
  border-top-left-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.navbar-btn {
  margin-top: 6.5px;
  margin-bottom: 6.5px;
}
.navbar-btn.btn-sm, .btn-group-sm > .navbar-btn.btn {
  margin-top: 12.5px;
  margin-bottom: 12.5px;
}
.navbar-btn.btn-xs, .btn-group-xs > .navbar-btn.btn {
  margin-top: 16.5px;
  margin-bottom: 16.5px;
}

.navbar-text {
  margin-top: 17.5px;
  margin-bottom: 17.5px;
}
@media (min-width: 768px) {
  .navbar-text {
    float: left;
    margin-left: 15px;
    margin-right: 15px;
  }
}

@media (min-width: 768px) {
  .navbar-left {
    float: left !important;
  }

  .navbar-right {
    float: right !important;
    margin-right: -15px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a, .navbar-default .navbar-nav > .disabled > a:hover, .navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > .open > a:focus {
  background-color: #e7e7e7;
  color: #555;
}
@media (max-width: 767px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a, .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover, .navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover, .navbar-default .btn-link[disabled]:focus, fieldset[disabled] .navbar-default .btn-link:hover, fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}

.navbar-inverse {
  background-color: #222;
  border-color: #090909;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover, .navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover, .navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:hover, .navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #090909;
}
.navbar-inverse .navbar-nav > .disabled > a, .navbar-inverse .navbar-nav > .disabled > a:hover, .navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover, .navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:hover, .navbar-inverse .navbar-nav > .open > a:focus {
  background-color: #090909;
  color: #fff;
}
@media (max-width: 767px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #090909;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #090909;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a, .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #090909;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a, .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover, .navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover, .navbar-inverse .btn-link[disabled]:focus, fieldset[disabled] .navbar-inverse .btn-link:hover, fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}

.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 20px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 4px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  content: "/ ";
  padding: 0 5px;
  color: #ccc;
}
.breadcrumb > .active {
  color: #777777;
}

.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 20px 0;
  border-radius: 4px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 10px 20px;
  line-height: 1.42857;
  text-decoration: none;
  color: #337ab7;
  background-color: #fff;
  border: 1px solid #ddd;
  margin-left: -1px;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 4px;
  border-top-left-radius: 4px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-bottom-right-radius: 4px;
  border-top-right-radius: 4px;
}
.pagination > li > a:hover, .pagination > li > a:focus,
.pagination > li > span:hover,
.pagination > li > span:focus {
  z-index: 3;
  color: #23527c;
  background-color: #eeeeee;
  border-color: #ddd;
}
.pagination > .active > a, .pagination > .active > a:hover, .pagination > .active > a:focus,
.pagination > .active > span,
.pagination > .active > span:hover,
.pagination > .active > span:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
  cursor: default;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777777;
  background-color: #fff;
  border-color: #ddd;
  cursor: not-allowed;
}

.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 20px;
  font-size: 18px;
  line-height: 1.33333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-bottom-left-radius: 6px;
  border-top-left-radius: 6px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-bottom-right-radius: 6px;
  border-top-right-radius: 6px;
}

.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 20px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}

.pager {
  padding-left: 0;
  margin: 20px 0;
  list-style: none;
  text-align: center;
}
.pager:before, .pager:after {
  content: " ";
  display: table;
}
.pager:after {
  clear: both;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #fff;
  cursor: not-allowed;
}

.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}

a.label:hover, a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}

.label-default {
  background-color: #777777;
}
.label-default[href]:hover, .label-default[href]:focus {
  background-color: #5e5e5e;
}

.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover, .label-primary[href]:focus {
  background-color: #286090;
}

.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover, .label-success[href]:focus {
  background-color: #449d44;
}

.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover, .label-info[href]:focus {
  background-color: #31b0d5;
}

.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover, .label-warning[href]:focus {
  background-color: #ec971f;
}

.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover, .label-danger[href]:focus {
  background-color: #c9302c;
}

.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  color: #fff;
  line-height: 1;
  vertical-align: middle;
  white-space: nowrap;
  text-align: center;
  background-color: #777777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge, .btn-group-xs > .btn .badge, .btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
.list-group-item.active > .badge, .nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}

a.badge:hover, a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}

.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 21px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron, .container-fluid .jumbotron {
  border-radius: 6px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron, .container-fluid .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 63px;
  }
}

.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 20px;
  line-height: 1.42857;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  display: block;
  max-width: 100%;
  height: auto;
  margin-left: auto;
  margin-right: auto;
}
.thumbnail .caption {
  padding: 9px;
  color: #333333;
}

a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}

.alert {
  padding: 15px;
  margin-bottom: 20px;
  border: 1px solid transparent;
  border-radius: 4px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}

.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}

.alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}

.alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #31708f;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}

.alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}

.alert-danger {
  background-color: #f2dede;
  border-color: #ebccd1;
  color: #a94442;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}

@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  overflow: hidden;
  height: 20px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 12px;
  line-height: 20px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}

.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}

.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}

.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}

.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}

.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}

.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}

.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}

.media,
.media-body {
  zoom: 1;
  overflow: hidden;
}

.media-body {
  width: 10000px;
}

.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}

.media-right,
.media > .pull-right {
  padding-left: 10px;
}

.media-left,
.media > .pull-left {
  padding-right: 10px;
}

.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}

.media-middle {
  vertical-align: middle;
}

.media-bottom {
  vertical-align: bottom;
}

.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}

.media-list {
  padding-left: 0;
  list-style: none;
}

.list-group {
  margin-bottom: 20px;
  padding-left: 0;
}

.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-right-radius: 4px;
  border-top-left-radius: 4px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}

a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover, a.list-group-item:focus,
button.list-group-item:hover,
button.list-group-item:focus {
  text-decoration: none;
  color: #555;
  background-color: #f5f5f5;
}

button.list-group-item {
  width: 100%;
  text-align: left;
}

.list-group-item.disabled, .list-group-item.disabled:hover, .list-group-item.disabled:focus {
  background-color: #eeeeee;
  color: #777777;
  cursor: not-allowed;
}
.list-group-item.disabled .list-group-item-heading, .list-group-item.disabled:hover .list-group-item-heading, .list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text, .list-group-item.disabled:hover .list-group-item-text, .list-group-item.disabled:focus .list-group-item-text {
  color: #777777;
}
.list-group-item.active, .list-group-item.active:hover, .list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small, .list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > .small, .list-group-item.active:focus .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text, .list-group-item.active:hover .list-group-item-text, .list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}

.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}

a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover, a.list-group-item-success:focus,
button.list-group-item-success:hover,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active, a.list-group-item-success.active:hover, a.list-group-item-success.active:focus,
button.list-group-item-success.active,
button.list-group-item-success.active:hover,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}

.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}

a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover, a.list-group-item-info:focus,
button.list-group-item-info:hover,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active, a.list-group-item-info.active:hover, a.list-group-item-info.active:focus,
button.list-group-item-info.active,
button.list-group-item-info.active:hover,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}

.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}

a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover, a.list-group-item-warning:focus,
button.list-group-item-warning:hover,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active, a.list-group-item-warning.active:hover, a.list-group-item-warning.active:focus,
button.list-group-item-warning.active,
button.list-group-item-warning.active:hover,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}

.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}

a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover, a.list-group-item-danger:focus,
button.list-group-item-danger:hover,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active, a.list-group-item-danger.active:hover, a.list-group-item-danger.active:focus,
button.list-group-item-danger.active,
button.list-group-item-danger.active:hover,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}

.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}

.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}

.panel {
  margin-bottom: 20px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}

.panel-body {
  padding: 15px;
}
.panel-body:before, .panel-body:after {
  content: " ";
  display: table;
}
.panel-body:after {
  clear: both;
}

.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}

.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 16px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}

.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}

.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}

.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}

.list-group + .panel-footer {
  border-top-width: 0;
}

.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-left: 15px;
  padding-right: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 3px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 3px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  border: 0;
  margin-bottom: 0;
}

.panel-group {
  margin-bottom: 20px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 4px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}

.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}

.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}

.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}

.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}

.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}

.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}

.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  border: 0;
}

.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}

.embed-responsive-4by3 {
  padding-bottom: 75%;
}

.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}

.well-lg {
  padding: 24px;
  border-radius: 6px;
}

.well-sm {
  padding: 9px;
  border-radius: 3px;
}

.close {
  float: right;
  font-size: 21px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
.close:hover, .close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.5;
  filter: alpha(opacity=50);
}

button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}

.modal-open {
  overflow: hidden;
}

.modal {
  display: none;
  overflow: hidden;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, -25%);
  -ms-transform: translate(0, -25%);
  -o-transform: translate(0, -25%);
  transform: translate(0, -25%);
  -webkit-transition: -webkit-transform 0.3s ease-out;
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}

.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}

.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}

.modal-content {
  position: relative;
  background-color: #fff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  background-clip: padding-box;
  outline: 0;
}

.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  opacity: 0;
  filter: alpha(opacity=0);
}
.modal-backdrop.in {
  opacity: 0.5;
  filter: alpha(opacity=50);
}

.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
  min-height: 16.42857px;
}

.modal-header .close {
  margin-top: -2px;
}

.modal-title {
  margin: 0;
  line-height: 1.42857;
}

.modal-body {
  position: relative;
  padding: 15px;
}

.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer:before, .modal-footer:after {
  content: " ";
  display: table;
}
.modal-footer:after {
  clear: both;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}

.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}

@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }

  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
  }

  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 12px;
  opacity: 0;
  filter: alpha(opacity=0);
}
.tooltip.in {
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
.tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
.tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
.tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}

.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 4px;
}

.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}

.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  bottom: 0;
  right: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}

.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 14px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}

.popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 14px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 5px 5px 0 0;
}

.popover-content {
  padding: 9px 14px;
}

.popover > .arrow, .popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}

.popover > .arrow {
  border-width: 11px;
}

.popover > .arrow:after {
  border-width: 10px;
  content: "";
}

.popover.top > .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
.popover.top > .arrow:after {
  content: " ";
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #fff;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
.popover.right > .arrow:after {
  content: " ";
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #fff;
}
.popover.bottom > .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
.popover.bottom > .arrow:after {
  content: " ";
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
  content: " ";
  right: 1px;
  border-right-width: 0;
  border-left-color: #fff;
  bottom: -10px;
}

.carousel {
  position: relative;
}

.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next, .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev, .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left, .carousel-inner > .item.prev.right, .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}

.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 15%;
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-control.left {
        background-repeat: repeat-x;
            background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
        }
.carousel-control.right {
  left: auto;
  right: 0;
            background-repeat: repeat-x;
            background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
        }
.carousel-control:hover, .carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}

.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  border: 1px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: transparent;
}
.carousel-indicators .active {
  margin: 0;
  width: 12px;
  height: 12px;
  background-color: #fff;
}

.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}

@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -15px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -15px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -15px;
  }

  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }

  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before, .clearfix:after {
  content: " ";
  display: table;
}
.clearfix:after {
  clear: both;
}

.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.pull-right {
  float: right !important;
}

.pull-left {
  float: left !important;
}

.hide {
  display: none !important;
}

.show {
  display: block !important;
}

.invisible {
  visibility: hidden;
}

.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}

.hidden {
  display: none !important;
}

.affix {
  position: fixed;
}

@-ms-viewport {
  width: device-width;
}
.visible-xs {
  display: none !important;
}

.visible-sm {
  display: none !important;
}

.visible-md {
  display: none !important;
}

.visible-lg {
  display: none !important;
}

.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}

@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }

  table.visible-xs {
    display: table !important;
  }

  tr.visible-xs {
    display: table-row !important;
  }

  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}

@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}

@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }

  table.visible-sm {
    display: table !important;
  }

  tr.visible-sm {
    display: table-row !important;
  }

  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }

  table.visible-md {
    display: table !important;
  }

  tr.visible-md {
    display: table-row !important;
  }

  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}

@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }

  table.visible-lg {
    display: table !important;
  }

  tr.visible-lg {
    display: table-row !important;
  }

  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}

@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}

@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}

@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}

@media print {
  .visible-print {
    display: block !important;
  }

  table.visible-print {
    display: table !important;
  }

  tr.visible-print {
    display: table-row !important;
  }

  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}

.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}

.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}

@media print {
  .hidden-print {
    display: none !important;
  }
}

/*# sourceMappingURL=bootstrap.css.map */

@font-face {
    font-family: 'icomoon';
    src:    url('fonts/icomoon.eot?1oniuf');
    src:    url('fonts/icomoon.eot?1oniuf#iefix') format('embedded-opentype'),
        url('fonts/icomoon.ttf?1oniuf') format('truetype'),
        url('fonts/icomoon.woff?1oniuf') format('woff'),
        url('fonts/icomoon.svg?1oniuf#icomoon') format('svg');
    font-weight: normal;
    font-style: normal;
}

[class^="icon-"], [class*=" icon-"] {
    /* use !important to prevent issues with browser extensions that change fonts */
    font-family: 'icomoon' !important;
    speak: none;
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    line-height: 1;

    /* Better Font Rendering =========== */
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

.icon-mobile:before {
    content: "\e000";
}
.icon-laptop:before {
    content: "\e001";
}
.icon-desktop:before {
    content: "\e002";
}
.icon-tablet:before {
    content: "\e003";
}
.icon-phone:before {
    content: "\e004";
}
.icon-document:before {
    content: "\e005";
}
.icon-documents:before {
    content: "\e006";
}
.icon-search:before {
    content: "\e007";
}
.icon-clipboard:before {
    content: "\e008";
}
.icon-newspaper:before {
    content: "\e009";
}
.icon-notebook:before {
    content: "\e00a";
}
.icon-book-open:before {
    content: "\e00b";
}
.icon-browser:before {
    content: "\e00c";
}
.icon-calendar:before {
    content: "\e00d";
}
.icon-presentation:before {
    content: "\e00e";
}
.icon-picture:before {
    content: "\e00f";
}
.icon-pictures:before {
    content: "\e010";
}
.icon-video:before {
    content: "\e011";
}
.icon-camera:before {
    content: "\e012";
}
.icon-printer:before {
    content: "\e013";
}
.icon-toolbox:before {
    content: "\e014";
}
.icon-briefcase:before {
    content: "\e015";
}
.icon-wallet:before {
    content: "\e016";
}
.icon-gift:before {
    content: "\e017";
}
.icon-bargraph:before {
    content: "\e018";
}
.icon-grid:before {
    content: "\e019";
}
.icon-expand:before {
    content: "\e01a";
}
.icon-focus:before {
    content: "\e01b";
}
.icon-edit:before {
    content: "\e01c";
}
.icon-adjustments:before {
    content: "\e01d";
}
.icon-ribbon:before {
    content: "\e01e";
}
.icon-hourglass:before {
    content: "\e01f";
}
.icon-lock:before {
    content: "\e020";
}
.icon-megaphone:before {
    content: "\e021";
}
.icon-shield:before {
    content: "\e022";
}
.icon-trophy:before {
    content: "\e023";
}
.icon-flag:before {
    content: "\e024";
}
.icon-map:before {
    content: "\e025";
}
.icon-puzzle:before {
    content: "\e026";
}
.icon-basket:before {
    content: "\e027";
}
.icon-envelope:before {
    content: "\e028";
}
.icon-streetsign:before {
    content: "\e029";
}
.icon-telescope:before {
    content: "\e02a";
}
.icon-gears:before {
    content: "\e02b";
}
.icon-key:before {
    content: "\e02c";
}
.icon-paperclip:before {
    content: "\e02d";
}
.icon-attachment:before {
    content: "\e02e";
}
.icon-pricetags:before {
    content: "\e02f";
}
.icon-lightbulb:before {
    content: "\e030";
}
.icon-layers:before {
    content: "\e031";
}
.icon-pencil:before {
    content: "\e032";
}
.icon-tools:before {
    content: "\e033";
}
.icon-tools-2:before {
    content: "\e034";
}
.icon-scissors:before {
    content: "\e035";
}
.icon-paintbrush:before {
    content: "\e036";
}
.icon-magnifying-glass:before {
    content: "\e037";
}
.icon-circle-compass:before {
    content: "\e038";
}
.icon-linegraph:before {
    content: "\e039";
}
.icon-mic:before {
    content: "\e03a";
}
.icon-strategy:before {
    content: "\e03b";
}
.icon-beaker:before {
    content: "\e03c";
}
.icon-caution:before {
    content: "\e03d";
}
.icon-recycle:before {
    content: "\e03e";
}
.icon-anchor:before {
    content: "\e03f";
}
.icon-profile-male:before {
    content: "\e040";
}
.icon-profile-female:before {
    content: "\e041";
}
.icon-bike:before {
    content: "\e042";
}
.icon-wine:before {
    content: "\e043";
}
.icon-hotairballoon:before {
    content: "\e044";
}
.icon-globe:before {
    content: "\e045";
}
.icon-genius:before {
    content: "\e046";
}
.icon-map-pin:before {
    content: "\e047";
}
.icon-dial:before {
    content: "\e048";
}
.icon-chat:before {
    content: "\e049";
}
.icon-heart:before {
    content: "\e04a";
}
.icon-cloud:before {
    content: "\e04b";
}
.icon-upload:before {
    content: "\e04c";
}
.icon-download:before {
    content: "\e04d";
}
.icon-target:before {
    content: "\e04e";
}
.icon-hazardous:before {
    content: "\e04f";
}
.icon-piechart:before {
    content: "\e050";
}
.icon-speedometer:before {
    content: "\e051";
}
.icon-global:before {
    content: "\e052";
}
.icon-compass:before {
    content: "\e053";
}
.icon-lifesaver:before {
    content: "\e054";
}
.icon-clock:before {
    content: "\e055";
}
.icon-aperture:before {
    content: "\e056";
}
.icon-quote:before {
    content: "\e057";
}
.icon-scope:before {
    content: "\e058";
}
.icon-alarmclock:before {
    content: "\e059";
}
.icon-refresh:before {
    content: "\e05a";
}
.icon-happy:before {
    content: "\e05b";
}
.icon-sad:before {
    content: "\e05c";
}
.icon-facebook:before {
    content: "\e05d";
}
.icon-twitter:before {
    content: "\e05e";
}
.icon-googleplus:before {
    content: "\e05f";
}
.icon-rss:before {
    content: "\e060";
}
.icon-tumblr:before {
    content: "\e061";
}
.icon-linkedin:before {
    content: "\e062";
}
.icon-dribbble:before {
    content: "\e063";
}
.icon-box2:before {
    content: "\ea82";
}
.icon-write:before {
    content: "\ea83";
}
.icon-clock2:before {
    content: "\ea84";
}
.icon-reply2:before {
    content: "\ea85";
}
.icon-reply-all2:before {
    content: "\ea86";
}
.icon-forward2:before {
    content: "\ea87";
}
.icon-flag2:before {
    content: "\ea88";
}
.icon-search2:before {
    content: "\ea89";
}
.icon-trash2:before {
    content: "\ea8a";
}
.icon-envelope2:before {
    content: "\ea8b";
}
.icon-bubble:before {
    content: "\ea8c";
}
.icon-bubbles:before {
    content: "\ea8d";
}
.icon-user2:before {
    content: "\ea8e";
}
.icon-users2:before {
    content: "\ea8f";
}
.icon-cloud2:before {
    content: "\ea90";
}
.icon-download2:before {
    content: "\ea91";
}
.icon-upload2:before {
    content: "\ea92";
}
.icon-rain:before {
    content: "\ea93";
}
.icon-sun:before {
    content: "\ea94";
}
.icon-moon2:before {
    content: "\ea95";
}
.icon-bell2:before {
    content: "\ea96";
}
.icon-folder2:before {
    content: "\ea97";
}
.icon-pin2:before {
    content: "\ea98";
}
.icon-sound2:before {
    content: "\ea99";
}
.icon-microphone:before {
    content: "\ea9a";
}
.icon-camera2:before {
    content: "\ea9b";
}
.icon-image2:before {
    content: "\ea9c";
}
.icon-cog2:before {
    content: "\ea9d";
}
.icon-calendar2:before {
    content: "\ea9e";
}
.icon-book2:before {
    content: "\ea9f";
}
.icon-map-marker:before {
    content: "\eaa0";
}
.icon-store:before {
    content: "\eaa1";
}
.icon-support:before {
    content: "\eaa2";
}
.icon-tag2:before {
    content: "\eaa3";
}
.icon-heart2:before {
    content: "\eaa4";
}
.icon-video-camera:before {
    content: "\eaa5";
}
.icon-trophy2:before {
    content: "\eaa6";
}
.icon-cart:before {
    content: "\eaa7";
}
.icon-eye2:before {
    content: "\eaa8";
}
.icon-cancel:before {
    content: "\eaa9";
}
.icon-chart:before {
    content: "\eaaa";
}
.icon-target2:before {
    content: "\eaab";
}
.icon-printer2:before {
    content: "\eaac";
}
.icon-location2:before {
    content: "\eaad";
}
.icon-bookmark2:before {
    content: "\eaae";
}
.icon-monitor:before {
    content: "\eaaf";
}
.icon-cross2:before {
    content: "\eab0";
}
.icon-plus2:before {
    content: "\eab1";
}
.icon-left:before {
    content: "\eab2";
}
.icon-up:before {
    content: "\eab3";
}
.icon-browser2:before {
    content: "\eab4";
}
.icon-windows:before {
    content: "\eab5";
}
.icon-switch2:before {
    content: "\eab6";
}
.icon-dashboard:before {
    content: "\eab7";
}
.icon-play:before {
    content: "\eab8";
}
.icon-fast-forward:before {
    content: "\eab9";
}
.icon-next:before {
    content: "\eaba";
}
.icon-refresh2:before {
    content: "\eabb";
}
.icon-film:before {
    content: "\eabc";
}
.icon-home2:before {
    content: "\eabd";
}
.icon-add-to-list:before {
    content: "\e901";
}
.icon-classic-computer:before {
    content: "\e902";
}
.icon-controller-fast-backward:before {
    content: "\e903";
}
.icon-creative-commons-attribution:before {
    content: "\e904";
}
.icon-creative-commons-noderivs:before {
    content: "\e905";
}
.icon-creative-commons-noncommercial-eu:before {
    content: "\e906";
}
.icon-creative-commons-noncommercial-us:before {
    content: "\e907";
}
.icon-creative-commons-public-domain:before {
    content: "\e908";
}
.icon-creative-commons-remix:before {
    content: "\e909";
}
.icon-creative-commons-share:before {
    content: "\e90a";
}
.icon-creative-commons-sharealike:before {
    content: "\e90b";
}
.icon-creative-commons:before {
    content: "\e90c";
}
.icon-document-landscape:before {
    content: "\e90d";
}
.icon-remove-user:before {
    content: "\e90e";
}
.icon-warning:before {
    content: "\e90f";
}
.icon-arrow-bold-down:before {
    content: "\e910";
}
.icon-arrow-bold-left:before {
    content: "\e911";
}
.icon-arrow-bold-right:before {
    content: "\e912";
}
.icon-arrow-bold-up:before {
    content: "\e913";
}
.icon-arrow-down:before {
    content: "\e914";
}
.icon-arrow-left:before {
    content: "\e915";
}
.icon-arrow-long-down:before {
    content: "\e916";
}
.icon-arrow-long-left:before {
    content: "\e917";
}
.icon-arrow-long-right:before {
    content: "\e918";
}
.icon-arrow-long-up:before {
    content: "\e919";
}
.icon-arrow-right:before {
    content: "\e91a";
}
.icon-arrow-up:before {
    content: "\e91b";
}
.icon-arrow-with-circle-down:before {
    content: "\e91c";
}
.icon-arrow-with-circle-left:before {
    content: "\e91d";
}
.icon-arrow-with-circle-right:before {
    content: "\e91e";
}
.icon-arrow-with-circle-up:before {
    content: "\e91f";
}
.icon-bookmark:before {
    content: "\e920";
}
.icon-bookmarks:before {
    content: "\e921";
}
.icon-chevron-down:before {
    content: "\e922";
}
.icon-chevron-left:before {
    content: "\e923";
}
.icon-chevron-right:before {
    content: "\e924";
}
.icon-chevron-small-down:before {
    content: "\e925";
}
.icon-chevron-small-left:before {
    content: "\e926";
}
.icon-chevron-small-right:before {
    content: "\e927";
}
.icon-chevron-small-up:before {
    content: "\e928";
}
.icon-chevron-thin-down:before {
    content: "\e929";
}
.icon-chevron-thin-left:before {
    content: "\e92a";
}
.icon-chevron-thin-right:before {
    content: "\e92b";
}
.icon-chevron-thin-up:before {
    content: "\e92c";
}
.icon-chevron-up:before {
    content: "\e92d";
}
.icon-chevron-with-circle-down:before {
    content: "\e92e";
}
.icon-chevron-with-circle-left:before {
    content: "\e92f";
}
.icon-chevron-with-circle-right:before {
    content: "\e930";
}
.icon-chevron-with-circle-up:before {
    content: "\e931";
}
.icon-cloud3:before {
    content: "\e932";
}
.icon-controller-fast-forward:before {
    content: "\e933";
}
.icon-controller-jump-to-start:before {
    content: "\e934";
}
.icon-controller-next:before {
    content: "\e935";
}
.icon-controller-paus:before {
    content: "\e936";
}
.icon-controller-play:before {
    content: "\e937";
}
.icon-controller-record:before {
    content: "\e938";
}
.icon-controller-stop:before {
    content: "\e939";
}
.icon-controller-volume:before {
    content: "\e93a";
}
.icon-dot-single:before {
    content: "\e93b";
}
.icon-dots-three-horizontal:before {
    content: "\e93c";
}
.icon-dots-three-vertical:before {
    content: "\e93d";
}
.icon-dots-two-horizontal:before {
    content: "\e93e";
}
.icon-dots-two-vertical:before {
    content: "\e93f";
}
.icon-download3:before {
    content: "\e940";
}
.icon-emoji-flirt:before {
    content: "\e941";
}
.icon-flow-branch:before {
    content: "\e942";
}
.icon-flow-cascade:before {
    content: "\e943";
}
.icon-flow-line:before {
    content: "\e944";
}
.icon-flow-parallel:before {
    content: "\e945";
}
.icon-flow-tree:before {
    content: "\e946";
}
.icon-install:before {
    content: "\e947";
}
.icon-layers2:before {
    content: "\e948";
}
.icon-open-book:before {
    content: "\e949";
}
.icon-resize-100:before {
    content: "\e94a";
}
.icon-resize-full-screen:before {
    content: "\e94b";
}
.icon-save:before {
    content: "\e94c";
}
.icon-select-arrows:before {
    content: "\e94d";
}
.icon-sound-mute:before {
    content: "\e94e";
}
.icon-sound:before {
    content: "\e94f";
}
.icon-trash:before {
    content: "\e950";
}
.icon-triangle-down:before {
    content: "\e951";
}
.icon-triangle-left:before {
    content: "\e952";
}
.icon-triangle-right:before {
    content: "\e953";
}
.icon-triangle-up:before {
    content: "\e954";
}
.icon-uninstall:before {
    content: "\e955";
}
.icon-upload-to-cloud:before {
    content: "\e956";
}
.icon-upload3:before {
    content: "\e957";
}
.icon-add-user:before {
    content: "\e958";
}
.icon-address:before {
    content: "\e959";
}
.icon-adjust:before {
    content: "\e95a";
}
.icon-air:before {
    content: "\e95b";
}
.icon-aircraft-landing:before {
    content: "\e95c";
}
.icon-aircraft-take-off:before {
    content: "\e95d";
}
.icon-aircraft:before {
    content: "\e95e";
}
.icon-align-bottom:before {
    content: "\e95f";
}
.icon-align-horizontal-middle:before {
    content: "\e960";
}
.icon-align-left:before {
    content: "\e961";
}
.icon-align-right:before {
    content: "\e962";
}
.icon-align-top:before {
    content: "\e963";
}
.icon-align-vertical-middle:before {
    content: "\e964";
}
.icon-archive:before {
    content: "\e965";
}
.icon-area-graph:before {
    content: "\e966";
}
.icon-attachment2:before {
    content: "\e967";
}
.icon-awareness-ribbon:before {
    content: "\e968";
}
.icon-back-in-time:before {
    content: "\e969";
}
.icon-back:before {
    content: "\e96a";
}
.icon-bar-graph:before {
    content: "\e96b";
}
.icon-battery:before {
    content: "\e96c";
}
.icon-beamed-note:before {
    content: "\e96d";
}
.icon-bell:before {
    content: "\e96e";
}
.icon-blackboard:before {
    content: "\e96f";
}
.icon-block:before {
    content: "\e970";
}
.icon-book:before {
    content: "\e971";
}
.icon-bowl:before {
    content: "\e972";
}
.icon-box:before {
    content: "\e973";
}
.icon-briefcase2:before {
    content: "\e974";
}
.icon-browser3:before {
    content: "\e975";
}
.icon-brush:before {
    content: "\e976";
}
.icon-bucket:before {
    content: "\e977";
}
.icon-cake:before {
    content: "\e978";
}
.icon-calculator:before {
    content: "\e979";
}
.icon-calendar3:before {
    content: "\e97a";
}
.icon-camera3:before {
    content: "\e97b";
}
.icon-ccw:before {
    content: "\e97c";
}
.icon-chat2:before {
    content: "\e97d";
}
.icon-check:before {
    content: "\e97e";
}
.icon-circle-with-cross:before {
    content: "\e97f";
}
.icon-circle-with-minus:before {
    content: "\e980";
}
.icon-circle-with-plus:before {
    content: "\e981";
}
.icon-circle:before {
    content: "\e982";
}
.icon-circular-graph:before {
    content: "\e983";
}
.icon-clapperboard:before {
    content: "\e984";
}
.icon-clipboard2:before {
    content: "\e985";
}
.icon-clock3:before {
    content: "\e986";
}
.icon-code:before {
    content: "\e987";
}
.icon-cog:before {
    content: "\e988";
}
.icon-colours:before {
    content: "\e989";
}
.icon-compass2:before {
    content: "\e98a";
}
.icon-copy:before {
    content: "\e98b";
}
.icon-credit-card:before {
    content: "\e98c";
}
.icon-credit:before {
    content: "\e98d";
}
.icon-cross:before {
    content: "\e98e";
}
.icon-cup:before {
    content: "\e98f";
}
.icon-cw:before {
    content: "\e990";
}
.icon-cycle:before {
    content: "\e991";
}
.icon-database:before {
    content: "\e992";
}
.icon-dial-pad:before {
    content: "\e993";
}
.icon-direction:before {
    content: "\e994";
}
.icon-document2:before {
    content: "\e995";
}
.icon-documents2:before {
    content: "\e996";
}
.icon-drink:before {
    content: "\e997";
}
.icon-drive:before {
    content: "\e998";
}
.icon-drop:before {
    content: "\e999";
}
.icon-edit2:before {
    content: "\e99a";
}
.icon-email:before {
    content: "\e99b";
}
.icon-emoji-happy:before {
    content: "\e99c";
}
.icon-emoji-neutral:before {
    content: "\e99d";
}
.icon-emoji-sad:before {
    content: "\e99e";
}
.icon-erase:before {
    content: "\e99f";
}
.icon-eraser:before {
    content: "\e9a0";
}
.icon-export:before {
    content: "\e9a1";
}
.icon-eye:before {
    content: "\e9a2";
}
.icon-feather:before {
    content: "\e9a3";
}
.icon-flag3:before {
    content: "\e9a4";
}
.icon-flash:before {
    content: "\e9a5";
}
.icon-flashlight:before {
    content: "\e9a6";
}
.icon-flat-brush:before {
    content: "\e9a7";
}
.icon-folder-images:before {
    content: "\e9a8";
}
.icon-folder-music:before {
    content: "\e9a9";
}
.icon-folder-video:before {
    content: "\e9aa";
}
.icon-folder:before {
    content: "\e9ab";
}
.icon-forward:before {
    content: "\e9ac";
}
.icon-funnel:before {
    content: "\e9ad";
}
.icon-game-controller:before {
    content: "\e9ae";
}
.icon-gauge:before {
    content: "\e9af";
}
.icon-globe2:before {
    content: "\e9b0";
}
.icon-graduation-cap:before {
    content: "\e9b1";
}
.icon-grid2:before {
    content: "\e9b2";
}
.icon-hair-cross:before {
    content: "\e9b3";
}
.icon-hand:before {
    content: "\e9b4";
}
.icon-heart-outlined:before {
    content: "\e9b5";
}
.icon-heart3:before {
    content: "\e9b6";
}
.icon-help-with-circle:before {
    content: "\e9b7";
}
.icon-help:before {
    content: "\e9b8";
}
.icon-home:before {
    content: "\e9b9";
}
.icon-hour-glass:before {
    content: "\e9ba";
}
.icon-image-inverted:before {
    content: "\e9bb";
}
.icon-image:before {
    content: "\e9bc";
}
.icon-images:before {
    content: "\e9bd";
}
.icon-inbox:before {
    content: "\e9be";
}
.icon-infinity:before {
    content: "\e9bf";
}
.icon-info-with-circle:before {
    content: "\e9c0";
}
.icon-info:before {
    content: "\e9c1";
}
.icon-key2:before {
    content: "\e9c2";
}
.icon-keyboard:before {
    content: "\e9c3";
}
.icon-lab-flask:before {
    content: "\e9c4";
}
.icon-landline:before {
    content: "\e9c5";
}
.icon-language:before {
    content: "\e9c6";
}
.icon-laptop2:before {
    content: "\e9c7";
}
.icon-leaf:before {
    content: "\e9c8";
}
.icon-level-down:before {
    content: "\e9c9";
}
.icon-level-up:before {
    content: "\e9ca";
}
.icon-lifebuoy:before {
    content: "\e9cb";
}
.icon-light-bulb:before {
    content: "\e9cc";
}
.icon-light-down:before {
    content: "\e9cd";
}
.icon-light-up:before {
    content: "\e9ce";
}
.icon-line-graph:before {
    content: "\e9cf";
}
.icon-link:before {
    content: "\e9d0";
}
.icon-list:before {
    content: "\e9d1";
}
.icon-location-pin:before {
    content: "\e9d2";
}
.icon-location:before {
    content: "\e9d3";
}
.icon-lock-open:before {
    content: "\e9d4";
}
.icon-lock2:before {
    content: "\e9d5";
}
.icon-log-out:before {
    content: "\e9d6";
}
.icon-login:before {
    content: "\e9d7";
}
.icon-loop:before {
    content: "\e9d8";
}
.icon-magnet:before {
    content: "\e9d9";
}
.icon-magnifying-glass2:before {
    content: "\e9da";
}
.icon-mail:before {
    content: "\e9db";
}
.icon-man:before {
    content: "\e9dc";
}
.icon-map2:before {
    content: "\e9dd";
}
.icon-mask:before {
    content: "\e9de";
}
.icon-medal:before {
    content: "\e9df";
}
.icon-megaphone2:before {
    content: "\e9e0";
}
.icon-menu:before {
    content: "\e9e1";
}
.icon-message:before {
    content: "\e9e2";
}
.icon-mic2:before {
    content: "\e9e3";
}
.icon-minus:before {
    content: "\e9e4";
}
.icon-mobile2:before {
    content: "\e9e5";
}
.icon-modern-mic:before {
    content: "\e9e6";
}
.icon-moon:before {
    content: "\e9e7";
}
.icon-mouse:before {
    content: "\e9e8";
}
.icon-music:before {
    content: "\e9e9";
}
.icon-network:before {
    content: "\e9ea";
}
.icon-new-message:before {
    content: "\e9eb";
}
.icon-new:before {
    content: "\e9ec";
}
.icon-news:before {
    content: "\e9ed";
}
.icon-note:before {
    content: "\e9ee";
}
.icon-notification:before {
    content: "\e9ef";
}
.icon-old-mobile:before {
    content: "\e9f0";
}
.icon-old-phone:before {
    content: "\e9f1";
}
.icon-palette:before {
    content: "\e9f2";
}
.icon-paper-plane:before {
    content: "\e9f3";
}
.icon-pencil2:before {
    content: "\e9f4";
}
.icon-phone2:before {
    content: "\e9f5";
}
.icon-pie-chart:before {
    content: "\e9f6";
}
.icon-pin:before {
    content: "\e9f7";
}
.icon-plus:before {
    content: "\e9f8";
}
.icon-popup:before {
    content: "\e9f9";
}
.icon-power-plug:before {
    content: "\e9fa";
}
.icon-price-ribbon:before {
    content: "\e9fb";
}
.icon-price-tag:before {
    content: "\e9fc";
}
.icon-print:before {
    content: "\e9fd";
}
.icon-progress-empty:before {
    content: "\e9fe";
}
.icon-progress-full:before {
    content: "\e9ff";
}
.icon-progress-one:before {
    content: "\ea00";
}
.icon-progress-two:before {
    content: "\ea01";
}
.icon-publish:before {
    content: "\ea02";
}
.icon-quote2:before {
    content: "\ea03";
}
.icon-radio:before {
    content: "\ea04";
}
.icon-reply-all:before {
    content: "\ea05";
}
.icon-reply:before {
    content: "\ea06";
}
.icon-retweet:before {
    content: "\ea07";
}
.icon-rocket:before {
    content: "\ea08";
}
.icon-round-brush:before {
    content: "\ea09";
}
.icon-rss2:before {
    content: "\ea0a";
}
.icon-ruler:before {
    content: "\ea0b";
}
.icon-scissors2:before {
    content: "\ea0c";
}
.icon-share-alternitive:before {
    content: "\ea0d";
}
.icon-share:before {
    content: "\ea0e";
}
.icon-shareable:before {
    content: "\ea0f";
}
.icon-shield2:before {
    content: "\ea10";
}
.icon-shop:before {
    content: "\ea11";
}
.icon-shopping-bag:before {
    content: "\ea12";
}
.icon-shopping-basket:before {
    content: "\ea13";
}
.icon-shopping-cart:before {
    content: "\ea14";
}
.icon-shuffle:before {
    content: "\ea15";
}
.icon-signal:before {
    content: "\ea16";
}
.icon-sound-mix:before {
    content: "\ea17";
}
.icon-sports-club:before {
    content: "\ea18";
}
.icon-spreadsheet:before {
    content: "\ea19";
}
.icon-squared-cross:before {
    content: "\ea1a";
}
.icon-squared-minus:before {
    content: "\ea1b";
}
.icon-squared-plus:before {
    content: "\ea1c";
}
.icon-star-outlined:before {
    content: "\ea1d";
}
.icon-star:before {
    content: "\ea1e";
}
.icon-stopwatch:before {
    content: "\ea1f";
}
.icon-suitcase:before {
    content: "\ea20";
}
.icon-swap:before {
    content: "\ea21";
}
.icon-sweden:before {
    content: "\ea22";
}
.icon-switch:before {
    content: "\ea23";
}
.icon-tablet2:before {
    content: "\ea24";
}
.icon-tag:before {
    content: "\ea25";
}
.icon-text-document-inverted:before {
    content: "\ea26";
}
.icon-text-document:before {
    content: "\ea27";
}
.icon-text:before {
    content: "\ea28";
}
.icon-thermometer:before {
    content: "\ea29";
}
.icon-thumbs-down:before {
    content: "\ea2a";
}
.icon-thumbs-up:before {
    content: "\ea2b";
}
.icon-thunder-cloud:before {
    content: "\ea2c";
}
.icon-ticket:before {
    content: "\ea2d";
}
.icon-time-slot:before {
    content: "\ea2e";
}
.icon-tools2:before {
    content: "\ea2f";
}
.icon-traffic-cone:before {
    content: "\ea30";
}
.icon-tree:before {
    content: "\ea31";
}
.icon-trophy3:before {
    content: "\ea32";
}
.icon-tv:before {
    content: "\ea33";
}
.icon-typing:before {
    content: "\ea34";
}
.icon-unread:before {
    content: "\ea35";
}
.icon-untag:before {
    content: "\ea36";
}
.icon-user:before {
    content: "\ea37";
}
.icon-users:before {
    content: "\ea38";
}
.icon-v-card:before {
    content: "\ea39";
}
.icon-video2:before {
    content: "\ea3a";
}
.icon-vinyl:before {
    content: "\ea3b";
}
.icon-voicemail:before {
    content: "\ea3c";
}
.icon-wallet2:before {
    content: "\ea3d";
}
.icon-water:before {
    content: "\ea3e";
}
.icon-500px-with-circle:before {
    content: "\ea3f";
}
.icon-500px:before {
    content: "\ea40";
}
.icon-basecamp:before {
    content: "\ea41";
}
.icon-behance:before {
    content: "\ea42";
}
.icon-creative-cloud:before {
    content: "\ea43";
}
.icon-dropbox:before {
    content: "\ea44";
}
.icon-evernote:before {
    content: "\ea45";
}
.icon-flattr:before {
    content: "\ea46";
}
.icon-foursquare:before {
    content: "\ea47";
}
.icon-google-drive:before {
    content: "\ea48";
}
.icon-google-hangouts:before {
    content: "\ea49";
}
.icon-grooveshark:before {
    content: "\ea4a";
}
.icon-icloud:before {
    content: "\ea4b";
}
.icon-mixi:before {
    content: "\ea4c";
}
.icon-onedrive:before {
    content: "\ea4d";
}
.icon-paypal:before {
    content: "\ea4e";
}
.icon-picasa:before {
    content: "\ea4f";
}
.icon-qq:before {
    content: "\ea50";
}
.icon-rdio-with-circle:before {
    content: "\ea51";
}
.icon-renren:before {
    content: "\ea52";
}
.icon-scribd:before {
    content: "\ea53";
}
.icon-sina-weibo:before {
    content: "\ea54";
}
.icon-skype-with-circle:before {
    content: "\ea55";
}
.icon-skype:before {
    content: "\ea56";
}
.icon-slideshare:before {
    content: "\ea57";
}
.icon-smashing:before {
    content: "\ea58";
}
.icon-soundcloud:before {
    content: "\ea59";
}
.icon-spotify-with-circle:before {
    content: "\ea5a";
}
.icon-spotify:before {
    content: "\ea5b";
}
.icon-swarm:before {
    content: "\ea5c";
}
.icon-vine-with-circle:before {
    content: "\ea5d";
}
.icon-vine:before {
    content: "\ea5e";
}
.icon-vk-alternitive:before {
    content: "\ea5f";
}
.icon-vk-with-circle:before {
    content: "\ea60";
}
.icon-vk:before {
    content: "\ea61";
}
.icon-xing-with-circle:before {
    content: "\ea62";
}
.icon-xing:before {
    content: "\ea63";
}
.icon-yelp:before {
    content: "\ea64";
}
.icon-dribbble-with-circle:before {
    content: "\ea65";
}
.icon-dribbble2:before {
    content: "\ea66";
}
.icon-facebook-with-circle:before {
    content: "\ea67";
}
.icon-facebook2:before {
    content: "\ea68";
}
.icon-flickr-with-circle:before {
    content: "\ea69";
}
.icon-flickr:before {
    content: "\ea6a";
}
.icon-github-with-circle:before {
    content: "\ea6b";
}
.icon-github:before {
    content: "\ea6c";
}
.icon-google-with-circle:before {
    content: "\ea6d";
}
.icon-google:before {
    content: "\ea6e";
}
.icon-instagram-with-circle:before {
    content: "\ea6f";
}
.icon-instagram:before {
    content: "\ea70";
}
.icon-lastfm-with-circle:before {
    content: "\ea71";
}
.icon-lastfm:before {
    content: "\ea72";
}
.icon-linkedin-with-circle:before {
    content: "\ea73";
}
.icon-linkedin2:before {
    content: "\ea74";
}
.icon-pinterest-with-circle:before {
    content: "\ea75";
}
.icon-pinterest:before {
    content: "\ea76";
}
.icon-rdio:before {
    content: "\ea77";
}
.icon-stumbleupon-with-circle:before {
    content: "\ea78";
}
.icon-stumbleupon:before {
    content: "\ea79";
}
.icon-tumblr-with-circle:before {
    content: "\ea7a";
}
.icon-tumblr2:before {
    content: "\ea7b";
}
.icon-twitter-with-circle:before {
    content: "\ea7c";
}
.icon-twitter2:before {
    content: "\ea7d";
}
.icon-vimeo-with-circle:before {
    content: "\ea7e";
}
.icon-vimeo:before {
    content: "\ea7f";
}
.icon-youtube-with-circle:before {
    content: "\ea80";
}
.icon-youtube:before {
    content: "\ea81";
}
.icon-home3:before {
    content: "\eabe";
}
.icon-home22:before {
    content: "\eabf";
}
.icon-home32:before {
    content: "\eac0";
}
.icon-office:before {
    content: "\eac1";
}
.icon-newspaper2:before {
    content: "\eac2";
}
.icon-pencil3:before {
    content: "\eac3";
}
.icon-pencil22:before {
    content: "\eac4";
}
.icon-quill:before {
    content: "\eac5";
}
.icon-pen:before {
    content: "\eac6";
}
.icon-blog:before {
    content: "\eac7";
}
.icon-eyedropper:before {
    content: "\eac8";
}
.icon-droplet:before {
    content: "\eac9";
}
.icon-paint-format:before {
    content: "\eaca";
}
.icon-image3:before {
    content: "\eacb";
}
.icon-images2:before {
    content: "\eacc";
}
.icon-camera4:before {
    content: "\eacd";
}
.icon-headphones:before {
    content: "\eace";
}
.icon-music2:before {
    content: "\eacf";
}
.icon-play2:before {
    content: "\ead0";
}
.icon-film2:before {
    content: "\ead1";
}
.icon-video-camera2:before {
    content: "\ead2";
}
.icon-dice:before {
    content: "\ead3";
}
.icon-pacman:before {
    content: "\ead4";
}
.icon-spades:before {
    content: "\ead5";
}
.icon-clubs:before {
    content: "\ead6";
}
.icon-diamonds:before {
    content: "\ead7";
}
.icon-bullhorn:before {
    content: "\ead8";
}
.icon-connection:before {
    content: "\ead9";
}
.icon-podcast:before {
    content: "\eada";
}
.icon-feed:before {
    content: "\eadb";
}
.icon-mic3:before {
    content: "\eadc";
}
.icon-book3:before {
    content: "\eadd";
}
.icon-books:before {
    content: "\eade";
}
.icon-library:before {
    content: "\eadf";
}
.icon-file-text:before {
    content: "\eae0";
}
.icon-profile:before {
    content: "\eae1";
}
.icon-file-empty:before {
    content: "\eae2";
}
.icon-files-empty:before {
    content: "\eae3";
}
.icon-file-text2:before {
    content: "\eae4";
}
.icon-file-picture:before {
    content: "\eae5";
}
.icon-file-music:before {
    content: "\eae6";
}
.icon-file-play:before {
    content: "\eae7";
}
.icon-file-video:before {
    content: "\eae8";
}
.icon-file-zip:before {
    content: "\eae9";
}
.icon-copy2:before {
    content: "\eaea";
}
.icon-paste:before {
    content: "\eaeb";
}
.icon-stack:before {
    content: "\eaec";
}
.icon-folder3:before {
    content: "\eaed";
}
.icon-folder-open:before {
    content: "\eaee";
}
.icon-folder-plus:before {
    content: "\eaef";
}
.icon-folder-minus:before {
    content: "\eaf0";
}
.icon-folder-download:before {
    content: "\eaf1";
}
.icon-folder-upload:before {
    content: "\eaf2";
}
.icon-price-tag2:before {
    content: "\eaf3";
}
.icon-price-tags:before {
    content: "\eaf4";
}
.icon-barcode:before {
    content: "\eaf5";
}
.icon-qrcode:before {
    content: "\eaf6";
}
.icon-ticket2:before {
    content: "\eaf7";
}
.icon-cart2:before {
    content: "\eaf8";
}
.icon-coin-dollar:before {
    content: "\eaf9";
}
.icon-coin-euro:before {
    content: "\eafa";
}
.icon-coin-pound:before {
    content: "\eafb";
}
.icon-coin-yen:before {
    content: "\eafc";
}
.icon-credit-card2:before {
    content: "\eafd";
}
.icon-calculator2:before {
    content: "\eafe";
}
.icon-lifebuoy2:before {
    content: "\eaff";
}
.icon-phone3:before {
    content: "\eb00";
}
.icon-phone-hang-up:before {
    content: "\eb01";
}
.icon-address-book:before {
    content: "\eb02";
}
.icon-envelop:before {
    content: "\eb03";
}
.icon-pushpin:before {
    content: "\eb04";
}
.icon-location3:before {
    content: "\eb05";
}
.icon-location22:before {
    content: "\eb06";
}
.icon-compass3:before {
    content: "\eb07";
}
.icon-compass22:before {
    content: "\eb08";
}
.icon-map3:before {
    content: "\eb09";
}
.icon-map22:before {
    content: "\eb0a";
}
.icon-history:before {
    content: "\eb0b";
}
.icon-clock4:before {
    content: "\eb0c";
}
.icon-clock22:before {
    content: "\eb0d";
}
.icon-alarm:before {
    content: "\eb0e";
}
.icon-bell3:before {
    content: "\eb0f";
}
.icon-stopwatch2:before {
    content: "\eb10";
}
.icon-calendar4:before {
    content: "\eb11";
}
.icon-printer3:before {
    content: "\eb12";
}
.icon-keyboard2:before {
    content: "\eb13";
}
.icon-display:before {
    content: "\eb14";
}
.icon-laptop3:before {
    content: "\eb15";
}
.icon-mobile3:before {
    content: "\eb16";
}
.icon-mobile22:before {
    content: "\eb17";
}
.icon-tablet3:before {
    content: "\eb18";
}
.icon-tv2:before {
    content: "\eb19";
}
.icon-drawer:before {
    content: "\eb1a";
}
.icon-drawer2:before {
    content: "\eb1b";
}
.icon-box-add:before {
    content: "\eb1c";
}
.icon-box-remove:before {
    content: "\eb1d";
}
.icon-download4:before {
    content: "\eb1e";
}
.icon-upload4:before {
    content: "\eb1f";
}
.icon-floppy-disk:before {
    content: "\eb20";
}
.icon-drive2:before {
    content: "\eb21";
}
.icon-database2:before {
    content: "\eb22";
}
.icon-undo:before {
    content: "\eb23";
}
.icon-redo:before {
    content: "\eb24";
}
.icon-undo2:before {
    content: "\eb25";
}
.icon-redo2:before {
    content: "\eb26";
}
.icon-forward3:before {
    content: "\eb27";
}
.icon-reply3:before {
    content: "\eb28";
}
.icon-bubble2:before {
    content: "\eb29";
}
.icon-bubbles2:before {
    content: "\eb2a";
}
.icon-bubbles22:before {
    content: "\eb2b";
}
.icon-bubble22:before {
    content: "\eb2c";
}
.icon-bubbles3:before {
    content: "\eb2d";
}
.icon-bubbles4:before {
    content: "\eb2e";
}
.icon-user3:before {
    content: "\eb2f";
}
.icon-users3:before {
    content: "\eb30";
}
.icon-user-plus:before {
    content: "\eb31";
}
.icon-user-minus:before {
    content: "\eb32";
}
.icon-user-check:before {
    content: "\eb33";
}
.icon-user-tie:before {
    content: "\eb34";
}
.icon-quotes-left:before {
    content: "\eb35";
}
.icon-quotes-right:before {
    content: "\eb36";
}
.icon-hour-glass2:before {
    content: "\eb37";
}
.icon-spinner:before {
    content: "\eb38";
}
.icon-spinner2:before {
    content: "\eb39";
}
.icon-spinner3:before {
    content: "\eb3a";
}
.icon-spinner4:before {
    content: "\eb3b";
}
.icon-spinner5:before {
    content: "\eb3c";
}
.icon-spinner6:before {
    content: "\eb3d";
}
.icon-spinner7:before {
    content: "\eb3e";
}
.icon-spinner8:before {
    content: "\eb3f";
}
.icon-spinner9:before {
    content: "\eb40";
}
.icon-spinner10:before {
    content: "\eb41";
}
.icon-spinner11:before {
    content: "\eb42";
}
.icon-binoculars:before {
    content: "\eb43";
}
.icon-search3:before {
    content: "\eb44";
}
.icon-zoom-in:before {
    content: "\eb45";
}
.icon-zoom-out:before {
    content: "\eb46";
}
.icon-enlarge:before {
    content: "\eb47";
}
.icon-shrink:before {
    content: "\eb48";
}
.icon-enlarge2:before {
    content: "\eb49";
}
.icon-shrink2:before {
    content: "\eb4a";
}
.icon-key3:before {
    content: "\eb4b";
}
.icon-key22:before {
    content: "\eb4c";
}
.icon-lock3:before {
    content: "\eb4d";
}
.icon-unlocked:before {
    content: "\eb4e";
}
.icon-wrench:before {
    content: "\eb4f";
}
.icon-equalizer:before {
    content: "\eb50";
}
.icon-equalizer2:before {
    content: "\eb51";
}
.icon-cog3:before {
    content: "\eb52";
}
.icon-cogs:before {
    content: "\eb53";
}
.icon-hammer:before {
    content: "\eb54";
}
.icon-magic-wand:before {
    content: "\eb55";
}
.icon-aid-kit:before {
    content: "\eb56";
}
.icon-bug:before {
    content: "\eb57";
}
.icon-pie-chart2:before {
    content: "\eb58";
}
.icon-stats-dots:before {
    content: "\eb59";
}
.icon-stats-bars:before {
    content: "\eb5a";
}
.icon-stats-bars2:before {
    content: "\eb5b";
}
.icon-trophy4:before {
    content: "\eb5c";
}
.icon-gift2:before {
    content: "\eb5d";
}
.icon-glass:before {
    content: "\eb5e";
}
.icon-glass2:before {
    content: "\eb5f";
}
.icon-mug:before {
    content: "\eb60";
}
.icon-spoon-knife:before {
    content: "\eb61";
}
.icon-leaf2:before {
    content: "\eb62";
}
.icon-rocket2:before {
    content: "\eb63";
}
.icon-meter:before {
    content: "\eb64";
}
.icon-meter2:before {
    content: "\eb65";
}
.icon-hammer2:before {
    content: "\eb66";
}
.icon-fire:before {
    content: "\eb67";
}
.icon-lab:before {
    content: "\eb68";
}
.icon-magnet2:before {
    content: "\eb69";
}
.icon-bin:before {
    content: "\eb6a";
}
.icon-bin2:before {
    content: "\eb6b";
}
.icon-briefcase3:before {
    content: "\eb6c";
}
.icon-airplane:before {
    content: "\eb6d";
}
.icon-truck:before {
    content: "\eb6e";
}
.icon-road:before {
    content: "\eb6f";
}
.icon-accessibility:before {
    content: "\eb70";
}
.icon-target3:before {
    content: "\eb71";
}
.icon-shield3:before {
    content: "\eb72";
}
.icon-power:before {
    content: "\eb73";
}
.icon-switch3:before {
    content: "\eb74";
}
.icon-power-cord:before {
    content: "\eb75";
}
.icon-clipboard3:before {
    content: "\eb76";
}
.icon-list-numbered:before {
    content: "\eb77";
}
.icon-list2:before {
    content: "\eb78";
}
.icon-list22:before {
    content: "\eb79";
}
.icon-tree2:before {
    content: "\eb7a";
}
.icon-menu2:before {
    content: "\eb7b";
}
.icon-menu22:before {
    content: "\eb7c";
}
.icon-menu3:before {
    content: "\eb7d";
}
.icon-menu4:before {
    content: "\eb7e";
}
.icon-cloud4:before {
    content: "\eb7f";
}
.icon-cloud-download:before {
    content: "\eb80";
}
.icon-cloud-upload:before {
    content: "\eb81";
}
.icon-cloud-check:before {
    content: "\eb82";
}
.icon-download22:before {
    content: "\eb83";
}
.icon-upload22:before {
    content: "\eb84";
}
.icon-download32:before {
    content: "\eb85";
}
.icon-upload32:before {
    content: "\eb86";
}
.icon-sphere:before {
    content: "\eb87";
}
.icon-earth:before {
    content: "\eb88";
}
.icon-link2:before {
    content: "\eb89";
}
.icon-flag4:before {
    content: "\eb8a";
}
.icon-attachment3:before {
    content: "\eb8b";
}
.icon-eye3:before {
    content: "\eb8c";
}
.icon-eye-plus:before {
    content: "\eb8d";
}
.icon-eye-minus:before {
    content: "\eb8e";
}
.icon-eye-blocked:before {
    content: "\eb8f";
}
.icon-bookmark3:before {
    content: "\eb90";
}
.icon-bookmarks2:before {
    content: "\eb91";
}
.icon-sun2:before {
    content: "\eb92";
}
.icon-contrast:before {
    content: "\eb93";
}
.icon-brightness-contrast:before {
    content: "\eb94";
}
.icon-star-empty:before {
    content: "\eb95";
}
.icon-star-half:before {
    content: "\eb96";
}
.icon-star-full:before {
    content: "\eb97";
}
.icon-heart4:before {
    content: "\eb98";
}
.icon-heart-broken:before {
    content: "\eb99";
}
.icon-man2:before {
    content: "\eb9a";
}
.icon-woman:before {
    content: "\eb9b";
}
.icon-man-woman:before {
    content: "\eb9c";
}
.icon-happy2:before {
    content: "\eb9d";
}
.icon-happy22:before {
    content: "\eb9e";
}
.icon-smile:before {
    content: "\eb9f";
}
.icon-smile2:before {
    content: "\eba0";
}
.icon-tongue:before {
    content: "\eba1";
}
.icon-tongue2:before {
    content: "\eba2";
}
.icon-sad2:before {
    content: "\eba3";
}
.icon-sad22:before {
    content: "\eba4";
}
.icon-wink:before {
    content: "\eba5";
}
.icon-wink2:before {
    content: "\eba6";
}
.icon-grin:before {
    content: "\eba7";
}
.icon-grin2:before {
    content: "\eba8";
}
.icon-cool:before {
    content: "\eba9";
}
.icon-cool2:before {
    content: "\ebaa";
}
.icon-angry:before {
    content: "\ebab";
}
.icon-angry2:before {
    content: "\ebac";
}
.icon-evil:before {
    content: "\ebad";
}
.icon-evil2:before {
    content: "\ebae";
}
.icon-shocked:before {
    content: "\ebaf";
}
.icon-shocked2:before {
    content: "\ebb0";
}
.icon-baffled:before {
    content: "\ebb1";
}
.icon-baffled2:before {
    content: "\ebb2";
}
.icon-confused:before {
    content: "\ebb3";
}
.icon-confused2:before {
    content: "\ebb4";
}
.icon-neutral:before {
    content: "\ebb5";
}
.icon-neutral2:before {
    content: "\ebb6";
}
.icon-hipster:before {
    content: "\ebb7";
}
.icon-hipster2:before {
    content: "\ebb8";
}
.icon-wondering:before {
    content: "\ebb9";
}
.icon-wondering2:before {
    content: "\ebba";
}
.icon-sleepy:before {
    content: "\ebbb";
}
.icon-sleepy2:before {
    content: "\ebbc";
}
.icon-frustrated:before {
    content: "\ebbd";
}
.icon-frustrated2:before {
    content: "\ebbe";
}
.icon-crying:before {
    content: "\ebbf";
}
.icon-crying2:before {
    content: "\ebc0";
}
.icon-point-up:before {
    content: "\ebc1";
}
.icon-point-right:before {
    content: "\ebc2";
}
.icon-point-down:before {
    content: "\ebc3";
}
.icon-point-left:before {
    content: "\ebc4";
}
.icon-warning2:before {
    content: "\ebc5";
}
.icon-notification2:before {
    content: "\ebc6";
}
.icon-question:before {
    content: "\ebc7";
}
.icon-plus3:before {
    content: "\ebc8";
}
.icon-minus2:before {
    content: "\ebc9";
}
.icon-info2:before {
    content: "\ebca";
}
.icon-cancel-circle:before {
    content: "\ebcb";
}
.icon-blocked:before {
    content: "\ebcc";
}
.icon-cross3:before {
    content: "\ebcd";
}
.icon-checkmark:before {
    content: "\ebce";
}
.icon-checkmark2:before {
    content: "\ebcf";
}
.icon-spell-check:before {
    content: "\ebd0";
}
.icon-enter:before {
    content: "\ebd1";
}
.icon-exit:before {
    content: "\ebd2";
}
.icon-play22:before {
    content: "\ebd3";
}
.icon-pause:before {
    content: "\ebd4";
}
.icon-stop:before {
    content: "\ebd5";
}
.icon-previous:before {
    content: "\ebd6";
}
.icon-next2:before {
    content: "\ebd7";
}
.icon-backward:before {
    content: "\ebd8";
}
.icon-forward22:before {
    content: "\ebd9";
}
.icon-play3:before {
    content: "\ebda";
}
.icon-pause2:before {
    content: "\ebdb";
}
.icon-stop2:before {
    content: "\ebdc";
}
.icon-backward2:before {
    content: "\ebdd";
}
.icon-forward32:before {
    content: "\ebde";
}
.icon-first:before {
    content: "\ebdf";
}
.icon-last:before {
    content: "\ebe0";
}
.icon-previous2:before {
    content: "\ebe1";
}
.icon-next22:before {
    content: "\ebe2";
}
.icon-eject:before {
    content: "\ebe3";
}
.icon-volume-high:before {
    content: "\ebe4";
}
.icon-volume-medium:before {
    content: "\ebe5";
}
.icon-volume-low:before {
    content: "\ebe6";
}
.icon-volume-mute:before {
    content: "\ebe7";
}
.icon-volume-mute2:before {
    content: "\ebe8";
}
.icon-volume-increase:before {
    content: "\ebe9";
}
.icon-volume-decrease:before {
    content: "\ebea";
}
.icon-loop2:before {
    content: "\ebeb";
}
.icon-loop22:before {
    content: "\ebec";
}
.icon-infinite:before {
    content: "\ebed";
}
.icon-shuffle2:before {
    content: "\ebee";
}
.icon-arrow-up-left:before {
    content: "\ebef";
}
.icon-arrow-up2:before {
    content: "\ebf0";
}
.icon-arrow-up-right:before {
    content: "\ebf1";
}
.icon-arrow-right2:before {
    content: "\ebf2";
}
.icon-arrow-down-right:before {
    content: "\ebf3";
}
.icon-arrow-down2:before {
    content: "\ebf4";
}
.icon-arrow-down-left:before {
    content: "\ebf5";
}
.icon-arrow-left2:before {
    content: "\ebf6";
}
.icon-arrow-up-left2:before {
    content: "\ebf7";
}
.icon-arrow-up22:before {
    content: "\ebf8";
}
.icon-arrow-up-right2:before {
    content: "\ebf9";
}
.icon-arrow-right22:before {
    content: "\ebfa";
}
.icon-arrow-down-right2:before {
    content: "\ebfb";
}
.icon-arrow-down22:before {
    content: "\ebfc";
}
.icon-arrow-down-left2:before {
    content: "\ebfd";
}
.icon-arrow-left22:before {
    content: "\ebfe";
}
.icon-circle-up:before {
    content: "\e900";
}
.icon-circle-right:before {
    content: "\ebff";
}
.icon-circle-down:before {
    content: "\ec00";
}
.icon-circle-left:before {
    content: "\ec01";
}
.icon-tab:before {
    content: "\ec02";
}
.icon-move-up:before {
    content: "\ec03";
}
.icon-move-down:before {
    content: "\ec04";
}
.icon-sort-alpha-asc:before {
    content: "\ec05";
}
.icon-sort-alpha-desc:before {
    content: "\ec06";
}
.icon-sort-numeric-asc:before {
    content: "\ec07";
}
.icon-sort-numberic-desc:before {
    content: "\ec08";
}
.icon-sort-amount-asc:before {
    content: "\ec09";
}
.icon-sort-amount-desc:before {
    content: "\ec0a";
}
.icon-command:before {
    content: "\ec0b";
}
.icon-shift:before {
    content: "\ec0c";
}
.icon-ctrl:before {
    content: "\ec0d";
}
.icon-opt:before {
    content: "\ec0e";
}
.icon-checkbox-checked:before {
    content: "\ec0f";
}
.icon-checkbox-unchecked:before {
    content: "\ec10";
}
.icon-radio-checked:before {
    content: "\ec11";
}
.icon-radio-checked2:before {
    content: "\ec12";
}
.icon-radio-unchecked:before {
    content: "\ec13";
}
.icon-crop:before {
    content: "\ec14";
}
.icon-make-group:before {
    content: "\ec15";
}
.icon-ungroup:before {
    content: "\ec16";
}
.icon-scissors3:before {
    content: "\ec17";
}
.icon-filter:before {
    content: "\ec18";
}
.icon-font:before {
    content: "\ec19";
}
.icon-ligature:before {
    content: "\ec1a";
}
.icon-ligature2:before {
    content: "\ec1b";
}
.icon-text-height:before {
    content: "\ec1c";
}
.icon-text-width:before {
    content: "\ec1d";
}
.icon-font-size:before {
    content: "\ec1e";
}
.icon-bold:before {
    content: "\ec1f";
}
.icon-underline:before {
    content: "\ec20";
}
.icon-italic:before {
    content: "\ec21";
}
.icon-strikethrough:before {
    content: "\ec22";
}
.icon-omega:before {
    content: "\ec23";
}
.icon-sigma:before {
    content: "\ec24";
}
.icon-page-break:before {
    content: "\ec25";
}
.icon-superscript:before {
    content: "\ec26";
}
.icon-subscript:before {
    content: "\ec27";
}
.icon-superscript2:before {
    content: "\ec28";
}
.icon-subscript2:before {
    content: "\ec29";
}
.icon-text-color:before {
    content: "\ec2a";
}
.icon-pagebreak:before {
    content: "\ec2b";
}
.icon-clear-formatting:before {
    content: "\ec2c";
}
.icon-table:before {
    content: "\ec2d";
}
.icon-table2:before {
    content: "\ec2e";
}
.icon-insert-template:before {
    content: "\ec2f";
}
.icon-pilcrow:before {
    content: "\ec30";
}
.icon-ltr:before {
    content: "\ec31";
}
.icon-rtl:before {
    content: "\ec32";
}
.icon-section:before {
    content: "\ec33";
}
.icon-paragraph-left:before {
    content: "\ec34";
}
.icon-paragraph-center:before {
    content: "\ec35";
}
.icon-paragraph-right:before {
    content: "\ec36";
}
.icon-paragraph-justify:before {
    content: "\ec37";
}
.icon-indent-increase:before {
    content: "\ec38";
}
.icon-indent-decrease:before {
    content: "\ec39";
}
.icon-share2:before {
    content: "\ec3a";
}
.icon-new-tab:before {
    content: "\ec3b";
}
.icon-embed:before {
    content: "\ec3c";
}
.icon-embed2:before {
    content: "\ec3d";
}
.icon-terminal:before {
    content: "\ec3e";
}
.icon-share22:before {
    content: "\ec3f";
}
.icon-mail2:before {
    content: "\ec40";
}
.icon-mail22:before {
    content: "\ec41";
}
.icon-mail3:before {
    content: "\ec42";
}
.icon-mail4:before {
    content: "\ec43";
}
.icon-amazon:before {
    content: "\ec44";
}
.icon-google2:before {
    content: "\ec45";
}
.icon-google22:before {
    content: "\ec46";
}
.icon-google3:before {
    content: "\ec47";
}
.icon-google-plus:before {
    content: "\ec48";
}
.icon-google-plus2:before {
    content: "\ec49";
}
.icon-google-plus3:before {
    content: "\ec4a";
}
.icon-hangouts:before {
    content: "\ec4b";
}
.icon-google-drive2:before {
    content: "\ec4c";
}
.icon-facebook3:before {
    content: "\ec4d";
}
.icon-facebook22:before {
    content: "\ec4e";
}
.icon-instagram2:before {
    content: "\ec4f";
}
.icon-whatsapp:before {
    content: "\ec50";
}
.icon-spotify2:before {
    content: "\ec51";
}
.icon-telegram:before {
    content: "\ec52";
}
.icon-twitter3:before {
    content: "\ec53";
}
.icon-vine2:before {
    content: "\ec54";
}
.icon-vk2:before {
    content: "\ec55";
}
.icon-renren2:before {
    content: "\ec56";
}
.icon-sina-weibo2:before {
    content: "\ec57";
}
.icon-rss3:before {
    content: "\ec58";
}
.icon-rss22:before {
    content: "\ec59";
}
.icon-youtube2:before {
    content: "\ec5a";
}
.icon-youtube22:before {
    content: "\ec5b";
}
.icon-twitch:before {
    content: "\ec5c";
}
.icon-vimeo2:before {
    content: "\ec5d";
}
.icon-vimeo22:before {
    content: "\ec5e";
}
.icon-lanyrd:before {
    content: "\ec5f";
}
.icon-flickr2:before {
    content: "\ec60";
}
.icon-flickr22:before {
    content: "\ec61";
}
.icon-flickr3:before {
    content: "\ec62";
}
.icon-flickr4:before {
    content: "\ec63";
}
.icon-dribbble3:before {
    content: "\ec64";
}
.icon-behance2:before {
    content: "\ec65";
}
.icon-behance22:before {
    content: "\ec66";
}
.icon-deviantart:before {
    content: "\ec67";
}
.icon-500px2:before {
    content: "\ec68";
}
.icon-steam:before {
    content: "\ec69";
}
.icon-steam2:before {
    content: "\ec6a";
}
.icon-dropbox2:before {
    content: "\ec6b";
}
.icon-onedrive2:before {
    content: "\ec6c";
}
.icon-github2:before {
    content: "\ec6d";
}
.icon-npm:before {
    content: "\ec6e";
}
.icon-basecamp2:before {
    content: "\ec6f";
}
.icon-trello:before {
    content: "\ec70";
}
.icon-wordpress:before {
    content: "\ec71";
}
.icon-joomla:before {
    content: "\ec72";
}
.icon-ello:before {
    content: "\ec73";
}
.icon-blogger:before {
    content: "\ec74";
}
.icon-blogger2:before {
    content: "\ec75";
}
.icon-tumblr3:before {
    content: "\ec76";
}
.icon-tumblr22:before {
    content: "\ec77";
}
.icon-yahoo:before {
    content: "\ec78";
}
.icon-yahoo2:before {
    content: "\ec79";
}
.icon-tux:before {
    content: "\ec7a";
}
.icon-appleinc:before {
    content: "\ec7b";
}
.icon-finder:before {
    content: "\ec7c";
}
.icon-android:before {
    content: "\ec7d";
}
.icon-windows2:before {
    content: "\ec7e";
}
.icon-windows8:before {
    content: "\ec7f";
}
.icon-soundcloud2:before {
    content: "\ec80";
}
.icon-soundcloud22:before {
    content: "\ec81";
}
.icon-skype2:before {
    content: "\ec82";
}
.icon-reddit:before {
    content: "\ec83";
}
.icon-hackernews:before {
    content: "\ec84";
}
.icon-wikipedia:before {
    content: "\ec85";
}
.icon-linkedin3:before {
    content: "\ec86";
}
.icon-linkedin22:before {
    content: "\ec87";
}
.icon-lastfm2:before {
    content: "\ec88";
}
.icon-lastfm22:before {
    content: "\ec89";
}
.icon-delicious:before {
    content: "\ec8a";
}
.icon-stumbleupon2:before {
    content: "\ec8b";
}
.icon-stumbleupon22:before {
    content: "\ec8c";
}
.icon-stackoverflow:before {
    content: "\ec8d";
}
.icon-pinterest2:before {
    content: "\ec8e";
}
.icon-pinterest22:before {
    content: "\ec8f";
}
.icon-xing2:before {
    content: "\ec90";
}
.icon-xing22:before {
    content: "\ec91";
}
.icon-flattr2:before {
    content: "\ec92";
}
.icon-foursquare2:before {
    content: "\ec93";
}
.icon-yelp2:before {
    content: "\ec94";
}
.icon-paypal2:before {
    content: "\ec95";
}
.icon-chrome:before {
    content: "\ec96";
}
.icon-firefox:before {
    content: "\ec97";
}
.icon-IE:before {
    content: "\ec98";
}
.icon-edge:before {
    content: "\ec99";
}
.icon-safari:before {
    content: "\ec9a";
}
.icon-opera:before {
    content: "\ec9b";
}
.icon-file-pdf:before {
    content: "\ec9c";
}
.icon-file-openoffice:before {
    content: "\ec9d";
}
.icon-file-word:before {
    content: "\ec9e";
}
.icon-file-excel:before {
    content: "\ec9f";
}
.icon-libreoffice:before {
    content: "\eca0";
}
.icon-html-five:before {
    content: "\eca1";
}
.icon-html-five2:before {
    content: "\eca2";
}
.icon-css3:before {
    content: "\eca3";
}
.icon-git:before {
    content: "\eca4";
}
.icon-codepen:before {
    content: "\eca5";
}
.icon-svg:before {
    content: "\eca6";
}
.icon-IcoMoon:before {
    content: "\eca7";
}

@font-face {
  font-family: 'icomoon';
  src: url("../fonts/icomoon/icomoon.eot?srf3rx");
  src: url("../fonts/icomoon/icomoon.eot?srf3rx#iefix") format("embedded-opentype"), url("../fonts/icomoon/icomoon.ttf?srf3rx") format("truetype"), url("../fonts/icomoon/icomoon.woff?srf3rx") format("woff"), url("../fonts/icomoon/icomoon.svg?srf3rx#icomoon") format("svg");
  font-weight: normal;
  font-style: normal;
}
/* =======================================================
*
* 	Template Style 
*	Edit this section
*
* ======================================================= */
body {
  font-family: "Source Sans Pro", Arial, sans-serif;
  line-height: 1.5;
  background: #fff;
  color: #848484;
  font-weight: 300;
  overflow-x: hidden;
}
body.fh5co-offcanvas {
  overflow-x: hidden;
}

a {
  color: #79c34f;
  -webkit-transition: 0.5s;
  -o-transition: 0.5s;
  transition: 0.5s;
}
a:hover {
  text-decoration: none !important;
  color: #79c34f !important;
}

p {
  margin-bottom: 1.5em;
  font-size: 20px;
  color: #848484;
  font-weight: 300;
  font-family: "Source Sans Pro", Arial, sans-serif;
}

h1, h2, h3, h4, h5, h6 {
  color: #5a5a5a;
  font-family: "Source Sans Pro", Arial, sans-serif;
  font-weight: 400;
  margin: 0 0 30px 0;
}

figure {
  margin-bottom: 2em;
}

::-webkit-selection {
  color: #fcfcfc;
  background: #add992;
}

::-moz-selection {
  color: #fcfcfc;
  background: #add992;
}

::selection {
  color: #fcfcfc;
  background: #add992;
}

#fh5co-header {
  position: relative;
  margin-bottom: 0;
}
@media screen and (max-width: 480px) {
  #fh5co-header .top {
    text-align: center;
  }
}
#fh5co-header .top a {
  color: rgba(255, 255, 255, 0.7);
  -webkit-transition: 0.5s;
  -o-transition: 0.5s;
  transition: 0.5s;
}
@media screen and (max-width: 480px) {
  #fh5co-header .top a {
    float: left;
  }
}
#fh5co-header .top a i {
  font-size: 17px;
  line-height: 0;
  position: relative;
  top: 1px;
  padding-right: 7px;
  font-style: normal;
  display: -moz-inline-stack;
  display: inline-block;
  zoom: 1;
  *display: inline;
}
#fh5co-header .top a:hover {
  color: white !important;
  text-decoration: underline;
}

.fh5co-cover,
.fh5co-hero {
  position: relative;
  height: 800px;
  font-weight: 300;
}
@media screen and (max-width: 768px) {
  .fh5co-cover,
  .fh5co-hero {
    height: 700px;
  }
}

.fh5co-overlay {
  position: absolute !important;
  width: 100%;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  z-index: 1;
  background: rgba(141, 113, 96, 0.3);
}

.fh5co-cover {
  background-size: cover;
  background-position: center top;
  position: relative;
}
@media screen and (max-width: 768px) {
  .fh5co-cover {
    heifght: inherit;
    padding: 3em 0;
  }
}
.fh5co-cover .btn {
  padding: 1em 5em;
  opacity: .9;
}
.fh5co-cover.fh5co-cover_2 {
  height: 700px;
}
@media screen and (max-width: 768px) {
  .fh5co-cover.fh5co-cover_2 {
    heifght: inherit;
    padding: 3em 0;
  }
}
.fh5co-cover .desc {
  top: 50%;
  position: absolute;
  width: 100%;
  margin-top: -40px;
  z-index: 2;
  color: #fff;
}
@media screen and (max-width: 768px) {
  .fh5co-cover .desc {
    padding-left: 15px;
    padding-right: 15px;
  }
}
.fh5co-cover .desc h2 {
  color: #fff;
  text-transform: uppercase;
  font-size: 80px;
  font-weight: 300;
  margin-bottom: 10px;
}
@media screen and (max-width: 768px) {
  .fh5co-cover .desc h2 {
    font-size: 40px;
  }
}
.fh5co-cover .desc span {
  display: block;
  margin-bottom: 30px;
  font-weight: 300;
  font-size: 28px;
  letter-spacing: 1px;
}
.fh5co-cover .desc span a {
  color: #fff;
}
.fh5co-cover .desc span a:hover, .fh5co-cover .desc span a:focus {
  color: #fff !important;
}
.fh5co-cover .desc span a.fh5co-site-name {
  padding-bottom: 5px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.7);
}

.top {
  padding: 10px 0;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  background: rgba(0, 0, 0, 0.05);
  z-index: 99;
  text-align: right;
}
@media screen and (max-width: 768px) {
  .top {
    text-align: center;
  }
}
.top span {
  margin-left: 20px;
  color: #fff;
  position: relative;
  padding-left: 15px;
}
.top span i {
  font-size: 14px;
  position: absolute;
  left: 0;
  top: 4px;
}
.top span a {
  color: #fff;
}

/* Superfish Override Menu */
.sf-menu {
  margin: 0 !important;
}

.sf-menu {
  float: right;
}

.sf-menu ul {
  box-shadow: none;
  border: transparent;
  min-width: 15em;
  *width: 15em;
}

.sf-menu a {
  color: rgba(0, 0, 0, 0.8);
  color: #fff;
  padding: .75em 1em;
  font-weight: normal;
  border-left: none;
  border-top: none;
  border-top: none;
  text-decoration: none;
  zoom: 1;
  font-size: 18px;
  border-bottom: none !important;
}
.sf-menu a:hover, .sf-menu a:focus {
  color: #fff !important;
}

.sf-menu li.active {
  border-bottom: 3px solid #fff;
}
.sf-menu li.active a:hover, .sf-menu li.active a:focus {
  color: #fff;
}

.sf-menu li,
.sf-menu ul li,
.sf-menu ul ul li,
.sf-menu li:hover,
.sf-menu li.sfHover {
  background: transparent;
}

.sf-menu ul li a,
.sf-menu ul ul li a {
  text-transform: none;
  padding: .75em 1em;
  letter-spacing: 1px;
}

.sf-menu li:hover a,
.sf-menu li.sfHover a,
.sf-menu ul li:hover a,
.sf-menu ul li.sfHover a,
.sf-menu li.active a {
  color: #fff;
}

.sf-menu ul li:hover,
.sf-menu ul li.sfHover {
  background: transparent;
}

.sf-menu ul li {
  background: transparent;
}

.sf-arrows .sf-with-ul {
  padding-right: 2.5em;
  *padding-right: 1em;
}

.sf-arrows .sf-with-ul:after {
  content: '';
  position: absolute;
  top: 50%;
  right: 1em;
  margin-top: -3px;
  height: 0;
  width: 0;
  border: 5px solid transparent;
  border-top-color: #ccc;
}

.sf-arrows > li > .sf-with-ul:focus:after,
.sf-arrows > li:hover > .sf-with-ul:after,
.sf-arrows > .sfHover > .sf-with-ul:after {
  border-top-color: #ccc;
}

.sf-arrows ul .sf-with-ul:after {
  margin-top: -5px;
  margin-right: -3px;
  border-color: transparent;
  border-left-color: #ccc;
}

.sf-arrows ul li > .sf-with-ul:focus:after,
.sf-arrows ul li:hover > .sf-with-ul:after,
.sf-arrows ul .sfHover > .sf-with-ul:after {
  border-left-color: #ccc;
}

#fh5co-header-section {
  padding: 0;
  position: absolute;
  top: 5%;
  left: 0;
  width: 100%;
  z-index: 2;
  padding-top: 40px;
}

.nav-header {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  position: relative;
  float: left;
  width: 100%;
}

#fh5co-logo {
  position: relative;
  z-index: 2;
  font-size: 26px;
  text-transform: uppercase;
  letter-spacing: 1px;
  margin-top: 35px;
  font-weight: bold;
  float: left;
}
@media screen and (max-width: 768px) {
  #fh5co-logo {
    width: 100%;
    float: none;
    text-align: center;
  }
}
#fh5co-logo a {
  color: #fff;
}
#fh5co-logo a:hover, #fh5co-logo a:focus {
  color: #fff !important;
}

#fh5co-menu-wrap {
  position: relative;
  z-index: 2;
  display: block;
  float: right;
}
#fh5co-menu-wrap .sf-menu a {
  padding: 2em .75em;
}

#fh5co-primary-menu > li > ul li.active > a {
  color: #79c34f !important;
}
#fh5co-primary-menu > li > .sf-with-ul:after {
  border: none !important;
  position: absolute;
  float: right;
  margin-right: 5px;
  top: 50%;
  margin-top: -7px;
  content: "\e64b";
  color: #1fb5f6;
}
#fh5co-primary-menu > li > ul li {
  position: relative;
}
#fh5co-primary-menu > li > ul li > .sf-with-ul:after {
  border: none !important;
  position: absolute;
  float: right;
  margin-right: 10px;
  top: 13px;
  font-size: 12px;
  content: "\e649";
  color: rgba(255, 255, 255, 0.5);
}

#fh5co-primary-menu .fh5co-sub-menu {
  padding: 10px 7px 10px;
  background: #fff;
  left: 0;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -ms-border-radius: 2px;
  border-radius: 2px;
  -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
  -ms-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
  -o-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
}
#fh5co-primary-menu .fh5co-sub-menu > li > .fh5co-sub-menu {
  left: 100%;
}

#fh5co-primary-menu .fh5co-sub-menu:before {
  position: absolute;
  top: -9px;
  left: 20px;
  width: 0;
  height: 0;
  content: '';
}

#fh5co-primary-menu .fh5co-sub-menu:after {
  position: absolute;
  top: -8px;
  left: 21px;
  width: 0;
  height: 0;
  border-right: 8px solid transparent;
  border-bottom: 8px solid #fff;
  border-bottom: 8px solid white;
  border-left: 8px solid transparent;
  content: '';
}

#fh5co-primary-menu .fh5co-sub-menu .fh5co-sub-menu:before {
  top: 6px;
  left: 100%;
}

#fh5co-primary-menu .fh5co-sub-menu .fh5co-sub-menu:after {
  top: 7px;
  right: 100%;
  border: none !important;
}

.site-header.has-image #primary-menu .sub-menu {
  border-color: #ebebeb;
  -webkit-box-shadow: 0 5px 15px 4px rgba(0, 0, 0, 0.09);
  -moz-box-shadow: 0 5px 15px 4px rgba(0, 0, 0, 0.09);
  -ms-box-shadow: 0 5px 15px 4px rgba(0, 0, 0, 0.09);
  -o-box-shadow: 0 5px 15px 4px rgba(0, 0, 0, 0.09);
  box-shadow: 0 5px 15px 4px rgba(0, 0, 0, 0.09);
}
.site-header.has-image #primary-menu .sub-menu:before {
  display: none;
}

#fh5co-primary-menu .fh5co-sub-menu a {
  letter-spacing: 0;
  padding: 0 15px;
  font-size: 18px;
  line-height: 34px;
  color: #575757 !important;
  text-transform: none;
  background: none;
}
#fh5co-primary-menu .fh5co-sub-menu a:hover {
  color: #79c34f !important;
}

#fh5co-work-section,
#fh5co-services-section,
#fh5co-content-section,
#fh5co-work-section_2 {
  padding: 7em 0;
}
@media screen and (max-width: 768px) {
  #fh5co-work-section,
  #fh5co-services-section,
  #fh5co-content-section,
  #fh5co-work-section_2 {
    padding: 4em 0;
  }
}

h3.heading-section {
  font-size: 16px;
  letter-spacing: 2px;
  text-transform: uppercase;
  position: relative;
  padding-top: 15px;
  font-weight: bold;
}
h3.heading-section:before {
  position: absolute;
  content: '';
  top: 0;
  width: 30px;
  height: 2px;
  background: #79c34f;
}

.fh5co-grid {
  height: 302px;
  background-size: cover;
  background-position: center center;
  margin-bottom: 30px;
  position: relative;
}
@media screen and (max-width: 480px) {
  .fh5co-grid {
    height: 400px;
  }
}
.fh5co-grid .image-popup {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.5);
  opacity: 0;
}
.fh5co-grid .image-popup .prod-title {
  position: absolute;
  top: 50%;
  bottom: 20px;
  left: 20px;
  right: 20px;
  margin-top: -25px;
}
.fh5co-grid .image-popup .prod-title h3 {
  margin-bottom: 10px;
  color: #fff;
  font-size: 20px;
}
.fh5co-grid .image-popup .prod-title span {
  color: #fff;
}
.fh5co-grid:hover .image-popup {
  opacity: 1;
}

.work-wrap-bg {
  padding-top: 3em;
  background: rgba(0, 0, 0, 0.03);
}

.work-wrap {
  height: 100vh;
  width: 100vw;
  content: 'viewport-units-buggyfill; height:100vh; width:100vw';
  display: table;
  position: relative;
  margin-bottom: 0;
}
.work-wrap .fh5co-project-inner {
  display: table-cell;
  vertical-align: middle;
  height: 100vh;
  width: 100vw;
  content: 'viewport-units-buggyfill; height:100vh; width:100vw';
  position: relative;
}
@media screen and (max-width: 768px) {
  .work-wrap .fh5co-project-inner {
    float: left;
    width: 100%;
    height: inherit !important;
    padding: 3em 0;
    width: 100vw;
    content: 'viewport-units-buggyfill; width:100vw';
  }
}
.work-wrap .fh5co-imgs {
  height: calc(100% - 50%);
  position: relative;
}
@media screen and (max-width: 768px) {
  .work-wrap .fh5co-imgs {
    margin-bottom: 80px;
  }
}
.work-wrap .fh5co-imgs .img-holder-1,
.work-wrap .fh5co-imgs .img-holder-2 {
  position: absolute;
}
@media screen and (max-width: 768px) {
  .work-wrap .fh5co-imgs .img-holder-1,
  .work-wrap .fh5co-imgs .img-holder-2 {
    position: relative;
  }
}
.work-wrap .fh5co-imgs .img-holder-1 img,
.work-wrap .fh5co-imgs .img-holder-2 img {
  max-width: 100%;
  -webkit-box-shadow: 6px 24px 61px -12px rgba(0, 0, 0, 0.49);
  -moz-box-shadow: 6px 24px 61px -12px rgba(0, 0, 0, 0.49);
  -ms-box-shadow: 6px 24px 61px -12px rgba(0, 0, 0, 0.49);
  -o-box-shadow: 6px 24px 61px -12px rgba(0, 0, 0, 0.49);
  box-shadow: 6px 24px 61px -12px rgba(0, 0, 0, 0.49);
  -webkit-transition: 0.5s;
  -o-transition: 0.5s;
  transition: 0.5s;
}
.work-wrap .fh5co-imgs .img-holder-1 {
  left: 0;
  bottom: 0;
}
@media screen and (max-width: 768px) {
  .work-wrap .fh5co-imgs .img-holder-1 {
    right: 0;
  }
}
.work-wrap .fh5co-imgs .img-holder-2 {
  bottom: -2em;
  right: 50px;
}
@media screen and (max-width: 768px) {
  .work-wrap .fh5co-imgs .img-holder-2 {
    position: absolute;
  }
}
@media screen and (max-width: 480px) {
  .work-wrap .fh5co-imgs .img-holder-2 {
    right: 30px;
    bottom: -1em;
  }
  .work-wrap .fh5co-imgs .img-holder-2 img {
    -webkit-transition: 0.5s;
    -o-transition: 0.5s;
    transition: 0.5s;
    max-width: 100%;
    height: 194px;
  }
}
.work-wrap.fh5co-reverse .img-holder-1 {
  left: auto;
  right: 0;
}
.work-wrap.fh5co-reverse .img-holder-1 img {
  text-align: right;
}
.work-wrap.fh5co-reverse .img-holder-2 {
  bottom: -2em;
  right: auto;
  left: 50px;
}
@media screen and (max-width: 768px) {
  .work-wrap.fh5co-reverse .img-holder-2 {
    position: absolute;
    left: auto;
    right: 50px;
  }
}
@media screen and (max-width: 480px) {
  .work-wrap.fh5co-reverse .img-holder-2 {
    right: 30px;
    bottom: -1em;
  }
  .work-wrap.fh5co-reverse .img-holder-2 img {
    -webkit-transition: 0.5s;
    -o-transition: 0.5s;
    transition: 0.5s;
    max-width: 100%;
    height: 194px;
  }
}
.work-wrap .fh5co-text {
  padding-top: 0;
}
.work-wrap .fh5co-text span {
  text-transform: uppercase;
  display: block;
  margin-bottom: 15px;
  color: rgba(0, 0, 0, 0.3);
  letter-spacing: 1px;
}
.work-wrap .fh5co-text h2 {
  color: rgba(0, 0, 0, 0.7);
  margin-bottom: 20px;
  text-transform: uppercase;
}
.work-wrap .fh5co-text p {
  color: rgba(0, 0, 0, 0.5);
}

.services {
  margin-bottom: 5em;
}
.services span {
  margin-bottom: 25px;
  display: inline-block;
}
.services span i {
  font-size: 50px;
  color: rgba(0, 0, 0, 0.3);
}
.services h3 {
  font-size: 20px;
  font-weight: 400;
}

#fh5co-services, #fh5co-about, #fh5co-contact {
  padding: 7em 0;
}
@media screen and (max-width: 768px) {
  #fh5co-services, #fh5co-about, #fh5co-contact {
    padding: 4em 0;
  }
}
#login {
margin: 50px auto;
width: 300px;
}
#fh5co-contact .form-control {
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  -ms-box-shadow: none;
  -o-box-shadow: none;
  box-shadow: none;
  border: none;
  color: #5a5656;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  font-size: 18px;
  outline: none;
  font-weight: 400;
  margin-left:400px;
  -moz-border-radius: 3px;
  -moz-border-radius: 3px;
  -ms-border-radius: 0px;
  border-radius: 3px;
  padding: 0px 10px;
  -webkit-appearance:none;
  background-color: #e5e5e5;
}

form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }

#fh5co-contact .form-control:focus, #fh5co-contact .form-control:active {
  border-bottom: 1px solid rgba(0, 0, 0, 0.5);
}
#fh5co-contact input[type="text"] {
  height: 50px;
}
#fh5co-contact .form-group {
  margin-bottom: 30px;
}

.fh5co-testimonial {
  border-right: 1px solid rgba(0, 0, 0, 0.06);
}
@media screen and (max-width: 768px) {
  .fh5co-testimonial {
    border-right: 0;
    margin-bottom: 80px;
  }
}
.fh5co-testimonial h2 {
  font-size: 16px;
  letter-spacing: 2px;
  text-transform: uppercase;
  font-weight: bold;
  margin-bottom: 50px;
}
.fh5co-testimonial figure {
  margin-bottom: 20px;
  background-size: cover;
}
.fh5co-testimonial figure img {
  width: 88px;
  height: 88px;
  background-size: cover;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  -ms-border-radius: 50%;
  border-radius: 50%;
}
.fh5co-testimonial blockquote {
  border: none;
  margin-bottom: 20px;
}
.fh5co-testimonial blockquote p {
  font-style: italic;
  font-size: 26px;
  line-height: 1.6em;
  color: #555555;
}
.fh5co-testimonial span {
  font-style: italic;
}

.fh5co-about-us h2 {
  font-size: 16px;
  letter-spacing: 2px;
  text-transform: uppercase;
  font-weight: bold;
  margin-bottom: 50px;
}
.fh5co-about-us img {
  margin-bottom: 30px;
  background-size: cover;
  width: 100%;
}
.fh5co-about-us a {
  font-size: 18px;
}

#fh5co-blog-section, #fh5co-start-project-section {
  background: #184bde;
  padding: 5em 0;
}
#fh5co-blog-section h3.heading-section, #fh5co-start-project-section h3.heading-section {
  color: #fff;
}
#fh5co-blog-section p, #fh5co-start-project-section p {
  color: rgba(255, 255, 255, 0.7);
}

.fh5co-blog {
  width: 100%;
  height: 385px;
  background-size: cover;
  background-position: center center;
  margin-bottom: 30px;
  position: relative;
  -webkit-box-shadow: 10px 27px 78px -15px rgba(0, 0, 0, 0.57);
  -moz-box-shadow: 10px 27px 78px -15px rgba(0, 0, 0, 0.57);
  box-shadow: 10px 27px 78px -15px rgba(0, 0, 0, 0.57);
}
@media screen and (max-width: 768px) {
  .fh5co-blog {
    width: 100%;
  }
}
.fh5co-blog:hover, .fh5co-blog:focus {
  width: 100%;
  -webkit-box-shadow: 10px 27px 78px -15px rgba(0, 0, 0, 0.65);
  -moz-box-shadow: 10px 27px 78px -15px rgba(0, 0, 0, 0.65);
  box-shadow: 10px 27px 78px -15px rgba(0, 0, 0, 0.65);
}
.fh5co-blog .image-popup {
  position: absolute;
  padding: 20px;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.5);
  opacity: 1;
}
.fh5co-blog .image-popup span {
  color: #fff;
  margin-bottom: 20px;
  display: inline-block;
  padding: 4px 15px;
  background: rgba(0, 0, 0, 0.2);
  text-transform: uppercase;
}
.fh5co-blog .image-popup h3 {
  font-size: 26px;
  font-weight: bold;
  color: #fff;
  margin-bottom: 20px;
}
.fh5co-blog .image-popup p {
  color: rgba(255, 255, 255, 0.5);
}
.fh5co-blog .image-popup:hover, .fh5co-blog .image-popup:focus {
  background: rgba(0, 0, 0, 0.3);
}
.fh5co-blog .image-popup:hover p, .fh5co-blog .image-popup:focus p {
  color: rgba(255, 255, 255, 0.7);
}

#fh5co-start-project-section h2 {
  color: white;
  font-size: 60px;
  text-transform: uppercase;
  font-weight: 300;
}
@media screen and (max-width: 768px) {
  #fh5co-start-project-section h2 {
    font-size: 30px;
  }
}
#fh5co-start-project-section a:hover, #fh5co-start-project-section a:focus, #fh5co-start-project-section a:active {
  color: white !important;
}

#footer {
  background: #222831;
  padding: 60px 0 40px;
}
#footer p {
  color: rgba(255, 255, 255, 0.3);
  letter-spacing: 1px;
  font-size: 14px;
  text-transform: uppercase;
}
#footer p a {
  color: rgba(255, 255, 255, 0.5);
}
#footer .footer-menu {
  float: right;
  margin: 0;
  padding: 0;
}
@media screen and (max-width: 768px) {
  #footer .footer-menu {
    text-align: center;
    float: left;
  }
}
#footer .footer-menu li {
  display: inline-block;
  margin-left: 30px;
  text-transform: uppercase;
}
@media screen and (max-width: 768px) {
  #footer .footer-menu li {
    margin: 0 0 0 7px;
  }
}
#footer .footer-menu li a {
  color: rgba(255, 255, 255, 0.5);
}
#footer .footer-menu li:first-child {
  margin-left: 0;
}

.btn {
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}

.btn {
  text-transform: uppercase;
  letter-spacing: 2px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.btn.btn-primary {
  background: #79c34f;
  color: #fff;
  border: none !important;
  margin-left: 0px;
  border: 2px solid transparent !important;
}
.btn.btn-primary:hover, .btn.btn-primary:active, .btn.btn-primary:focus {
  box-shadow: none;
  background: #79c34f;
  color: #fff !important;
}
.btn:hover, .btn:active, .btn:focus {
  background: #393e46 !important;
  color: #fff;
  outline: none !important;
}
.btn.btn-default:hover, .btn.btn-default:focus, .btn.btn-default:active {
  border-color: transparent;
}

.js .animate-box {
  opacity: 0;
}

#fh5co-wrapper {
  overflow-x: hidden;
  position: relative;
}

#fh5co-page {
  position: relative;
  -webkit-transition: 0.5s;
  -o-transition: 0.5s;
  transition: 0.5s;
}
.fh5co-offcanvas #fh5co-page {
  -moz-transform: translateX(-240px);
  -webkit-transform: translateX(-240px);
  -ms-transform: translateX(-240px);
  -o-transform: translateX(-240px);
  transform: translateX(-240px);
}

@media screen and (max-width: 768px) {
  #fh5co-menu-wrap {
    display: none;
  }
}

#offcanvas-menu {
  position: absolute;
  top: 0;
  bottom: 0;
  z-index: 99;
  background: #222;
  right: -240px;
  width: 240px;
  padding: 20px;
}
#offcanvas-menu ul {
  padding: 0;
  margin: 0;
}
#offcanvas-menu ul li {
  padding: 0;
  margin: 0 0 10px 0;
  list-style: none;
}
#offcanvas-menu ul li a {
  font-size: 18px;
  color: rgba(255, 255, 255, 0.4);
}
#offcanvas-menu ul li a:hover {
  color: #79c34f;
}
#offcanvas-menu ul li > .fh5co-sub-menu {
  margin-top: 9px;
  padding-left: 20px;
}
#offcanvas-menu ul li.active > a {
  color: #79c34f;
}

.fh5co-nav-toggle {
  cursor: pointer;
  text-decoration: none;
}
.fh5co-nav-toggle.active i::before, .fh5co-nav-toggle.active i::after {
  background: #fff;
}
.fh5co-nav-toggle.dark.active i::before, .fh5co-nav-toggle.dark.active i::after {
  background: #fff;
}
.fh5co-nav-toggle:hover, .fh5co-nav-toggle:focus, .fh5co-nav-toggle:active {
  outline: none;
  border-bottom: none !important;
}
.fh5co-nav-toggle i {
  position: relative;
  display: -moz-inline-stack;
  display: inline-block;
  zoom: 1;
  *display: inline;
  width: 30px;
  height: 2px;
  color: #fff;
  font: bold 14px/.4 Helvetica;
  text-transform: uppercase;
  text-indent: -55px;
  background: #fff;
  transition: all .2s ease-out;
}
.fh5co-nav-toggle i::before, .fh5co-nav-toggle i::after {
  content: '';
  width: 30px;
  height: 2px;
  background: #fff;
  position: absolute;
  left: 0;
  -webkit-transition: 0.2s;
  -o-transition: 0.2s;
  transition: 0.2s;
}
.fh5co-nav-toggle.dark i {
  position: relative;
  color: #000;
  background: #000;
  transition: all .2s ease-out;
}
.fh5co-nav-toggle.dark i::before, .fh5co-nav-toggle.dark i::after {
  background: #000;
  -webkit-transition: 0.2s;
  -o-transition: 0.2s;
  transition: 0.2s;
}

.fh5co-nav-toggle i::before {
  top: -7px;
}

.fh5co-nav-toggle i::after {
  bottom: -7px;
}

.fh5co-nav-toggle:hover i::before {
  top: -10px;
}

.fh5co-nav-toggle:hover i::after {
  bottom: -10px;
}

.fh5co-nav-toggle.active i {
  background: transparent;
}

.fh5co-nav-toggle.active i::before {
  top: 0;
  -webkit-transform: rotateZ(45deg);
  -moz-transform: rotateZ(45deg);
  -ms-transform: rotateZ(45deg);
  -o-transform: rotateZ(45deg);
  transform: rotateZ(45deg);
}

.fh5co-nav-toggle.active i::after {
  bottom: 0;
  -webkit-transform: rotateZ(-45deg);
  -moz-transform: rotateZ(-45deg);
  -ms-transform: rotateZ(-45deg);
  -o-transform: rotateZ(-45deg);
  transform: rotateZ(-45deg);
}

.fh5co-nav-toggle {
  position: absolute;
  top: 0px;
  right: 0px;
  z-index: 9999;
  display: block;
  margin: 0 auto;
  display: none;
  cursor: pointer;
}
@media screen and (max-width: 768px) {
  .fh5co-nav-toggle {
    display: block;
    top: 0px;
    margin-top: 2.5em;
  }
}

@media screen and (max-width: 480px) {
  .col-xxs-12 {
    float: none;
    width: 100%;
  }
}

.row-bottom-padded-lg {
  padding-bottom: 7em;
}
@media screen and (max-width: 768px) {
  .row-bottom-padded-lg {
    padding-bottom: 2em;
  }
}

.row-top-padded-lg {
  padding-top: 7em;
}
@media screen and (max-width: 768px) {
  .row-top-padded-lg {
    padding-top: 2em;
  }
}

.row-bottom-padded-md {
  padding-bottom: 4em;
}
@media screen and (max-width: 768px) {
  .row-bottom-padded-md {
    padding-bottom: 2em;
  }
}

.row-top-padded-md {
  padding-top: 4em;
}
@media screen and (max-width: 768px) {
  .row-top-padded-md {
    padding-top: 2em;
  }
}

.row-bottom-padded-sm {
  padding-bottom: 2em;
}
@media screen and (max-width: 768px) {
  .row-bottom-padded-sm {
    padding-bottom: 2em;
  }
}

.row-top-padded-sm {
  padding-top: 2em;
}
@media screen and (max-width: 768px) {
  .row-top-padded-sm {
    padding-top: 2em;
  }
}

.border-bottom {
  border-bottom: 1px solid rgba(0, 0, 0, 0.06);
}

.lead {
  line-height: 1.8;
}

.no-js #loader {
  display: none;
}

.js #loader {
  display: block;
  position: absolute;
  left: 100px;
  top: 0;
}

.fh5co-loader {
  position: fixed;
  left: 0px;
  top: 0px;
  width: 100%;
  height: 100%;
  z-index: 9999;
  background: url(../images/hourglass.svg) center no-repeat #222222;
}

/*# sourceMappingURL=style.css.map */

/*** ESSENTIAL STYLES ***/
.sf-menu, .sf-menu * {
	margin: 0;
	padding: 0;
	list-style: none;
}
.sf-menu li {
	position: relative;
}
.sf-menu ul {
	position: absolute;
	display: none;
	top: 100%;
	right: 0;
	
	z-index: 99;
}
.sf-menu > li {
	float: left;
}
.sf-menu li:hover > ul,
.sf-menu li.sfHover > ul {
	display: block;
}

.sf-menu a {
	display: block;
	position: relative;
}
.sf-menu ul ul {
	top: 0;
	left: 100%;
}


/*** DEMO SKIN ***/
.sf-menu {
	float: left;
	margin-bottom: 1em;
}
.sf-menu ul {
	box-shadow: 2px 2px 6px rgba(0,0,0,.2);
	min-width: 12em; /* allow long menu items to determine submenu width */
	*width: 12em; /* no auto sub width for IE7, see white-space comment below */
}
.sf-menu a {
	border-left: 1px solid #fff;
	border-top: 1px solid #dFeEFF; /* fallback colour must use full shorthand */
	border-top: 1px solid rgba(255,255,255,.5);
	padding: .75em 1em;
	text-decoration: none;
	zoom: 1; /* IE7 */
}
.sf-menu a {
	color: #13a;
}
.sf-menu li {
	background: #BDD2FF;
	white-space: nowrap; /* no need for Supersubs plugin */
	*white-space: normal; /* ...unless you support IE7 (let it wrap) */
	-webkit-transition: background .2s;
	transition: background .2s;
}
.sf-menu ul li {
	background: #AABDE6;
}
.sf-menu ul ul li {
	background: #9AAEDB;
}
.sf-menu li:hover,
.sf-menu li.sfHover {
	background: #CFDEFF;
	/* only transition out, not in */
	-webkit-transition: none;
	transition: none;
}

/*** arrows (for all except IE7) **/
.sf-arrows .sf-with-ul {
	padding-right: 2.5em;
	*padding-right: 1em; /* no CSS arrows for IE7 (lack pseudo-elements) */
}
/* styling for both css and generated arrows */
.sf-arrows .sf-with-ul:after {
	content: '';
	position: absolute;
	top: 50%;
	right: 1em;
	margin-top: -3px;
	height: 0;
	width: 0;
	/* order of following 3 rules important for fallbacks to work */
	border: 5px solid transparent;
	border-top-color: #dFeEFF; /* edit this to suit design (no rgba in IE8) */
	border-top-color: rgba(255,255,255,.5);
}
.sf-arrows > li > .sf-with-ul:focus:after,
.sf-arrows > li:hover > .sf-with-ul:after,
.sf-arrows > .sfHover > .sf-with-ul:after {
	border-top-color: white; /* IE8 fallback colour */
}
/* styling for right-facing arrows */
.sf-arrows ul .sf-with-ul:after {
	margin-top: -5px;
	/*margin-right: -3px;*/
	border-color: transparent;
	border-left-color: #dFeEFF; /* edit this to suit design (no rgba in IE8) */
	border-left-color: rgba(255,255,255,.5);
}
.sf-arrows ul li > .sf-with-ul:focus:after,
.sf-arrows ul li:hover > .sf-with-ul:after,
.sf-arrows ul .sfHover > .sf-with-ul:after {
	border-left-color: white;
}


@charset "utf-8";
/* CSS Document */

/* ---------- FONTAWESOME ---------- */
/* ---------- https://fortawesome.github.com/Font-Awesome/ ---------- */
/* ---------- http://weloveiconfonts.com/ ---------- */

@import url(http://weloveiconfonts.com/api/?family=fontawesome);

/* ---------- ERIC MEYER'S RESET CSS ---------- */
/* ---------- https://meyerweb.com/eric/tools/css/reset/ ---------- */

@import url(https://meyerweb.com/eric/tools/css/reset/reset.css);

/* ---------- FONTAWESOME ---------- */

[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}

/* ---------- GENERAL ---------- */

body {
	background: #f4f4f4;
	color: #5a5656;
	font: 100%/1.5em 'Open Sans', sans-serif;
  margin: 0;
}

a { text-decoration: none; }

h1 { font-size: 1em; }

h1, p {
	margin-bottom: 10px;
}

strong {
	font-weight: bold;
}

.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */

#login {
	margin: 50px auto;
	width: 650px;
}

form fieldset input[type="text"], input[type="password"] {
	background: #e5e5e5;
	border: none;
	border-radius: 3px;
	color: #5a5656;
	font-family: inherit;
	font-size: 14px;
	height: 50px;
	outline: none;
	padding: 0px 10px;
	width: 300px;
  -webkit-appearance:none;
}

form fieldset input[type="submit"] {
	background-color: #008dde;
	border: none;
	border-radius: 3px;
	color: #f4f4f4;
	cursor: pointer;
	font-family: inherit;
	height: 50px;
	text-transform: uppercase;
	width: 140px;
  -webkit-appearance:none;
}

form fieldset a {
	color: #5a5656;
	font-size: 10px;
}

form fieldset a:hover { text-decoration: underline; }

.btn-round {
	background: #5a5656;
	border-radius: 50%;
	color: #f4f4f4;
	display: block;
	font-size: 12px;
	height: 50px;
	line-height: 50px;
	margin: 30px 125px;
	text-align: center;
	text-transform: uppercase;
	width: 50px;
}

.facebook-before {
	background: #0064ab;
	border-radius: 3px 0px 0px 3px;
	color: #f4f4f4;
	display: block;
	float: left;
	height: 50px;
	line-height: 50px;
	text-align: center;
	width: 50px;
}

.facebook {
	background: #0079ce;
	border: none;
	border-radius: 0px 3px 3px 0px;
	color: #f4f4f4;
	cursor: pointer;
	height: 50px;
	text-transform: uppercase;
	width: 250px;
}

.twitter-before {
	background: #189bcb;
	border-radius: 3px 0px 0px 3px;
	color: #f4f4f4;
	display: block;
	float: left;
	height: 50px;
	line-height: 50px;
	text-align: center;
	width: 50px;
}


.twitter {
	background: #1bb2e9;
	border: none;
	border-radius: 0px 3px 3px 0px;
	color: #f4f4f4;
	cursor: pointer;
	height: 50px;
	text-transform: uppercase;
	width: 250px;
}

select {
    width: 45%;
    padding: 0px 10px;
    border: none;
	border-radius: 3px;
    height: 50px;
    text-align:center;
    font-size: 14px;
	height: 50px;
	outline: none;
	color: #5a5656;
    background-color: #e5e5e5;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Render &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<div class="top">
				<div class="container">
					<span> <a href="#"><i>@</i> info@sysdev.co</a></span>
					<span> <a href="tel://+12345678910"><i class="icon-mobile3"></i> 123 4567 8910</a></span>
				</div>
			</div>
			<!-- end:top -->
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="homepage.aspx">UNIVERSITY OF ENGINEERING</a></h1>
						<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							
							
							
							<li class="active"><a href="admissionfill.aspx">֎ Admission</a></li>
						</ul>
					</nav>
					</div>
				</div>
			</header>
			
		</div>
		
		
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" style="background-image: url(images/work-1.jpg);">
				<div class="desc animate-box">
					<h2>☺Admission form!☻</h2>
					
				</div>
			</div>

		</div>
		<!-- END: header -->

		<html lang="en-Us">
<head>

	<meta charset="utf-8">
    
	<title>Login with Facebook or Twitter</title>

	<link rel="stylesheet" href="css/style.css">
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>

	<!--[if lt IE 9]>
		<script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

</head>

<body>
<p>
	<div id="login">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
		<h1><strong>Fill</strong> Here!</h1>

		<p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" />
            <p>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           
<ContentTemplate>
			
		<fieldset>
            <p>
                Application No</p>
            <p>
                <asp:TextBox ID="TextBox12" runat="server" Enabled="False" 
                    onBlur="if(this.value=='')this.value=''" 
                    onFocus="if(this.value=='')this.value='' " 
                    ontextchanged="TextBox12_TextChanged" required="" value=""></asp:TextBox>
            </p>
            <p>
                <asp:TextBox ID="TextBox2" runat="server" 
                    onBlur="if(this.value=='')this.value='Student Name'" 
                    onFocus="if(this.value=='Student Name')this.value='' " required="" 
                    value="Student Name" CausesValidation="True" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Student Name">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox13" runat="server" 
                    onBlur="if(this.value=='')this.value='Session'" 
                    onFocus="if(this.value=='Session')this.value='' " required="" 
                    value="Session" CausesValidation="True"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Session Required Digits only And year of admission" 
                    ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            </p>
            <!-- JS because of IE support; better: placeholder="Username" -->
            <p>
                <asp:TextBox ID="TextBox3" runat="server" 
                    onBlur="if(this.value=='')this.value='Father Name'" 
                    onFocus="if(this.value=='Father Name')this.value='' " required="" 
                    value="Father Name" CausesValidation="True" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required Father Name">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox4" runat="server" 
                    onBlur="if(this.value=='')this.value='Mother Name'" 
                    onFocus="if(this.value=='Mother Name')this.value='' " required="" 
                    value="Mother Name" CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required Mother Name">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox5" runat="server" 
                    onBlur="if(this.value=='')this.value='Date Of Birth'" 
                    onFocus="if(this.value=='Date Of Birth')this.value='' " required="" 
                    value="Date Of Birth" CausesValidation="True" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="D.O.B Formate dd-mm-yyyy" 
                    ValidationExpression="\d{2}-\d{2}-\d{4}">*</asp:RegularExpressionValidator>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select" 
                    CausesValidation="True">
                    <asp:ListItem>--Gender--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Required Gender">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox6" runat="server" 
                    onBlur="if(this.value=='')this.value='nationality'" 
                    onFocus="if(this.value=='Nationality')this.value='' " required="" 
                    value="Nationality" CausesValidation="True" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Required Nationality">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select" 
                    CausesValidation="True">
                    <asp:ListItem>--Department--</asp:ListItem>
                    <asp:ListItem>Electrical Engineering</asp:ListItem>
                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                    <asp:ListItem>Civil Engineering</asp:ListItem>
                    <asp:ListItem>Computer Science Engineering</asp:ListItem>
                    <asp:ListItem>Electronics &amp; Communication Engineering</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="Required Department">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox14" runat="server" 
                    onBlur="if(this.value=='')this.value='School'" 
                    onFocus="if(this.value=='School')this.value='' " required="" 
                    value="School" CausesValidation="True" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="Required School Name">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox15" runat="server" 
                    onBlur="if(this.value=='')this.value='Year Of Passing'" 
                    onFocus="if(this.value=='Year Of Passing')this.value='' " required="" 
                    value="Year Of Passing" CausesValidation="True"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox15" ErrorMessage="Passing Year (Digits Only)" 
                    ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox7" runat="server" 
                    onBlur="if(this.value=='')this.value='City'" 
                    onFocus="if(this.value=='City')this.value='' " required="" value="City" 
                    CausesValidation="True" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Required City">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox8" runat="server" 
                    onBlur="if(this.value=='')this.value='State'" 
                    onFocus="if(this.value=='State')this.value='' " required="" value="State" 
                    CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Required State">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox9" runat="server" 
                    onBlur="if(this.value=='')this.value='Address'" 
                    onFocus="if(this.value=='Address')this.value='' " required="" 
                    value="Address" CausesValidation="True" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Required Address">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox1" runat="server" 
                    onBlur="if(this.value=='')this.value='Email ID'" 
                    onFocus="if(this.value=='Email ID')this.value='' " required="" 
                    value="Email ID" CausesValidation="True"></asp:TextBox>
                </asp:textbox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Email Id (abc@example.com)" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox10" runat="server" 
                    onBlur="if(this.value=='')this.value='Mobile No.'" 
                    onFocus="if(this.value=='Mobile No.')this.value='' " required="" 
                    value="Mobile No." CausesValidation="True" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Mobile no.(Only 10 Digits)" 
                    ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBox11" runat="server" 
                    onBlur="if(this.value=='')this.value='Parents Mobile No.'" 
                    onFocus="if(this.value=='Parents Mobile No.')this.value='' " required="" 
                    value="Parents Mobile No." CausesValidation="True"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Parents No.(Only 10 Digits)" 
                    ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </p>
            <!-- JS because of IE support; better: placeholder="Password" -->
            <p>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    value="Submit" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                    value="Reset" />
            </p>
        </fieldset>
</ContentTemplate>
		 </asp:UpdatePanel>
        </p>
	</div> <!-- end login -->
</p>
</body>

	
	
		
		<!-- fh5co-work-section -->
		
		<!-- START a project -->

		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>Copyright 2017 ght 2017 ko engine</a>. All Rights Reserved. <br>Made with 💙 by <a href="meetus.aspx">sys developers</a> / Demo Images: <a href="https://unsplash.com/">Unsplash</a></p>
						</div>
						<div class="col-md-6">
							<ul class="footer-menu">
								
								
								
								<li><a href="studentmenu.aspx">Go back!</a></li>
								<li><a href="studentlogin.aspx">LogOut!</a></li>
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>


    </div>
    </form>
</body>
</html>
