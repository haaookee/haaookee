
let optionKV = (object, key) =>  {
  if (!object || !key) {
    return "";
  } else {
    let result = "";
    for(let enums in object){

      if (key === object[enums]["key"]) {
        result = object[enums]["value"];
      }
    }
    return result;
  }
};





export default {
  optionKV
}
