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
    .line 269
    iput-object p1, p0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 276
    const/4 v9, 0x0

    .line 277
    .local v9, loadCount:Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;
    const/4 v14, 0x0

    .line 278
    .local v14, tempimage:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, count:I
    const/4 v5, 0x0

    .line 292
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

    .line 294
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

    .line 296
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

    .line 297
    monitor-exit v16

    .line 507
    :cond_1
    return-void

    .line 299
    :cond_2
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    const-wide/16 v16, 0xa

    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 310
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 311
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 313
    if-lez v5, :cond_8

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CallImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 317
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

    .line 319
    .local v8, item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 320
    if-eqz v8, :cond_0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 322
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

    if-nez v16, :cond_3

    .line 328
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

    .line 329
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

    .line 330
    .local v7, in:Ljava/io/InputStream;
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

    .line 331
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

    .line 332
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

    .line 333
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
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v14

    .line 334
    if-eqz v14, :cond_0

    .line 351
    if-eqz v14, :cond_0

    .line 356
    new-instance v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    .line 357
    .local v12, temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    iput-object v14, v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IdBitmap:Landroid/graphics/Bitmap;

    .line 358
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    .line 359
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

    .line 366
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_3
    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Tag:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 369
    .local v10, msg:Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v3, b:Landroid/os/Bundle;
    const-string v16, "dbid"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->dbid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v16, "path"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v16, "index"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->numberID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v16, "Tag"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->Tag:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v10, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    .end local v3           #b:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_4
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

    .line 382
    .local v13, tempi:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 384
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->CurrentImage:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 386
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

    .line 388
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

    .line 390
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_0

    .line 392
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

    .line 394
    .restart local v8       #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    if-eqz v8, :cond_0

    .line 399
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    monitor-enter v16

    .line 401
    :try_start_5
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

    .line 402
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    if-nez v12, :cond_6

    monitor-exit v16

    goto/16 :goto_0

    .line 407
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    :catchall_0
    move-exception v17

    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v17

    .line 299
    .end local v8           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .end local v13           #tempi:I
    :catchall_1
    move-exception v17

    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v17

    .line 303
    :catch_0
    move-exception v6

    .line 306
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 311
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v17

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v17

    .line 319
    :catchall_3
    move-exception v17

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v17

    .line 340
    .restart local v8       #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 343
    .local v6, e:Ljava/io/FileNotFoundException;
    goto/16 :goto_0

    .line 345
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v16

    move-object/from16 v6, v16

    .line 348
    .local v6, e:Ljava/lang/IllegalStateException;
    goto/16 :goto_0

    .line 403
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .restart local v13       #tempi:I
    :cond_6
    :try_start_9
    move-object v0, v12

    iget v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    if-nez v17, :cond_7

    .line 405
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

    .line 407
    :cond_7
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 413
    .end local v8           #item:Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .end local v13           #tempi:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 415
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 417
    const/16 v17, 0x50

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 419
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

    .line 420
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_9

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 420
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 424
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 426
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 427
    if-lez v4, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 432
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->LoadFile:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 433
    .local v11, num:Ljava/lang/String;
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 434
    if-eqz v11, :cond_0

    .line 435
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 441
    :try_start_c
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

    .line 442
    .restart local v7       #in:Ljava/io/InputStream;
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

    .line 443
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
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v14

    .line 455
    if-eqz v14, :cond_0

    .line 460
    new-instance v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;-><init>(Lcom/android/music/list/data/MpImageDataBuffer;)V

    .line 461
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    iput-object v14, v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IdBitmap:Landroid/graphics/Bitmap;

    .line 462
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    .line 463
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    :cond_a
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

    .line 473
    .restart local v13       #tempi:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 475
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_LoadFileThread;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/data/MpImageDataBuffer;->DeleteFile:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 477
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

    .line 480
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

    .line 482
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_0

    .line 484
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

    .line 485
    .restart local v11       #num:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 487
    sget-object v16, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    monitor-enter v16

    .line 490
    :try_start_d
    sget-object v17, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;

    .line 491
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    if-nez v12, :cond_c

    .line 492
    monitor-exit v16

    goto/16 :goto_0

    .line 498
    .end local v12           #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    :catchall_4
    move-exception v17

    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v17

    .line 426
    .end local v11           #num:Ljava/lang/String;
    .end local v13           #tempi:I
    :catchall_5
    move-exception v17

    :try_start_e
    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v17

    .line 433
    :catchall_6
    move-exception v17

    :try_start_f
    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v17

    .line 445
    .restart local v11       #num:Ljava/lang/String;
    :catch_3
    move-exception v16

    move-object/from16 v6, v16

    .line 448
    .local v6, e:Ljava/io/FileNotFoundException;
    goto/16 :goto_0

    .line 450
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v16

    move-object/from16 v6, v16

    .line 453
    .local v6, e:Ljava/lang/IllegalStateException;
    goto/16 :goto_0

    .line 493
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v12       #temp:Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;
    .restart local v13       #tempi:I
    :cond_c
    :try_start_10
    move-object v0, v12

    iget v0, v0, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Lcom/android/music/list/data/MpImageDataBuffer$_FilenameBitmap;->IndexCount:I

    if-nez v17, :cond_d

    .line 496
    sget-object v17, Lcom/android/music/list/data/MpImageDataBuffer;->FilenameBitmap:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_d
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 482
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method
