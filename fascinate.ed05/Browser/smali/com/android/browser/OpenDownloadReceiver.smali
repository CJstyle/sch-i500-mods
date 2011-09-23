.class public Lcom/android/browser/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deleteFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "cr"
    .parameter "filename"
    .parameter "mimetype"

    .prologue
    .line 99
    const-string v1, "image"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 108
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 101
    .end local v0           #uri:Landroid/net/Uri;
    :cond_2
    const-string v1, "audio"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 103
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    const-string v1, "video"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 106
    .end local v0           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 108
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 40
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 41
    .local v5, data:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 43
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v6, 0x4

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "mimetype"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 47
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 49
    .local v13, filename:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, mimetype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, action:Ljava/lang/String;
    const-string v6, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 52
    const/4 v6, 0x3

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 53
    .local v18, status:I
    invoke-static/range {v18 .. v18}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static/range {v18 .. v18}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 55
    new-instance v14, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v14, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v14, launchIntent:Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 58
    .local v17, path:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 59
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    .line 61
    :cond_0
    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/high16 v6, 0x1000

    invoke-virtual {v14, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v10           #action:Ljava/lang/String;
    .end local v13           #filename:Ljava/lang/String;
    .end local v14           #launchIntent:Landroid/content/Intent;
    .end local v15           #mimetype:Ljava/lang/String;
    .end local v17           #path:Landroid/net/Uri;
    .end local v18           #status:I
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_2
    return-void

    .line 65
    .restart local v10       #action:Ljava/lang/String;
    .restart local v13       #filename:Ljava/lang/String;
    .restart local v14       #launchIntent:Landroid/content/Intent;
    .restart local v15       #mimetype:Ljava/lang/String;
    .restart local v17       #path:Landroid/net/Uri;
    .restart local v18       #status:I
    :catch_0
    move-exception v12

    .line 66
    .local v12, ex:Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0900d8

    const/4 v7, 0x1

    :try_start_2
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    .end local v10           #action:Ljava/lang/String;
    .end local v12           #ex:Landroid/content/ActivityNotFoundException;
    .end local v13           #filename:Ljava/lang/String;
    .end local v14           #launchIntent:Landroid/content/Intent;
    .end local v15           #mimetype:Ljava/lang/String;
    .end local v17           #path:Landroid/net/Uri;
    .end local v18           #status:I
    :catchall_0
    move-exception v6

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 72
    .restart local v10       #action:Ljava/lang/String;
    .restart local v13       #filename:Ljava/lang/String;
    .restart local v15       #mimetype:Ljava/lang/String;
    .restart local v18       #status:I
    :cond_4
    :try_start_3
    new-instance v16, Landroid/content/Intent;

    const-class v6, Lcom/android/browser/BrowserDownloadPage;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v16, pageView:Landroid/content/Intent;
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    const/high16 v6, 0x1000

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    .end local v16           #pageView:Landroid/content/Intent;
    .end local v18           #status:I
    :cond_5
    const-string v6, "android.intent.action.DELETE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v13

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/OpenDownloadReceiver;->deleteFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
