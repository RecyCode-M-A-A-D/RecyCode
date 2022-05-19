window.addEventListener('DOMContentLoaded', function () {
    const apikey = key;
    const client = filestack.init(apikey);
    const options = {
        // displayMode: 'inline',
        // container: '#inline',
        maxFiles: 20,
        uploadInBackground: false,
        onUploadDone: (res) => {let imgUrl = res.filesUploaded[0].url;
            console.log(imgUrl);
            document.getElementById("postImage").value = imgUrl;
        }
    };
    const picker = client.picker(options);
    const openBtn = document.getElementById('open');
    openBtn.addEventListener('click', () => picker.open());

    /*create a post pop up for tags;*/
    document.getElementById("question").addEventListener("click", e => {
        e.preventDefault();
        document.getElementById("display_pop_up").className = "pop_up";
    });
});


// loading screen delay
// let delay = 4000; // delay time in milliseconds
// let timeoutId = setTimeout(function () {
//     // alert('Loading . . .');
//     let loading = document.getElementById("loading");
//     loading.className = "d-none";
//     let mainPage = document.getElementById("");
//     mainPage.className = "d-block fluid-container text-center";
// }, delay);