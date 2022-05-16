window.addEventListener('DOMContentLoaded', function () {
    const apikey = key;
    const client = filestack.init(apikey);
    const options = {
        displayMode: 'inline',
        container: '#inline',
        maxFiles: 20,
        uploadInBackground: false,
        onUploadDone: (res) => {let imgUrl = res.filesUploaded[0].url;
            console.log(imgUrl);
            document.getElementById("postImage").value = imgUrl;
        }
    };
    client.picker(options).open();

    /*create a post pop up for tags;*/
    document.getElementById("question").addEventListener("click", e => {
        e.preventDefault();
        document.getElementById("display_pop_up").className = "pop_up";
    });
});
