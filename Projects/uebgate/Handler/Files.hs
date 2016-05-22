module Handler.Files where

import Import

getFilesR :: Handler Html
getFilesR = do
    allFiles <- runDB $ selectList [] [Desc ArchivoId]
    defaultLayout $ do 
        -- $(widgetFile "files")
        setTitle "UEBGate Files"
        toWidget [lucius| h1 { color: green; } |]
        addScriptRemote "https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"
        toWidget
            [julius|
                $(function() {
                    $("h1").click(function(){
                        alert("You clicked on the heading!");
                    });
                });
            |]
        toWidgetHead
            [hamlet|
                <meta name=keywords content="some sample keywords">
            |]
        toWidget
            [hamlet|
                <h1>Here's one way of including content
                <img src=UEBGate-icon.png>
            |]
        [whamlet|<h2>Here's another |]
        toWidgetBody
            [julius|
                alert("This is included in the body itself");
            |]
        $(widgetFile "files")