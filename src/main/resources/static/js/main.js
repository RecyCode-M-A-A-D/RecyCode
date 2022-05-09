window.addEventListener('DOMContentLoaded', function() {
    const apikey = key;
    const cname = 'stage.filestackapi.com';

    const client = filestack.init(apikey, {
        cname,
    });
    client.on("upload.error", console.log)
    const options = {
        // accept: 'image/*',
        // allowManualRetry: true,
        cleanupImageExif: true,
        // concurrency: 2,
        container: document.querySelector('#inline'),
        // customAuthText: {
        //   // use it for every cloud authentication screen
        //   default: {
        //     top: [
        //       'CUSTOM TEXT TOP',
        //       ' BLAA'
        //     ],
        //     bottom: [
        //       'CUSTOM TEXT BOTTOM',
        //       'second line'
        //     ]
        //   },
        //   // override a default bottom text for only gmail
        //   instagram: {
        //     bottom: [
        //       'INSTA YO FIRST LINE',
        //       'INSTA YO SECOND LINE'
        //     ]
        //   }},
        // customSourceContainer: 'S3',
        // customSourceName: 'MARYS S3',
        // customSourcePath: 'pathHere',
        // customText:'',
        // disableStorageKey: true,
        // disableThumbnails: true,
        // disableTransformer: true,
        displayMode: 'inline',
        // uploadInBackground: false,
        // errorsTimeout: 300,
        // exposeOriginalFile: true,
        fromSources: ['local_file_system', 'unsplash', 'url', 'imagesearch', 'facebook', 'instagram', 'googledrive', 'dropbox', 'box', 'github', 'gmail', 'picasa', 'onedrive', 'onedriveforbusiness', 'clouddrive', 'customsource', 'tint', 'webcam', 'audio'],
        // globalDropZone: true,
        // hideModalWhenUploading: true,
        // imageDim: [800,800],
        // imageMax: [1200,1200],
        // imageMin: [10,10],
        // lang: 'pl',
        maxFiles: 5,
        // maxSize: 10 * 1024 * 1024,
        // minFiles: 1,
        // modalSize: [900, 900],
        // onCancel: ,
        // onClose:
        // onFileCropped: function,
        // onFileSelected: function,
        // onFileUploadFailed: function,
        // onFileUploadFinished: function,
        // onFileUploadProgress: function,
        // onFileUploadStarted: function,
        // onOpen: function,
        // onUploadStarted: function,
        // rootId: 'lalala',
        // startUploadingWhenMaxFilesReached: true
        // transformations:{
        //   circle: false,
        //   crop: {},
        //   rotate: false
        // },
        uploadConfig: {
            tags: {
                "firsttag": "yo",
                "second": "elo"
            }
        },
        // useSentryBreadcrumbs: false,
        // videoResolution: "320x240",
        // viewType: "grid",
        // uploadInBackground: false,

        onUploadDone: (res) => {
            const pre = document.createElement('pre');
            pre.style = "border: 1px solid red; padding: 5p; background-color: #ccc;margin-bottom:5px";
            pre.prepend(JSON.stringify(res, null, 2));
            document.body.appendChild(pre)
        },
    };
    const initialState = {};
    const picker = client.picker(options);
    picker.open();


});
