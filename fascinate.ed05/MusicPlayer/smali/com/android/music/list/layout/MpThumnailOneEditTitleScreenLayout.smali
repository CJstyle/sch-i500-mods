.class public Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpThumnailOneEditTitleScreenLayout.java"


# static fields
.field private static final PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String; = "/sdcard/playlistImage"


# instance fields
.field private final CAMERA_PICKED_WITH_DATA:I

.field public KeyHandle:Landroid/os/Handler;

.field private final PHOTO_PICKED_WITH_DATA:I

.field public dbid:I

.field private isDefault:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mImageUri:Landroid/net/Uri;

.field protected mListType:I

.field private mPlayListName:Ljava/lang/String;

.field private mdb:Lcom/android/music/common/data/MusicDB;

.field private path:Ljava/lang/String;

.field private titleImage:Landroid/widget/ImageView;

.field private titleMainText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mListType"

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->PHOTO_PICKED_WITH_DATA:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->CAMERA_PICKED_WITH_DATA:I

    .line 55
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    .line 57
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 59
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->path:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 61
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    .line 255
    new-instance v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    iput-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    .line 249
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    .line 250
    iput p2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mListType:I

    .line 251
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mView:Landroid/view/View;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public createPlayList()V
    .locals 28

    .prologue
    .line 73
    const/16 v21, 0x0

    .line 74
    .local v21, imgFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 78
    new-instance v17, Ljava/io/File;

    const-string v6, "/sdcard/playlistImage"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    .line 83
    const-string v6, "CreatePlayList"

    const-string v7, "mkdir error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v17           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v17       #file:Ljava/io/File;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sdcard/playlistImage/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 91
    const/16 v18, 0x0

    .line 94
    .local v18, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v18           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v19, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 96
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 107
    if-eqz v19, :cond_3

    .line 111
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .end local v17           #file:Ljava/io/File;
    .end local v19           #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v5, v0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "Conditions"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 126
    .local v14, con:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    move-object v8, v0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->createUserList(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mListType:I

    move v6, v0

    const/16 v7, 0x18

    if-ne v6, v7, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v5, v0

    check-cast v5, Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v5, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 132
    .local v15, count:I
    add-int/lit8 v6, v15, 0x1

    new-array v10, v6, [Z

    .line 134
    .local v10, checked:[Z
    :goto_1
    if-ltz v15, :cond_5

    .line 135
    const/4 v6, 0x1

    aput-boolean v6, v10, v15

    .line 134
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 114
    .end local v10           #checked:[Z
    .end local v14           #con:[Ljava/lang/String;
    .end local v15           #count:I
    .restart local v17       #file:Ljava/io/File;
    .restart local v19       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v16

    .line 116
    .local v16, e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    const-string v6, "CreatePlayList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSoftKeyView Error 3 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 98
    .end local v16           #e:Ljava/io/IOException;
    .end local v19           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v18       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object/from16 v16, v6

    .line 100
    .restart local v16       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v6, "CreatePlayList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSoftKeyView Error 2 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    if-eqz v18, :cond_1

    .line 111
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 114
    :catch_2
    move-exception v16

    .line 116
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    const-string v6, "CreatePlayList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSoftKeyView Error 3 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    .end local v16           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v18, :cond_4

    .line 111
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :cond_4
    throw v6

    .line 114
    :catch_3
    move-exception v16

    .line 116
    .restart local v16       #e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    const-string v6, "CreatePlayList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSoftKeyView Error 3 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    .end local v16           #e:Ljava/io/IOException;
    .end local v17           #file:Ljava/io/File;
    .end local v18           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v10       #checked:[Z
    .restart local v14       #con:[Ljava/lang/String;
    .restart local v15       #count:I
    :cond_5
    new-instance v5, Lcom/android/music/list/data/MpListFileManageThread;

    const/16 v6, 0x9

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v9, v0

    check-cast v9, Lcom/android/music/list/activity/MpListActivity;

    iget-object v9, v9, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v9}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/android/music/list/data/MpListFileManageThread;-><init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;)V

    .line 142
    .local v5, thread:Lcom/android/music/list/data/MpListFileManageThread;
    invoke-virtual {v5}, Lcom/android/music/list/data/MpListFileManageThread;->start()V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v27, vk:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v27

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 175
    .end local v5           #thread:Lcom/android/music/list/data/MpListFileManageThread;
    .end local v10           #checked:[Z
    .end local v15           #count:I
    .end local v27           #vk:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    if-eqz v14, :cond_7

    const/4 v6, 0x0

    aget-object v6, v14, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    .restart local v27       #vk:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v27

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 182
    .end local v27           #vk:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    .restart local v27       #vk:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v27

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 187
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-class v7, Lcom/android/music/list/activity/MpListActivity;

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v22, intent:Landroid/content/Intent;
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 190
    .local v26, title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v26, v6

    .line 191
    const/4 v6, 0x1

    const-string v7, "-1"

    aput-object v7, v26, v6

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    move-object v6, v0

    if-eqz v6, :cond_8

    .line 193
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v26, v6

    .line 196
    :goto_4
    const-string v6, "ListType"

    const/16 v7, 0xd

    move-object/from16 v0, v22

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v6, "TitleText"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    if-nez v14, :cond_a

    .line 200
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 201
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v14, v6

    .line 202
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 204
    const/16 v20, 0x0

    .line 210
    .local v20, iMainlistTypeIndex:I
    new-instance v23, Lcom/android/music/common/data/MpListFilter;

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 211
    .local v23, listFilter:Lcom/android/music/common/data/MpListFilter;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v6, v0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    move-object v11, v0

    move-object v0, v8

    move-object/from16 v1, v23

    move v2, v9

    move v3, v10

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v8, v6, v7

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    move v8, v0

    move-object v0, v6

    move-object/from16 v1, v23

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v20

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 216
    .local v24, setting:Ljava/lang/String;
    new-instance v25, Ljava/util/StringTokenizer;

    const-string v6, "|"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v25, strToken:Ljava/util/StringTokenizer;
    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 218
    add-int/lit8 v20, v20, 0x1

    .line 219
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    goto :goto_5

    .line 195
    .end local v20           #iMainlistTypeIndex:I
    .end local v23           #listFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v24           #setting:Ljava/lang/String;
    .end local v25           #strToken:Ljava/util/StringTokenizer;
    :cond_8
    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v26, v6

    goto/16 :goto_4

    .line 221
    .restart local v20       #iMainlistTypeIndex:I
    .restart local v23       #listFilter:Lcom/android/music/common/data/MpListFilter;
    .restart local v24       #setting:Ljava/lang/String;
    .restart local v25       #strToken:Ljava/util/StringTokenizer;
    :cond_9
    add-int/lit8 v20, v20, 0x1

    .line 224
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 226
    .end local v20           #iMainlistTypeIndex:I
    .end local v23           #listFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v24           #setting:Ljava/lang/String;
    .end local v25           #strToken:Ljava/util/StringTokenizer;
    :cond_a
    const-string v6, "Conditions"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 107
    .end local v14           #con:[Ljava/lang/String;
    .end local v22           #intent:Landroid/content/Intent;
    .end local v26           #title:[Ljava/lang/String;
    .end local v27           #vk:Landroid/view/inputmethod/InputMethodManager;
    .restart local v17       #file:Ljava/io/File;
    .restart local v19       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object/from16 v18, v19

    .end local v19           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v18       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 98
    .end local v18           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v19       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object/from16 v16, v6

    move-object/from16 v18, v19

    .end local v19           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v18       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public getDefaultHeight()I
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, defaultimage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    return v1
.end method

.method public getDefaultWidth()I
    .locals 3

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, defaultimage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    return v1
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object p2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    .line 69
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 7
    .parameter "layoutData"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, defaultimage:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v2, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 295
    .local v2, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 296
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c005d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 297
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 299
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 306
    :goto_0
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 310
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c005e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 311
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    if-eqz v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v4}, Lcom/android/music/common/data/MusicDB;->getDefaultCreatePlaylistName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    .line 315
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 317
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setLines(I)V

    .line 319
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 324
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c0060

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 325
    .local v1, Save:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c0061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 327
    .local v0, Cancel:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;

    invoke-direct {v5, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    new-instance v4, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    new-instance v4, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    return-void

    .line 303
    .end local v0           #Cancel:Landroid/widget/Button;
    .end local v1           #Save:Landroid/widget/Button;
    :cond_2
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 304
    iput-boolean v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    goto :goto_0
.end method
