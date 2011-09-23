.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final LOGTAG:Ljava/lang/String; = "WebSelectionControls"


# instance fields
.field private mEndRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSelectedtext:Ljava/lang/String;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"
    .parameter "webview"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 70
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 71
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 72
    iput-object p5, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 73
    return-void
.end method


# virtual methods
.method public copy()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "WebSelectionControls"

    .line 108
    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 113
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 115
    .local v0, clip:Landroid/text/IClipboard;
    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v2, 0x1

    .line 123
    .end local v0           #clip:Landroid/text/IClipboard;
    :goto_0
    return v2

    .line 116
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 117
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WebSelectionControls"

    const-string v2, "Clipboard failed"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 118
    goto :goto_0

    .line 122
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "WebSelectionControls"

    const-string v2, "Selected text String is NULL"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 123
    goto :goto_0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 130
    const/4 v5, 0x0

    .local v5, bitmapwidth:I
    const/4 v4, 0x0

    .line 131
    .local v4, bitmapheight:I
    const/4 v6, 0x0

    .local v6, bitmapx:F
    const/4 v7, 0x0

    .line 134
    .local v7, bitmapy:F
    move-object/from16 v13, p2

    .line 136
    .local v13, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v5

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v6

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v7

    .line 141
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rtSelection.width :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rtSelection.height : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v12

    .line 147
    .local v12, picture:Landroid/graphics/Picture;
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v3, bitmapCanvas:Landroid/graphics/Canvas;
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    neg-float v14, v6

    neg-float v15, v7

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    invoke-virtual {v12, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 156
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v9, mFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 162
    :cond_0
    const/4 v10, 0x0

    .line 165
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v11

    .line 171
    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v10, :cond_1

    .line 172
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :cond_1
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v8

    .line 174
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v14

    goto :goto_0

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method
