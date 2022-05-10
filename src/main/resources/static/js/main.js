window.addEventListener('DOMContentLoaded', function () {
    const apikey = key;
    const client = filestack.init(apikey);
    const options = {
        displayMode: 'inline',
        container: '#inline',
        maxFiles: 20,
        uploadInBackground: false,
        onUploadDone: (res) => console.log(res),
    };
    client.picker(options).open();

});
