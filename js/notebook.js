function toggleNotbook() {
    var articleNote = document.getElementById("articleNote");
    var articleSection, takenote, fontNote, colorSection, colorSectionLayout, fontIframe, fontNoteSection;
    colorSection = document.querySelector(".colorSection");
    colorSectionLayout = document.querySelector(".colorSectionLayout");
    fontIframe = document.querySelector(".fontIframe");
    fontNoteSection = document.querySelector(".fontNoteSection");
    articleSection = document.querySelector(".articleSection");
    takenote = document.querySelector(".takenote");

    //    articleNote
    articleNote.addEventListener("click", function () {


        console.log(articleSection);

        console.log(takenote);

        articleSection.style.display = "block";
        takenote.style.display = "block";
        colorSection.style.display = "none";
        colorSectionLayout.style.display = "none";
        fontIframe.style.display = "none";
        fontNoteSection.style.display = "none";

    })
    var colorNote = document.getElementById("colorNote");

    //    colorNote
    colorNote.addEventListener("click", function () {
        articleSection.style.display = "none";
        takenote.style.display = "none";
        colorSection.style.display = "block";
        colorSectionLayout.style.display = "block";
        fontIframe.style.display = "none";
        fontNoteSection.style.display = "none";
    })
    var fontNote = document.getElementById("fontNote");

    //    colorNote  
    fontNote.addEventListener("click", function () {
        articleSection.style.display = "none";
        takenote.style.display = "none";
        fontIframe.style.display = "block";
        fontNoteSection.style.display = "block";
        colorSection.style.display = "none ";
        colorSectionLayout.style.display = "none ";

    })
}



function addColor() {
    var addicon = document.getElementById("addicon");
    var coloraddForm = document.getElementById("coloraddForm");
    var colorAddBtn = document.getElementById("colorAddBtn");
    addicon.addEventListener("click", function () {

        coloraddForm.style.display = "block";

    })
    colorAddBtn.addEventListener("click", function (ev) {
        ev.preventDefault();
        coloraddForm.style.display = "none";
        coloraddForm.submit();

    })
}

function drag() {

    var dragable = document.querySelectorAll('.dragable');
    var dropable = document.querySelectorAll('.dropable');
    var ccolor;

    for (var i = 0; i < dragable.length; i++) {

        dragable[i].addEventListener("dragstart", function (ev) {


            ccolor = ev.target.style.background;
        });


    }


    dropable[0].addEventListener("drop", function drop(ev) {
        ev.preventDefault();

        ev.target.style.background = ccolor;
    })

    dropable[0].addEventListener("dragover", function allowDrop(ev) {
        ev.preventDefault();
    })

    dropable[1].addEventListener("drop", function drop(ev) {
        ev.preventDefault();

        ev.target.style.background = ccolor;
    })

    dropable[1].addEventListener("dragover", function allowDrop(ev) {
        ev.preventDefault();
    })

    dropable[2].addEventListener("drop", function drop(ev) {
        ev.preventDefault();

        ev.target.style.background = ccolor;
    })

    dropable[2].addEventListener("dragover", function allowDrop(ev) {
        ev.preventDefault();
    })

    dropable[3].addEventListener("drop", function drop(ev) {
        ev.preventDefault();

        ev.target.style.background = ccolor;
    })

    dropable[3].addEventListener("dragover", function allowDrop(ev) {
        ev.preventDefault();
    })






} //end of drag



function typeColorNote() {
    var notes
    var colorNoteIN = document.getElementById("colorNoteIN");
    colorNoteIN.addEventListener("keydown", function (ev) {
            note = document.createElement("div");
            note.style.margin = "10px";
            note.style.float = "left";

            var colorTag = document.getElementById("colorTag");
            colorNoteIN = document.getElementById("colorNoteIN");
            var colorNoteOp = colorNoteIN.value;
            console.log(colorNoteOp)
            if (ev.keyCode == 13) {
                ev.preventDefault();
                console.log(colorNoteOp);
                note.textContent = colorNoteOp;
                colorTag.appendChild(note);

                notes = document.querySelectorAll(".colorTag div");

                console.log(notes);
                colorNoteIN.value = "";
            }


        }) 
}


function typeFontNote() {

    var articleNoteinp = document.getElementById("articleNoteinp");
    articleNoteinp.addEventListener("keydown", function (ev) {
        if (ev.keyCode == 13) {
            var tagFrame = document.querySelector(".tagFrame");
            var artnote = document.createElement("div");
            artnote.setAttribute("class", "tag");
            artnote.textContent = articleNoteinp.value;
            tagFrame.appendChild(artnote);
            articleNoteinp.value = "";
        }


    })

}

function fontnoteSubmit() {
    document.getElementById("fakefontsubmit").addEventListener("click", function () {

        document.getElementById("fontsubmit").submit();

    })

}

function fontWeb() {
    var fontWebAddressFroIframe = document.querySelectorAll(".fontWebAddressFroIframe");
    for (var i = 0; i < fontWebAddressFroIframe.length; i++) {

        fontWebAddressFroIframe[i].addEventListener("click", function (ev) {
            console.log("jss");
            var webAddr = this.textContent;
            console.log(webAddr);
            var fontIframe = document.querySelector(".fontIframe");
            fontIframe.setAttribute("src", webAddr);

        })

    }



}





//run after load
window.addEventListener("load", function () {

    toggleNotbook();
    addColor();
    drag();
    typeColorNote();
    typeFontNote();
    fontnoteSubmit();
    fontWeb();


    // test if query string colorCode is set
    // location.search.indexOf("colorCode") > -1
    // set hash = something
    // if so then
    // exectue click on the second button
    // document.querySelector("#colorNote").click()
    // reset hash to blank

    // check if colour was posted

    //    if( colourSaved ) {
    console.log("COLOR:", window.colourSaved);
    //    }



    //    showArticless();
})