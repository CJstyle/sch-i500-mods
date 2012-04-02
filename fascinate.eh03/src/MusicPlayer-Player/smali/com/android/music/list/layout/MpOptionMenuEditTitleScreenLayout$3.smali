.class Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;
.super Ljava/lang/Object;
.source "MpOptionMenuEditTitleScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 250
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 254
    .local v8, mLayoutInflater:Landroid/view/LayoutInflater;
    const v13, 0x7f03000a

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 255
    .local v10, myView:Landroid/view/View;
    const v13, 0x7f0c0032

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 256
    .local v11, text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, mPlayListName:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 271
    const v13, 0x7f0a00c7

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 272
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a00a8

    new-instance v15, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3$1;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 281
    .local v2, alert:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 365
    .end local v2           #alert:Landroid/app/AlertDialog;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local p0
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$600(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/music/common/data/MusicDB;->isExistUserList(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0a00c6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a00a8

    new-instance v15, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3$2;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3$2;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 297
    .restart local v2       #alert:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 301
    .end local v2           #alert:Landroid/app/AlertDialog;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$300(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 303
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$700()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_4

    .line 306
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_4

    .line 308
    const-string v13, "CreatePlayList"

    const-string v14, "mkdir error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$700()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$402(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    const/4 v6, 0x0

    .line 319
    .local v6, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$400(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    .end local v6           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v7, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$300(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x50

    invoke-virtual {v13, v14, v15, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 321
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 332
    if-eqz v7, :cond_5

    .line 336
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 357
    .end local v5           #file:Ljava/io/File;
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$600(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mUriImage:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$400(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/android/music/common/data/MusicDB;->updateUserList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "input_method"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 361
    .local v12, vk:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto/16 :goto_0

    .line 339
    .end local v12           #vk:Landroid/view/inputmethod/InputMethodManager;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local p0
    :catch_0
    move-exception v4

    .line 341
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    const-string v13, "CreatePlayList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initSoftKeyView Error 3 :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v13

    move-object v4, v13

    .line 325
    .restart local v4       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    const-string v13, "CreatePlayList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initSoftKeyView Error 2 :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    if-eqz v6, :cond_0

    .line 336
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 339
    :catch_2
    move-exception v4

    .line 341
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    const-string v13, "CreatePlayList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initSoftKeyView Error 3 :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_2
    if-eqz v6, :cond_6

    .line 336
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 344
    :cond_6
    throw v13

    .line 339
    :catch_3
    move-exception v4

    .line 341
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    const-string v13, "CreatePlayList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initSoftKeyView Error 3 :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 323
    .end local v6           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v13

    move-object v4, v13

    move-object v6, v7

    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
