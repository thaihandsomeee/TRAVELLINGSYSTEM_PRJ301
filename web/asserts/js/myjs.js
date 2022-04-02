/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function show() {
    if (document.getElementById('hellobutton').innerHTML == 'SIGN UP') {
        document.getElementById('hello').classList.remove('moveRight');
        document.getElementById('hello').classList.add('moveLeft');
        setTimeout(function() { document.getElementById('hello').style.transform = 'translateX(0)'; }, 1000);
        document.getElementById('hellobutton').innerHTML = 'SIGN IN';
    } else {
        document.getElementById('hello').classList.remove('moveLeft');
        document.getElementById('hello').classList.add('moveRight');
        setTimeout(function() { document.getElementById('hello').style.transform = 'translateX(100%)'; }, 1000);
        document.getElementById('hellobutton').innerHTML = 'SIGN UP';
    }
}

