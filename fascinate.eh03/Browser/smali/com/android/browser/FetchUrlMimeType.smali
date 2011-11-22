.class Lcom/android/browser/FetchUrlMimeType;
.super Landroid/os/AsyncTask;
.source "FetchUrlMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lcom/android/browser/BrowserActivity;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 14
    .parameter "values"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 60
    aget-object v11, p1, v11

    iput-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    .line 63
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "uri"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, uri:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    move-object v11, v13

    .line 118
    :goto_0
    return-object v11

    .line 70
    :cond_1
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "useragent"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 74
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-static {v10}, Lcom/android/browser/UtilsSec;->getUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/browser/BrowserActivity;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, path:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/browser/UtilsSec;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 76
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 77
    :cond_2
    const-string v11, "FetchUrlMimeType"

    const-string v12, "getHost() and getUrlPath() returned null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v13

    .line 78
    goto :goto_0

    .line 81
    :cond_3
    new-instance v7, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 83
    .local v7, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "cookiedata"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, cookie:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 85
    const-string v11, "Cookie"

    invoke-virtual {v7, v11, v1}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_4
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "referer"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, referer:Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 90
    const-string v11, "Referer"

    invoke-virtual {v7, v11, v6}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_5
    const/4 v4, 0x0

    .line 96
    .local v4, mimeType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 100
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_6

    .line 101
    const-string v11, "Content-Type"

    invoke-interface {v8, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 102
    .local v3, header:Lorg/apache/http/Header;
    if-eqz v3, :cond_6

    .line 103
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 104
    const/16 v11, 0x3b

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 105
    .local v9, semicolonIndex:I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    .line 106
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 115
    .end local v3           #header:Lorg/apache/http/Header;
    .end local v9           #semicolonIndex:I
    :cond_6
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    move-object v11, v4

    .line 118
    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 111
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 112
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 113
    .local v2, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v11
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "mimeType"

    .prologue
    .line 123
    if-eqz p1, :cond_2

    .line 124
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, url:Ljava/lang/String;
    const-string v4, "text/plain"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, newMimeType:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v2           #newMimeType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "hint"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "storagetype"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    :cond_3
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "visibility"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, contentUri:Landroid/net/Uri;
    return-void
.end method
