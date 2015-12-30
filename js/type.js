function playmode() {
    var timeMode = document.getElementById("timeMode")
    var marathonMode = document.getElementById("marathonMode")
    var personal = document.getElementById("personal")
    var mode = [timeMode, marathonMode, personal]

    //    for (var i = 0; i < mode.length; i++) {
    //        mode[i].addEventListener("click", function () {
    //            if (this.className == "current") {
    //                this.setAttribute("class", "");
    //
    //            } else {
    //                this.setAttribute("class", "current");
    //
    //
    //            }
    //
    //        })
    //    } -->die

}



function type() {


    //time
    var goButton, setTime;
    var countDownTime, seconds, a = false;
    goButton = document.getElementById("goButton");
    setTime = document.getElementById("setTime");

    //type part paremeter
    var textarea = document.getElementById("textarea");
    var code;
    var f = document.createElement("p");
    var example = document.getElementById("example");
    var exampleString = example.textContent;
    var exampleStringNoSpace = exampleString.replace(/\s+/g, ''); //get rid of withespace
    exampleStringNoSpace = exampleStringNoSpace.toLowerCase();
    var count, typo, combo;
    count = document.getElementById("count");
    typo = document.getElementById("typo");
    combo = document.getElementById("combo");
    var aa = 0;
    var bb = 0;
    var cc = 0;

    var scoreBoard = document.getElementById("scoreBoard");



    //click event;
    goButton.addEventListener("click", function (event) {
            var countDowner;

            event.preventDefault();
            countDownTime = parseInt(setTime.value);
            //        if(()type0f countDownTime)
            console.log(typeof countDownTime);


            if (document.querySelectorAll(".sentCode div").length > 1) {
                return;
            } else {
                seconds = parseInt(countDownTime * 60 + 1);
                var s = document.createElement("div");
                s.style.border = "1px solid #e4e1ce";
                s.style.background = "transparent";
                s.style.color = "#e4e1ce";
                s.style.width = "auto";
                s.style.height = "auto";
                s.style.display = "inline";
                s.style.padding = "0.4em";
                s.style.right = "4vw";
                s.style.position = "absolute";
                document.querySelector(".sentCode").appendChild(s);
            }

            function countDown() {

                //                var finsh;
                seconds--;
                if (typeof seconds == NaN) {
                    s.textContent = "loading..";
                } else {
                    console.log(seconds);
                    s.textContent = seconds + "s";

                }
                if (seconds <= 0) {
                    scoreBoard.style.display = "block";
                    console.log("Time out!");
                    a = true;
                    s.remove();
                    clearInterval(countDowner);
                    seconds = 0;
                    document.querySelector("#scoreBoard p").textContent = "cont: " + aa + " " + "typo: " + bb + " " + "combo: " + cc;
                    aa = 0;
                    bb = 0;
                    cc = 0;

                }

            }



            countDowner = setInterval(countDown, 1000);





        }) //end of click

    //scoreboard





    textarea.addEventListener("keydown", function (ev) {
            var key = ev.keyCode;
            var toMatch;
            console.log(key);
            console.log("pp.scrollTop: ", document.querySelectorAll("p")[0].scrollTop);
            console.log("pp.scrollHeight: ", document.querySelectorAll("p")[0].scrollHeight);

            //    keep scroll to bottom
            function updateScroll() {
                var element = document.getElementById("sentCode");
                element.scrollTop = element.scrollHeight;
            }

            setInterval(updateScroll, 100);

            if (key == 13 && ev.ctrlKey) {
                aa++
                code = textarea.value;
                toMatch = code.toLowerCase().replace(/\s+/g, '');
                textarea.value = '';
                console.log(code);
                f = document.createElement("p");
                f.textContent = code;
                f.style.background = "transparent";
                f.style.color = "#e4e1ce";
                f.style.width = "auto";
                f.style.height = "auto";
                f.style.display = "block";
                f.style.padding = "0.4em";
                f.style.zIndex = "100000";
                f.style.marginTop = "0";
                f.style.marginBottom = "0";

                f.style.background = "rgb(43, 50, 75)";


                //                f.style.float = "left";
                document.querySelector(".sentCode").appendChild(f);
                if (exampleStringNoSpace == toMatch) {
                    console.log("correct");
                    cc++;
                } else {
                    console.log("no");
                    bb++;
                    f.style.color = "tomato";
                };





            }

            count.textContent = aa;
            typo.textContent = bb;
            combo.textContent = cc;
        }) //end of keydown

    console.log(exampleStringNoSpace);


    function reset() {
        var scoreBoard = document.getElementById("scoreBoard");
        var resetBtn = document.getElementById("resetBtn");


        resetBtn.addEventListener("click", function () {

            scoreBoard.style.display = "none";

            var typeP = document.querySelectorAll(".sentCode p");
            for (var i = 0; i < typeP.length; i++) {
                typeP[i].parentNode.removeChild(typeP[i]);
            }

        })


    }
    reset();

    //    end of type

}


//mousenter

function mouseenter() {
    var menu = document.querySelectorAll(".leftBar h4");
    console.log(menu);
    for (var i = 0; i < menu.length; i++) {
        menu[i].addEventListener("mouseenter", function () {

            var submenu = this.childNodes[1];
            submenu.style.opacity = 1;

        })
    }
    for (var i = 0; i < menu.length; i++) {
        menu[i].addEventListener("mouseout", function () {

            var submenu = this.childNodes[1];
            submenu.style.opacity = 0;

        })
    }
}

function toggleBar() {
    var toggleBar, bar, triangle_down;
    toggleBar = document.querySelector(".toggleBar");
    bar = document.querySelector(".toggleBar .bar");
    console.log(toggleBar);
    console.log(bar);
    triangle_down = document.querySelector(".toggleBar .bar .triangle_down");
    console.log(triangle_down);
    bar.addEventListener("click", function () {
        console.log(toggleBar.style.bottom);
        if (toggleBar.style.bottom == "") {
            toggleBar.style.bottom = 0;
            triangle_down.style.transform = "rotate(225deg)";
        } else {
            toggleBar.style.bottom = "";
            triangle_down.style.transform = "rotate(45deg)";


        }
    })


}





window.addEventListener("load", function () {

    playmode();

    type();
    mouseenter();
    toggleBar();
    //    reset();


})