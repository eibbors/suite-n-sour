/*

  __________________________ _________ _____________________________________
  \  net      _ _           \_________/  by Robbie Saunders (eibbors.com)  /
  /   ____ _ _ |_| |_  ___               _______________________           \
  \  | ___| | || |  _|| __ | nnnnnn     /  ____/    \  \  \     \  /----\  /
  /  |___ | | || | |__|  __|  nn  nn   |____  |  O  |  |  |  |__|  | js |  \
  \  |____|____|_|____|____|  nn  nnn  /______/_____/_____/___/    \----/  /
  /_________________________  -------  ____________________________________\
  |_________________________\_________/____________________________________|
                             \_______/

 */


// Require each submodule (to reduce overhead, load individual files from lib or src)
var n$ = {
	debug: require('./lib/debug'),
  offline: require('./lib/offline'),
  webstore: require('./lib/webstore'),
  // soap: require('./lib/soap') - under construction
	ui: require('./lib/ui')
};

module.exports = n$;