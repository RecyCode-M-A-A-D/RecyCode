window.addEventListener('DOMContentLoaded', function () {
    const apikey = key;
    const client = filestack.init(apikey);
    const options = {
        displayMode: 'inline',
        container: '#inline',
        maxFiles: 20,
        uploadInBackground: false,
        onUploadDone: (res) => console.log(res.filesUploaded[0].url),
    };
    client.picker(options).open();

});
