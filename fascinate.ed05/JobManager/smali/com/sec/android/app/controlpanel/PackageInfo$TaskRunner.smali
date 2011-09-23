.class Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;
.super Ljava/lang/Thread;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskRunner"
.end annotation


# static fields
.field static final MSG_PKG_SIZE:I = 0x8


# instance fields
.field volatile abort:Z

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, appList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 318
    const-string v0, "JobManager_PackageInfo_TaskRunner_Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->abort:Z

    .line 319
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->mPkgList:Ljava/util/List;

    .line 320
    return-void
.end method


# virtual methods
.method public requestExitAndWait()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->abort:Z

    .line 324
    return-void
.end method

.method public run()V
    .locals 27

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$100(Lcom/sec/android/app/controlpanel/PackageInfo;)Ljava/util/List;

    move-result-object v22

    monitor-enter v22

    .line 328
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->mPkgList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v20

    .line 329
    .local v20, size:I
    div-int/lit8 v17, v20, 0x8

    .line 330
    .local v17, numMsgs:I
    mul-int/lit8 v23, v17, 0x8

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 331
    add-int/lit8 v17, v17, 0x1

    .line 333
    :cond_0
    const/4 v13, 0x0

    .line 334
    .local v13, endi:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_0
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 342
    add-int/lit8 v13, v13, 0x8

    .line 343
    move v0, v13

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 344
    move/from16 v13, v20

    .line 346
    :cond_1
    sub-int v23, v13, v15

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object v7, v0

    .line 347
    .local v7, codeSizes:[J
    sub-int v23, v13, v15

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    .line 348
    .local v6, codeSizeFormatted:[Ljava/lang/String;
    sub-int v23, v13, v15

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object v11, v0

    .line 349
    .local v11, dataSizes:[J
    sub-int v23, v13, v15

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .line 350
    .local v10, dataSizeFormatted:[Ljava/lang/String;
    sub-int v23, v13, v15

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 351
    .local v19, packages:[Ljava/lang/String;
    move v14, v15

    .local v14, i:I
    :goto_1
    if-ge v14, v13, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->abort:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 388
    :cond_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v8, data:Landroid/os/Bundle;
    const-string v23, "ps"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 390
    const-string v23, "cs"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 391
    const-string v23, "cfs"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 392
    const-string v23, "ds"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 393
    const-string v23, "dfs"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$800(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 396
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$800(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/os/Handler;

    move-result-object v23

    const-wide/16 v24, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 398
    const-string v23, "AppInfo"

    const-string v24, "Loading pakcage info:Sleep"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    const-wide/16 v23, 0x12c

    :try_start_1
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    :goto_2
    :try_start_2
    const-string v23, "AppInfo"

    const-string v24, "Loading pakcage info:Finish Sleep"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    add-int/lit8 v15, v15, 0x8

    goto/16 :goto_0

    .line 358
    .end local v8           #data:Landroid/os/Bundle;
    .end local v16           #msg:Landroid/os/Message;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->mPkgList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$200(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->mPkgList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$300(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 365
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$400(Lcom/sec/android/app/controlpanel/PackageInfo;)Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    move-object/from16 v18, v0

    .line 366
    .local v18, pStats:Landroid/content/pm/PackageStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$400(Lcom/sec/android/app/controlpanel/PackageInfo;)Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->succeeded:Z

    move/from16 v21, v0

    .line 369
    .local v21, succeeded:Z
    if-eqz v21, :cond_4

    if-eqz v18, :cond_4

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$500(Lcom/sec/android/app/controlpanel/PackageInfo;Landroid/content/pm/PackageStats;)J

    move-result-wide v4

    .line 371
    .local v4, code:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$600(Lcom/sec/android/app/controlpanel/PackageInfo;Landroid/content/pm/PackageStats;)J

    move-result-wide v8

    .line 376
    .local v8, data:J
    :goto_4
    sub-int v23, v14, v15

    aput-wide v4, v7, v23

    .line 377
    sub-int v23, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$700(Lcom/sec/android/app/controlpanel/PackageInfo;J)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v23

    .line 378
    sub-int v23, v14, v15

    aput-wide v8, v11, v23

    .line 379
    sub-int v23, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$700(Lcom/sec/android/app/controlpanel/PackageInfo;J)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v10, v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    sub-int v23, v14, v15

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->mPkgList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #code:J
    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v19, v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 351
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 360
    .end local v8           #data:J
    .end local v18           #pStats:Landroid/content/pm/PackageStats;
    .end local v21           #succeeded:Z
    :catch_0
    move-exception v23

    move-object/from16 v12, v23

    .line 361
    .local v12, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v23, 0x1

    :try_start_6
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->abort:Z

    goto/16 :goto_3

    .line 408
    .end local v6           #codeSizeFormatted:[Ljava/lang/String;
    .end local v7           #codeSizes:[J
    .end local v10           #dataSizeFormatted:[Ljava/lang/String;
    .end local v11           #dataSizes:[J
    .end local v12           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v13           #endi:I
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v17           #numMsgs:I
    .end local v19           #packages:[Ljava/lang/String;
    .end local v20           #size:I
    :catchall_0
    move-exception v23

    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v23

    .line 373
    .restart local v6       #codeSizeFormatted:[Ljava/lang/String;
    .restart local v7       #codeSizes:[J
    .restart local v10       #dataSizeFormatted:[Ljava/lang/String;
    .restart local v11       #dataSizes:[J
    .restart local v13       #endi:I
    .restart local v14       #i:I
    .restart local v15       #j:I
    .restart local v17       #numMsgs:I
    .restart local v18       #pStats:Landroid/content/pm/PackageStats;
    .restart local v19       #packages:[Ljava/lang/String;
    .restart local v20       #size:I
    .restart local v21       #succeeded:Z
    :cond_4
    const-wide/16 v4, -0x1

    .line 374
    .restart local v4       #code:J
    const-wide/16 v8, -0x1

    .restart local v8       #data:J
    goto :goto_4

    .line 383
    .end local v4           #code:J
    :catch_1
    move-exception v23

    move-object/from16 v12, v23

    .line 384
    .restart local v12       #e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v23, 0x1

    :try_start_7
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->abort:Z

    goto :goto_5

    .line 401
    .end local v12           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v18           #pStats:Landroid/content/pm/PackageStats;
    .end local v21           #succeeded:Z
    .local v8, data:Landroid/os/Bundle;
    .restart local v16       #msg:Landroid/os/Message;
    :catch_2
    move-exception v12

    .line 402
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 407
    .end local v6           #codeSizeFormatted:[Ljava/lang/String;
    .end local v7           #codeSizes:[J
    .end local v8           #data:Landroid/os/Bundle;
    .end local v10           #dataSizeFormatted:[Ljava/lang/String;
    .end local v11           #dataSizes:[J
    .end local v12           #e:Ljava/lang/InterruptedException;
    .end local v14           #i:I
    .end local v16           #msg:Landroid/os/Message;
    .end local v19           #packages:[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$800(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x2

    const-wide/16 v25, 0x64

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 408
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 409
    return-void
.end method
