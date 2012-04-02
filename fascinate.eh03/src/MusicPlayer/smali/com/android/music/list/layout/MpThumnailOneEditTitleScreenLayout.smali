.class public Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpThumnailOneEditTitleScreenLayout.java"


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

    .line 253
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->PHOTO_PICKED_WITH_DATA:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->CAMERA_PICKED_WITH_DATA:I

    .line 59
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    .line 61
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 63
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->path:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 65
    iput-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    .line 260
    new-instance v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    iput-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    .line 254
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    .line 255
    iput p2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mListType:I

    .line 256
    iget-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public createPlayList()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const-string v6, "CreatePlayList"

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 83
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/playlistImage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const-string v0, "CreatePlayList"

    const-string v0, "mkdir error"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/playlistImage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 112
    if-eqz v1, :cond_a

    .line 116
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Conditions"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 131
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/music/common/data/MusicDB;->createUserList(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    .line 134
    iget v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mListType:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    .line 136
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 137
    add-int/lit8 v1, v0, 0x1

    new-array v5, v1, [Z

    .line 139
    :goto_2
    if-ltz v0, :cond_4

    .line 140
    aput-boolean v2, v5, v0

    .line 139
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    const-string v1, "CreatePlayList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSoftKeyView Error 3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 105
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    const-string v2, "CreatePlayList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSoftKeyView Error 2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    if-eqz v1, :cond_1

    .line 116
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 119
    :catch_2
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    const-string v1, "CreatePlayList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSoftKeyView Error 3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_3

    .line 116
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    :cond_3
    throw v0

    .line 119
    :catch_3
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    const-string v1, "CreatePlayList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSoftKeyView Error 3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 142
    :cond_4
    new-instance v0, Lcom/android/music/list/data/MpListFileManageThread;

    const/16 v1, 0x9

    iget v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/android/music/list/data/MpListFileManageThread;-><init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;Z)V

    .line 147
    invoke-virtual {v0}, Lcom/android/music/list/data/MpListFileManageThread;->start()V

    .line 148
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 150
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 177
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 180
    :cond_5
    if-eqz v3, :cond_6

    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 182
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 184
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 189
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 195
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    aput-object v4, v1, v9

    .line 196
    const-string v4, "-1"

    aput-object v4, v1, v2

    .line 197
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_7

    .line 198
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v10

    .line 201
    :goto_5
    const-string v4, "ListType"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v4, "TitleText"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    if-nez v3, :cond_9

    .line 205
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 206
    const-string v3, "0"

    aput-object v3, v1, v9

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 215
    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v3, v10, v2}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 216
    iget-object v2, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    invoke-direct {v4, v3, v9, v5, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v2, v9

    .line 217
    iget-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    iget v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->dbid:I

    invoke-virtual {v2, v3, v7, v4}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v2

    .line 220
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 221
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 224
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    goto :goto_6

    .line 200
    :cond_7
    aput-object v7, v1, v10

    goto :goto_5

    .line 226
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 231
    :goto_7
    const-string v2, "Conditions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 112
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 103
    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    move-object v1, v0

    goto/16 :goto_1

    :cond_b
    move-object v1, v7

    goto/16 :goto_1
.end method

.method public getDefaultHeight()I
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, defaultimage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    return v1
.end method

.method public getDefaultWidth()I
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, defaultimage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    return v1
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object p2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mImageUri:Landroid/net/Uri;

    .line 74
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 7
    .parameter "layoutData"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, defaultimage:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v2, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 300
    .local v2, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 301
    iget-object v4, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c0060

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 302
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 304
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 311
    :goto_0
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 315
    iget-object v4, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c0061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 316
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 318
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    if-eqz v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v4}, Lcom/android/music/common/data/MusicDB;->getDefaultCreatePlaylistName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mPlayListName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 322
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setLines(I)V

    .line 324
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 329
    iget-object v4, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c0063

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 330
    .local v1, Save:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v5, 0x7f0c0064

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 332
    .local v0, Cancel:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;

    invoke-direct {v5, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v4, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$3;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    new-instance v4, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    return-void

    .line 308
    .end local v0           #Cancel:Landroid/widget/Button;
    .end local v1           #Save:Landroid/widget/Button;
    :cond_2
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 309
    iput-boolean v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->isDefault:Z

    goto :goto_0
.end method
