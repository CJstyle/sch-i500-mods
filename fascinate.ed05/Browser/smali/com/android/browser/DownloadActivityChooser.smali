.class public Lcom/android/browser/DownloadActivityChooser;
.super Ljava/lang/Object;
.source "DownloadActivityChooser.java"


# static fields
.field static final CD_TEMPFILE_PATH:Ljava/lang/String; = "/sdcard/tempfile1.xml"

.field static final CHOOSER_INTENT:Ljava/lang/String; = "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER"

.field static final EXTRA_CONTENTDISPOSITION:Ljava/lang/String; = "com.android.browser.contentdisposition"

.field static final EXTRA_CONTENTLENGTH:Ljava/lang/String; = "com.android.browser.contentlength"

.field static final EXTRA_MIMETYPE:Ljava/lang/String; = "com.android.browser.mimetype"

.field static final EXTRA_TYPE:Ljava/lang/String; = "com.android.browser.type"

.field static final EXTRA_URL:Ljava/lang/String; = "com.android.browser.url"

.field static final EXTRA_USERAGENT:Ljava/lang/String; = "com.android.browser.useragent"

.field static final LOGTAG:Ljava/lang/String; = "DownloadActivityChooser"

.field static final MIME_MULTIPART_RELATED:Ljava/lang/String; = "multipart/related"

.field static final MIME_OMA_DD:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field static final MIME_OMA_DRM_ROAP_TRIGGER:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+xml"

.field static final MIME_RSS:Ljava/lang/String; = "application/rss+xml"

.field static final MIME_WEBKIT_FEED:Ljava/lang/String; = "application/vnd.webkit.maybe.feed"

.field static final TYPE_CD:I = 0x0

.field static final TYPE_MULTIPART_RELATED:I = 0x4

.field static final TYPE_NONE:I = -0x1

.field static final TYPE_OMA_DD:I = 0x2

.field static final TYPE_OMA_DRM_ROAP_TRIGGER:I = 0x3

.field static final TYPE_RSS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chooseActivity(Lcom/android/browser/BrowserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "resolveInfo"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.browser.url"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v3, "com.android.browser.useragent"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v3, "com.android.browser.contentdisposition"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v3, "com.android.browser.mimetype"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v3, "com.android.browser.contentlength"

    invoke-virtual {v1, v3, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 195
    const-string v3, "com.android.browser.type"

    invoke-static {p5}, Lcom/android/browser/DownloadActivityChooser;->getType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    if-eqz p1, :cond_0

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, resolvedIntent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, chooser:Landroid/content/Intent;
    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    .end local v0           #chooser:Landroid/content/Intent;
    .end local v2           #resolvedIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {p0, v1}, Lcom/android/browser/DownloadActivityChooser;->handleIntent(Lcom/android/browser/BrowserActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static getType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x1

    .line 170
    const-string v0, "application/vnd.oma.dd+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v0, 0x2

    .line 179
    :goto_0
    return v0

    .line 172
    :cond_0
    const-string v0, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 173
    const/4 v0, 0x3

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "multipart/related"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 175
    const/4 v0, 0x4

    goto :goto_0

    .line 176
    :cond_2
    const-string v0, "application/rss+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static handleIntent(Lcom/android/browser/BrowserActivity;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v5, "com.android.browser.useragent"

    const-string v4, "com.android.browser.mimetype"

    const-string v2, "com.android.browser.url"

    .line 76
    const-string v0, "com.android.browser.type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 79
    .local v8, type:I
    packed-switch v8, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-string v0, "DownloadActivityChooser"

    const-string v1, " handleIntent:  OMA dd downlaod "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "uri"

    const-string v1, "com.android.browser.url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "entity"

    const-string v1, "/sdcard/tempfile1.xml"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "status"

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v0, "downloadmethod"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v0, "mimetype"

    const-string v1, "com.android.browser.mimetype"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "visibility"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "useragent"

    const-string v1, "com.android.browser.useragent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "storagetype"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 99
    .local v7, contentUri:Landroid/net/Uri;
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    goto :goto_0

    .line 106
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :pswitch_1
    const-string v0, "DownloadActivityChooser"

    const-string v1, " handleIntent:  Direct ROAP downlaod "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "uri"

    const-string v1, "com.android.browser.url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "entity"

    const-string v1, "/sdcard/tempfile1.xml"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "status"

    const/16 v1, 0xb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v0, "downloadmethod"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v0, "mimetype"

    const-string v1, "com.android.browser.mimetype"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "visibility"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v0, "useragent"

    const-string v1, "com.android.browser.useragent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string v0, "storagetype"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 121
    .restart local v7       #contentUri:Landroid/net/Uri;
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 128
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :pswitch_2
    const-string v0, "DownloadActivityChooser"

    const-string v1, " handleIntent:  OMA ROAP downlaod "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "uri"

    const-string v1, "com.android.browser.url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "entity"

    const-string v1, "/sdcard/tempfile1.xml"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "status"

    const/16 v1, 0xb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "downloadmethod"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v0, "mimetype"

    const-string v1, "com.android.browser.mimetype"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "visibility"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v0, "useragent"

    const-string v1, "com.android.browser.useragent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const-string v0, "storagetype"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 143
    .restart local v7       #contentUri:Landroid/net/Uri;
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 148
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :pswitch_3
    const-string v0, "com.android.browser.url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.android.browser.useragent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.android.browser.contentdisposition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.android.browser.mimetype"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.android.browser.contentlength"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 159
    :pswitch_4
    const-string v0, "com.android.browser.url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->AddFeedToGoogleReader(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
