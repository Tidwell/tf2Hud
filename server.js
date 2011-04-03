var log = require('logging');
var file = require('file')
var flr = require('./FileLineReader.js');

file.walk('./resource', function(null2, dirPath, dirs, files) {
  files.forEach(function(file) {
    if (file == 'resource/resource/ChatScheme.res') return;
    if (file.split('.')[1] == 'res') {
      console.log(file+'~~');
      var reader = new flr.FileLineReader(file);
      var newObject = {};
      var currentObject = newObject;
      var formerObject;
      var lastAddedProperty;
      var line;
      //parse down the lines and insert into the obj
      while (line = reader.nextLine()) {
        if (line) {
          try {
            //find any comments and strip them
            var commentPos = line.indexOf('//');
            if (commentPos != -1) {
              line = line.substring(0,commentPos);
            }
            //find how many { we have
            var countLB = line.split('{').length - 1;
            if (countLB == 1) {
              //we go into the last added property of the current object
              formerObject = currentObject;
              currentObject = currentObject[lastAddedProperty];
            }
            //find how many } we have
            var countRB = line.split('}').length - 1;
            if (countRB == 1) {
              //we go out of the currentObject into the former
              currentObject = formerObject;
            }
            //find how many " we have
            var countDQ = line.split('"').length - 1;
            //if we have 2, it defines an object within the current object.
            if (countDQ == 2) {
              var parsedProperty = parseLine(line);
              currentObject[parsedProperty] = {};
              lastAddedProperty = parsedProperty;
            }
            //if we have 4 it defines a key->value pair within the object
            if (countDQ == 4) {
              var parsedKeyVal = parseLine(line, true);
              currentObject[parsedKeyVal.key] = parsedKeyVal.val;
            }
          }
          catch(err) {
            console.log(line);
            console.log(err);
          }
        }
      }
      console.log(newObject);
    }
  });
})

var parseLine = function(line, keyVal) {
  //if we need a key:value pair, we split it on the "" and then return the obj
  if (keyVal) {
    var line = trim(line);
    var splitLine = line.split('"');
    return {
      key: splitLine[1],
      val: splitLine[3]
    }
  }
  else {
    //dump all the white space
    line = line.replace(/\s/g, "");
    //drop the " and return that
    return line.replace('"', '');
  }
}

function trim(str) { 
  str.replace(/^\s*/, '').replace(/\s*$/, ''); 
  return str;
} 