.class Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;
.super Ljava/lang/Thread;
.source "MpImageDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/data/MpImageDataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "_LoadFileThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/data/MpImageDataBuffer;


# direct methods
.method constructor <init>(Lcom/android/music/list/data/MpImageDataBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 346
    const/4 v9, 0x0

    .line 347
    .local v9, loadCount:Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;
    const/4 v14, 0x0

    .line 348
    .local v14, tempimage:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, count:I
    const/4 v5, 0x0

    .line 362
    .local v5, countmax:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 364
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;->stop:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->threadStop:Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_threadStop;->stop:Z

    .line 367
    monitor-exit v16

    .line 598
    :cond_1
    return-void

    .line 369
    :cond_2
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    const-wide/16 v16, 0xa

    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 380
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 381
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    if-lez v5, :cond_b

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 387
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;

    .line 389
    .local v8, item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 390
    if-eqz v8, :cond_0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 392
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 396
    const/4 v7, 0x0

    .line 399
    .local v7, in:Ljava/io/InputStream;
    :try_start_4
    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 400
    .local v15, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 404
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v14

    .line 405
    if-nez v14, :cond_3

    .line 422
    if-eqz v7, :cond_0

    .line 424
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 425
    :catch_0
    move-exception v6

    .line 426
    .local v6, e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v8           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .end local v15           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v17

    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v17

    .line 373
    :catch_1
    move-exception v6

    .line 376
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 381
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v17

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v17

    .line 389
    :catchall_2
    move-exception v17

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v17

    .line 422
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v7, :cond_4

    .line 424
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 430
    :cond_4
    :goto_2
    if-eqz v14, :cond_0

    .line 435
    new-instance v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    .line 436
    .local v12, temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    iput-object v14, v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IdBitmap:Landroid/graphics/Bitmap;

    .line 437
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    .line 438
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_5
    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Tag:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 448
    .local v10, msg:Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v3, b:Landroid/os/Bundle;
    const-string v16, "dbid"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->dbid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v16, "path"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v16, "index"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v16, "Tag"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Tag:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v10, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    .end local v3           #b:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/data/MpImageDataBuffer;->IsValueMpItem(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 462
    .local v13, tempi:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 464
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    const/16 v17, 0x3c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    const/16 v17, 0x3c

    sub-int v5, v16, v17

    .line 470
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    check-cast v8, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;

    .line 474
    .restart local v8       #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    if-eqz v8, :cond_0

    .line 479
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    monitor-enter v16

    .line 481
    :try_start_a
    sget-object v17, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    .line 482
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    if-nez v12, :cond_9

    monitor-exit v16

    goto/16 :goto_0

    .line 487
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    :catchall_3
    move-exception v17

    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v17

    .line 425
    .end local v13           #tempi:I
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v15       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 426
    .local v6, e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 411
    .end local v6           #e:Ljava/io/IOException;
    .end local v15           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v16

    move-object/from16 v6, v16

    .line 422
    .local v6, e:Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_0

    .line 424
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 425
    :catch_4
    move-exception v6

    .line 426
    .local v6, e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 416
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v16

    move-object/from16 v6, v16

    .line 422
    .local v6, e:Ljava/lang/IllegalStateException;
    if-eqz v7, :cond_0

    .line 424
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 425
    :catch_6
    move-exception v6

    .line 426
    .local v6, e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 422
    .end local v6           #e:Ljava/io/IOException;
    :catchall_4
    move-exception v16

    if-eqz v7, :cond_8

    .line 424
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 427
    :cond_8
    :goto_4
    throw v16

    .line 425
    :catch_7
    move-exception v6

    .line 426
    .restart local v6       #e:Ljava/io/IOException;
    const-string v17, "MpImageDataBuffer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IOException occured:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 483
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .restart local v13       #tempi:I
    :cond_9
    :try_start_e
    move-object v0, v12

    iget v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    if-nez v17, :cond_a

    .line 485
    sget-object v17, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_a
    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 493
    .end local v8           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .end local v13           #tempi:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 495
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 497
    const/16 v17, 0x50

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    const/16 v18, 0x50

    sub-int v5, v17, v18

    .line 500
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_c

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 504
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 506
    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 507
    if-lez v4, :cond_1

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 512
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 513
    .local v11, num:Ljava/lang/String;
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 514
    if-eqz v11, :cond_0

    .line 515
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 519
    const/4 v7, 0x0

    .line 522
    .restart local v7       #in:Ljava/io/InputStream;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 524
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_b

    move-result-object v14

    .line 537
    if-eqz v7, :cond_d

    .line 539
    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 546
    :cond_d
    :goto_6
    if-eqz v14, :cond_0

    .line 551
    new-instance v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    .line 552
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    iput-object v14, v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IdBitmap:Landroid/graphics/Bitmap;

    .line 553
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    .line 554
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/data/MpImageDataBuffer;->IsValueList(Ljava/util/LinkedList;Ljava/lang/String;)I

    move-result v13

    .line 564
    .restart local v13       #tempi:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 566
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    const/16 v17, 0x50

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    const/16 v17, 0x50

    sub-int v5, v16, v17

    .line 573
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #num:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 576
    .restart local v11       #num:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 578
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    monitor-enter v16

    .line 581
    :try_start_13
    sget-object v17, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    .line 582
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    if-nez v12, :cond_11

    .line 583
    monitor-exit v16

    goto/16 :goto_0

    .line 589
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    :catchall_5
    move-exception v17

    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v17

    .line 506
    .end local v11           #num:Ljava/lang/String;
    .end local v13           #tempi:I
    :catchall_6
    move-exception v17

    :try_start_14
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v17

    .line 513
    :catchall_7
    move-exception v17

    :try_start_15
    monitor-exit v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v17

    .line 540
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v11       #num:Ljava/lang/String;
    :catch_8
    move-exception v6

    .line 541
    .restart local v6       #e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 526
    .end local v6           #e:Ljava/io/IOException;
    :catch_9
    move-exception v16

    move-object/from16 v6, v16

    .line 537
    .local v6, e:Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_0

    .line 539
    :try_start_16
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_0

    .line 540
    :catch_a
    move-exception v6

    .line 541
    .local v6, e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 531
    .end local v6           #e:Ljava/io/IOException;
    :catch_b
    move-exception v16

    move-object/from16 v6, v16

    .line 537
    .local v6, e:Ljava/lang/IllegalStateException;
    if-eqz v7, :cond_0

    .line 539
    :try_start_17
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_0

    .line 540
    :catch_c
    move-exception v6

    .line 541
    .local v6, e:Ljava/io/IOException;
    const-string v16, "MpImageDataBuffer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IOException occured:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 537
    .end local v6           #e:Ljava/io/IOException;
    :catchall_8
    move-exception v16

    if-eqz v7, :cond_10

    .line 539
    :try_start_18
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 542
    :cond_10
    :goto_8
    throw v16

    .line 540
    :catch_d
    move-exception v6

    .line 541
    .restart local v6       #e:Ljava/io/IOException;
    const-string v17, "MpImageDataBuffer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IOException occured:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 584
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .restart local v13       #tempi:I
    :cond_11
    :try_start_19
    move-object v0, v12

    iget v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    if-nez v17, :cond_12

    .line 587
    sget-object v17, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_12
    monitor-exit v16
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 573
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7
.end method
