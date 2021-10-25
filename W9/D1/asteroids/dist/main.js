/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("console.log('Webpack is working')\n\nconst MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nwindow.MovingObject = MovingObject;\n\nconst Util = __webpack_require__(/*! ./util.js */ \"./src/util.js\");\n\ndocument.addEventListener(\"DOMContentLoaded\", function () {\n  const canvas = document.getElementById('game-canvas');\n  const ctx = canvas.getContext('2d');\n\n  canvas.width = 500;\n  canvas.height = 500;\n\n \n\n  let test = new MovingObject({pos: [5, 5], vel: 10, radius: 20, color: 'red'});\n  debugger\n  console.log(test);\n\n  test.draw(ctx);\n\n  // ctx.fillStyle = 'red';\n  // ctx.fillRect(200, 255, 300, 255);\n\n  // ctx.beginPath();\n  // ctx.arc(250, 250, 50, 0, 4 * Math.PI, true);\n  // ctx.strokeStyle = \"green\";\n  // ctx.lineWidth = 10;\n  // ctx.stroke();\n  // ctx.fillStyle = \"blue\";\n  // ctx.fill();\n});\n\n//# sourceURL=webpack://asteroids/./src/index.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module) => {

eval("module.exports = MovingObject;\n\nfunction MovingObject(options) {\n  this.pos = options.pos,\n  this.vel = options.vel,\n  this.radius = options.radius,\n  this.color = options.color\n}\n\n// const Circle = function (pos, radius, color) {\n//   this.posX = pos[0];\n//   this.posY = pos[1];\n//   this.radius = radius;\n//   this.color = color;\n// };\n\nMovingObject.prototype.draw = function(ctx){\n    ctx.fillStyle = this.color;\n    ctx.beginPath();\n\n\n\n    ctx.arc(\n      this.pos[0],\n      this.pos[1],\n      this.radius,\n      0,\n      2 * Math.PI,\n      true\n    );\n\n    ctx.fill()\n}\n\n\n// MovingObject.prototype.draw = function (ctx) {\n//   return new Circle(ctx.arc(this.posX, this.posY, this.radius, 0, 2 * Math.PI, true));\n//   ctx.fillStyle = this.color;\n// }\n\n\n\n  // const canvas = document.getElementById('mycanvas');\n  // const ctx = canvas.getContext('2d');\n  \n  // canvas.width = 500;\n  // canvas.height = 500;\n\n  // ctx.fillStyle = 'red';\n  // ctx.fillRect(200, 255, 300, 255);\n\n  // ctx.beginPath();\n  // ctx.arc(250, 250, 50, 0, 2 * Math.PI, true);\n  // ctx.strokeStyle = \"green\";\n  // ctx.lineWidth = 10;\n  // ctx.stroke();\n  // ctx.fillStyle = \"blue\";\n  // ctx.fill();\n// });\n\n//# sourceURL=webpack://asteroids/./src/moving_object.js?");

/***/ }),

/***/ "./src/util.js":
/*!*********************!*\
  !*** ./src/util.js ***!
  \*********************/
/***/ ((module) => {

eval("const Util = {\n  inherits(childClass, parentClass) {\n    function Surrogate() {};\n    Surrogate.prototype = parentClass.prototype;\n    childClass.prototype = new Surrogate();\n    childClass.prototype.constructor = childClass;\n  }\n};\n\nmodule.exports = Util;\n\n//# sourceURL=webpack://asteroids/./src/util.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/index.js");
/******/ 	
/******/ })()
;