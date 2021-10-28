Function.prototype.curry = function(numArgs) {
  let argArr = [];

  let that = this;
  function _curriedArgs(arg) {
    argArr.push(arg);
    if (argArr.length === numArgs) {
      return that(...argArr);
    } else {
      return _curriedArgs;
    }
  }
  return _curriedArgs;
}