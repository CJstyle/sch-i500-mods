.class Lcom/android/server/KeyInputQueue$2;
.super Ljava/lang/Thread;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyInputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KeyInputQueue;


# direct methods
.method constructor <init>(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 558
    const-string v3, "KeyInputQueue"

    const-string v4, "InputDeviceReader.run()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 562
    const/16 v41, 0x0

    .line 563
    .local v41, screenCaptureKeyFlag:I
    new-instance v36, Landroid/view/RawInputEvent;

    invoke-direct/range {v36 .. v36}, Landroid/view/RawInputEvent;-><init>()V

    .line 569
    .local v36, ev:Landroid/view/RawInputEvent;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static/range {v36 .. v36}, Lcom/android/server/KeyInputQueue;->access$100(Landroid/view/RawInputEvent;)Z

    .line 571
    const/16 v42, 0x0

    .line 572
    .local v42, send:Z
    const/16 v33, 0x0

    .line 575
    .local v33, configChanged:Z
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 577
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip key while shutdown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    .end local v33           #configChanged:Z
    .end local v42           #send:Z
    :catch_0
    move-exception v3

    move-object/from16 v37, v3

    .line 1200
    .local v37, exc:Ljava/lang/RuntimeException;
    const-string v3, "KeyInputQueue"

    const-string v4, "InputReaderThread uncaught exception"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 583
    .end local v37           #exc:Ljava/lang/RuntimeException;
    .restart local v33       #configChanged:Z
    .restart local v42       #send:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_3

    .line 585
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    if-nez v3, :cond_3

    .line 587
    :cond_2
    const-string v3, "KeyInputQueue"

    const-string v4, "Skip Touch Event until mDisplay is set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_3
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 594
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_8

    .line 595
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event: dev=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scancode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keycode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/KeyInputQueue;->access$200(Lcom/android/server/KeyInputQueue;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_6

    .line 611
    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_5

    const/16 v41, 0x0

    .line 612
    :cond_5
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenCaptureKeyFlag setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_6
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 618
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move/from16 v41, v0

    .line 619
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenCaptureKeyFlag setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_7
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_9

    .line 624
    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 625
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v3, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 627
    :try_start_2
    new-instance v43, Lcom/android/server/KeyInputQueue$2$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/KeyInputQueue$2$1;-><init>(Lcom/android/server/KeyInputQueue$2;)V

    .line 636
    .local v43, t:Ljava/lang/Thread;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 637
    .end local v43           #t:Ljava/lang/Thread;
    :catch_1
    move-exception v3

    move-object/from16 v35, v3

    .line 638
    .local v35, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 603
    .end local v35           #e:Ljava/lang/Exception;
    :cond_8
    const-string v3, "KeyInputQueue"

    const-string v4, "Input event"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 646
    :cond_9
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_12

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 648
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/server/KeyInputQueue;->access$400(Lcom/android/server/KeyInputQueue;I)Lcom/android/server/InputDevice;

    move-result-object v4

    .line 649
    .local v4, di:Lcom/android/server/InputDevice;
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    if-eqz v5, :cond_11

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v6, v4, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$500(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V

    .line 657
    :cond_a
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_b

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    .line 666
    :cond_b
    const/16 v33, 0x1

    .line 674
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 728
    :cond_c
    :goto_3
    if-eqz v33, :cond_d

    .line 729
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v10, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v10
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 730
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 733
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 736
    :cond_d
    if-eqz v42, :cond_0

    .line 740
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 744
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 745
    .local v7, curTime:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 748
    .local v15, curTimeNano:J
    move-object v0, v4

    iget v0, v0, Lcom/android/server/InputDevice;->classes:I

    move/from16 v32, v0

    .line 749
    .local v32, classes:I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move/from16 v44, v0

    .line 750
    .local v44, type:I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v12, v0

    .line 751
    .local v12, scancode:I
    const/16 v42, 0x0

    .line 754
    const/4 v5, 0x1

    move/from16 v0, v44

    move v1, v5

    if-ne v0, v1, :cond_1b

    and-int/lit8 v5, v32, 0x1

    if-eqz v5, :cond_1b

    const/16 v5, 0x100

    if-lt v12, v5, :cond_e

    const/16 v5, 0x15f

    if-le v12, v5, :cond_1b

    .line 759
    :cond_e
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_19

    .line 760
    const/4 v9, 0x1

    .line 761
    .local v9, down:Z
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 766
    :goto_4
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v10, v0

    .line 767
    .local v10, keycode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v14, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x1

    iget-wide v5, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v13, v0

    const/high16 v19, 0x1000

    and-int v13, v13, v19

    if-eqz v13, :cond_1a

    const/4 v13, 0x1

    :goto_5
    invoke-static/range {v4 .. v13}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v19

    move-object v13, v14

    move-object v14, v4

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1035
    .end local v9           #down:Z
    .end local v10           #keycode:I
    :cond_f
    :goto_6
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    if-nez v5, :cond_46

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    if-eqz v5, :cond_46

    .line 1038
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 1039
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lez v5, :cond_10

    .line 1043
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    if-eqz v5, :cond_10

    .line 1064
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    add-int/lit8 v40, v5, 0x1

    .line 1065
    .local v40, num:I
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move/from16 v0, v40

    move-object v1, v5

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1068
    const/4 v5, 0x5

    move/from16 v0, v40

    move v1, v5

    if-gt v0, v1, :cond_45

    mul-int/lit8 v5, v40, 0x4

    move/from16 v39, v5

    .line 1072
    .local v39, newOffset:I
    :goto_7
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move/from16 v0, v39

    move-object v1, v5

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    .line 1073
    iget-object v4, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .end local v4           #di:Lcom/android/server/InputDevice;
    iget-object v4, v4, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    add-int/lit8 v5, v39, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1197
    .end local v39           #newOffset:I
    .end local v40           #num:I
    :cond_10
    :goto_8
    monitor-exit v3

    goto/16 :goto_0

    .end local v7           #curTime:J
    .end local v12           #scancode:I
    .end local v15           #curTimeNano:J
    .end local v32           #classes:I
    .end local v44           #type:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 669
    .restart local v4       #di:Lcom/android/server/InputDevice;
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 670
    const-string v5, "KeyInputQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring non-input device: id=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/InputDevice;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 674
    .end local v4           #di:Lcom/android/server/InputDevice;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4

    .line 675
    :cond_12
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_17

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 681
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputDevice;

    .line 682
    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_15

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 685
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_13

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    if-lez v5, :cond_14

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    .line 695
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    if-nez v5, :cond_13

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/KeyInputQueue;->onAllMiceDisconnectedEvent()V

    .line 702
    :cond_13
    const/16 v33, 0x1

    .line 710
    :goto_a
    monitor-exit v3

    goto/16 :goto_3

    .end local v4           #di:Lcom/android/server/InputDevice;
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 690
    .restart local v4       #di:Lcom/android/server/InputDevice;
    :cond_14
    :try_start_e
    const-string v5, "KeyInputQueue"

    const-string v6, "Remove a mouse when mMouseCount = 0"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 703
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    .end local v4           #di:Lcom/android/server/InputDevice;
    iget-object v4, v4, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputDevice;

    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_16

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a

    .line 706
    :cond_16
    const-string v4, "KeyInputQueue"

    .end local v4           #di:Lcom/android/server/InputDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing bad device id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    .line 712
    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/KeyInputQueue;->getInputDevice(I)Lcom/android/server/InputDevice;

    move-result-object v4

    .line 713
    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KeyInputQueue;->preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z

    move-result v42

    .line 721
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    .line 722
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    :goto_b
    iget v6, v4, Lcom/android/server/InputDevice;->mMetaKeysState:I

    invoke-static {v3, v5, v6}, Lcom/android/server/KeyInputQueue;->access$600(IZI)I

    move-result v3

    iput v3, v4, Lcom/android/server/InputDevice;->mMetaKeysState:I

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_3

    .line 722
    :cond_18
    const/4 v5, 0x0

    goto :goto_b

    .line 733
    :catchall_3
    move-exception v3

    :try_start_10
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v3
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 763
    .restart local v7       #curTime:J
    .restart local v12       #scancode:I
    .restart local v15       #curTimeNano:J
    .restart local v32       #classes:I
    .restart local v44       #type:I
    :cond_19
    const/4 v9, 0x0

    .restart local v9       #down:Z
    goto/16 :goto_4

    .line 767
    .restart local v10       #keycode:I
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 774
    .end local v9           #down:Z
    .end local v10           #keycode:I
    :cond_1b
    :try_start_12
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    .line 776
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x14a

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x110

    if-ne v5, v6, :cond_1e

    :cond_1c
    and-int/lit8 v5, v32, 0x14

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1e

    .line 781
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 782
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mDown:[Z

    const/4 v6, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    if-eqz v9, :cond_1d

    const/4 v9, 0x1

    :goto_c
    aput-boolean v9, v5, v6

    goto/16 :goto_6

    :cond_1d
    const/4 v9, 0x0

    goto :goto_c

    .line 785
    :cond_1e
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x110

    if-ne v5, v6, :cond_22

    .line 786
    and-int/lit8 v5, v32, 0x8

    if-eqz v5, :cond_20

    .line 787
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 788
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    :goto_d
    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 789
    const/16 v42, 0x1

    goto/16 :goto_6

    .line 788
    :cond_1f
    const/4 v6, 0x0

    goto :goto_d

    .line 790
    :cond_20
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_f

    .line 795
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 796
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    :goto_e
    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 797
    const/16 v42, 0x1

    goto/16 :goto_6

    .line 796
    :cond_21
    const/4 v6, 0x2

    goto :goto_e

    .line 799
    :cond_22
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x111

    if-eq v5, v6, :cond_23

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x112

    if-ne v5, v6, :cond_f

    :cond_23
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_f

    .line 802
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    move v9, v5

    .line 803
    .restart local v9       #down:Z
    :goto_f
    if-eqz v9, :cond_24

    .line 804
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 806
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    const/4 v10, 0x1

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v11, v0

    const/16 v13, 0x111

    if-ne v11, v13, :cond_26

    const/4 v11, 0x4

    move/from16 v23, v11

    :goto_10
    const/16 v24, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v11, v0

    const/high16 v13, 0x1000

    and-int/2addr v11, v13

    if-eqz v11, :cond_27

    const/4 v11, 0x1

    move/from16 v26, v11

    :goto_11
    move-object/from16 v17, v4

    move-wide/from16 v20, v7

    move/from16 v22, v9

    move/from16 v25, v12

    invoke-static/range {v17 .. v26}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    move/from16 v21, v6

    move/from16 v22, v10

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    goto/16 :goto_6

    .line 802
    .end local v9           #down:Z
    :cond_25
    const/4 v5, 0x0

    move v9, v5

    goto :goto_f

    .line 806
    .restart local v9       #down:Z
    :cond_26
    const/16 v11, 0x52

    move/from16 v23, v11

    goto :goto_10

    :cond_27
    const/4 v11, 0x0

    move/from16 v26, v11

    goto :goto_11

    .line 817
    .end local v9           #down:Z
    :cond_28
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2c

    and-int/lit8 v5, v32, 0x10

    if-eqz v5, :cond_2c

    .line 819
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x30

    if-ne v5, v6, :cond_29

    .line 820
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 821
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 823
    :cond_29
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x35

    if-ne v5, v6, :cond_2a

    .line 824
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 825
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 830
    :cond_2a
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x36

    if-ne v5, v6, :cond_2b

    .line 831
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 832
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 837
    :cond_2b
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x32

    if-ne v5, v6, :cond_f

    .line 838
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 839
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x3

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 844
    :cond_2c
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_32

    and-int/lit8 v5, v32, 0x4

    if-eqz v5, :cond_32

    .line 846
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-eqz v5, :cond_2d

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2e

    .line 848
    :cond_2d
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 849
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 850
    :cond_2e
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2f

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_30

    .line 852
    :cond_2f
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 853
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x1

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 854
    :cond_30
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x18

    if-ne v5, v6, :cond_31

    .line 855
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 856
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    .line 857
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x6

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 859
    :cond_31
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_f

    .line 860
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 861
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x3

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    .line 862
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x7

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 867
    :cond_32
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 871
    and-int/lit8 v5, v32, 0x8

    if-eqz v5, :cond_34

    .line 873
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_33

    .line 874
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 875
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v10, v0

    add-int/2addr v9, v10

    aput v9, v5, v6

    goto/16 :goto_6

    .line 876
    :cond_33
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 877
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 878
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    aget v9, v5, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v10, v0

    add-int/2addr v9, v10

    aput v9, v5, v6

    goto/16 :goto_6

    .line 880
    :cond_34
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_f

    .line 894
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_39

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 916
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    if-gez v5, :cond_37

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    .line 921
    :cond_35
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    if-gez v5, :cond_38

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    .line 927
    :cond_36
    :goto_14
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCx:I

    aput v9, v5, v6

    .line 928
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCy:I

    aput v9, v5, v6

    .line 929
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    goto/16 :goto_6

    .line 903
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto :goto_12

    .line 906
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto :goto_12

    .line 909
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto :goto_12

    .line 912
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto/16 :goto_12

    .line 918
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    if-lt v5, v6, :cond_35

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto/16 :goto_13

    .line 923
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    if-lt v5, v6, :cond_36

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto/16 :goto_14

    .line 931
    :cond_39
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3e

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_1

    .line 953
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    if-gez v5, :cond_3c

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    .line 958
    :cond_3a
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    if-gez v5, :cond_3d

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    .line 964
    :cond_3b
    :goto_17
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCx:I

    aput v9, v5, v6

    .line 965
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCy:I

    aput v9, v5, v6

    .line 966
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    goto/16 :goto_6

    .line 940
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto :goto_15

    .line 943
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto :goto_15

    .line 946
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto :goto_15

    .line 949
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto/16 :goto_15

    .line 955
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    if-lt v5, v6, :cond_3a

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto/16 :goto_16

    .line 960
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    if-lt v5, v6, :cond_3b

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto/16 :goto_17

    .line 967
    :cond_3e
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_f

    .line 974
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_3f

    .line 975
    const/4 v9, 0x1

    .line 976
    .restart local v9       #down:Z
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 981
    :goto_18
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-gez v5, :cond_40

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_2

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1016
    .restart local v10       #keycode:I
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x1

    iget-wide v5, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v13, v0

    const/high16 v14, 0x1000

    and-int/2addr v13, v14

    if-eqz v13, :cond_42

    const/4 v13, 0x1

    :goto_1a
    invoke-static/range {v4 .. v13}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v23

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    const/4 v11, 0x1

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    move-wide/from16 v18, v0

    if-nez v9, :cond_43

    const/4 v9, 0x1

    move/from16 v22, v9

    .end local v9           #down:Z
    :goto_1b
    const/16 v24, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v9, v0

    const/high16 v13, 0x1000

    and-int/2addr v9, v13

    if-eqz v9, :cond_44

    const/4 v9, 0x1

    move/from16 v26, v9

    :goto_1c
    move-object/from16 v17, v4

    move-wide/from16 v20, v7

    move/from16 v23, v10

    move/from16 v25, v12

    invoke-static/range {v17 .. v26}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    move/from16 v21, v6

    move/from16 v22, v11

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    goto/16 :goto_6

    .line 978
    .end local v10           #keycode:I
    :cond_3f
    const/4 v9, 0x0

    .restart local v9       #down:Z
    goto/16 :goto_18

    .line 984
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x15

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 985
    .restart local v10       #keycode:I
    goto :goto_19

    .line 987
    .end local v10           #keycode:I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x13

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 988
    .restart local v10       #keycode:I
    goto :goto_19

    .line 990
    .end local v10           #keycode:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 991
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 997
    .end local v10           #keycode:I
    :cond_40
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-lez v5, :cond_41

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_3

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x13

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1010
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1000
    .end local v10           #keycode:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1001
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1003
    .end local v10           #keycode:I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1004
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1006
    .end local v10           #keycode:I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x15

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1007
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1014
    .end local v10           #keycode:I
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v6, v0

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1016
    :cond_42
    const/4 v13, 0x0

    goto/16 :goto_1a

    .line 1022
    :cond_43
    const/4 v9, 0x0

    move/from16 v22, v9

    goto/16 :goto_1b

    .end local v9           #down:Z
    :cond_44
    const/4 v9, 0x0

    move/from16 v26, v9

    goto/16 :goto_1c

    .line 1068
    .end local v10           #keycode:I
    .restart local v40       #num:I
    :cond_45
    const/16 v5, 0x14

    move/from16 v39, v5

    goto/16 :goto_7

    .line 1083
    .end local v40           #num:I
    :cond_46
    if-nez v42, :cond_47

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    if-nez v5, :cond_10

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_10

    .line 1085
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_10

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    if-nez v5, :cond_48

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/KeyInputQueue;->access$900(Lcom/android/server/KeyInputQueue;)V

    .line 1092
    :cond_48
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v38, v0

    .line 1093
    .local v38, ms:Lcom/android/server/InputDevice$MotionState;
    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    move v5, v0

    if-eqz v5, :cond_50

    .line 1094
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    .line 1095
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 1097
    and-int/lit8 v5, v32, 0x14

    const/4 v6, 0x4

    if-ne v5, v6, :cond_49

    .line 1100
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1101
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mDown:[Z

    move-object v5, v0

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_49

    .line 1102
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v5, v6, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1109
    :cond_49
    sget-boolean v5, Lcom/android/server/KeyInputQueue;->BAD_TOUCH_HACK:Z

    if-eqz v5, :cond_4a

    .line 1110
    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/InputDevice$MotionState;->dropBadPoint(Lcom/android/server/InputDevice;)V

    .line 1112
    :cond_4a
    sget-boolean v5, Lcom/android/server/KeyInputQueue;->JUMPY_TOUCH_HACK:Z

    if-eqz v5, :cond_4b

    .line 1113
    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/InputDevice$MotionState;->dropJumpyPoint(Lcom/android/server/InputDevice;)V

    .line 1116
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v36

    move-wide/from16 v20, v7

    move-wide/from16 v22, v15

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$1000(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z

    move-result v5

    if-nez v5, :cond_52

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 1119
    .local v34, doMotion:Z
    :goto_1d
    if-eqz v34, :cond_4d

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    if-lez v5, :cond_4d

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v5, v0

    if-eqz v5, :cond_4c

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z

    move v5, v0

    if-eqz v5, :cond_4d

    .line 1122
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v36

    move-wide/from16 v20, v7

    move-wide/from16 v22, v15

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$1100(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z

    move-result v5

    if-nez v5, :cond_53

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 1126
    :cond_4d
    :goto_1e
    if-eqz v34, :cond_56

    .line 1132
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    move/from16 v25, v0

    move-object/from16 v17, v38

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    move-wide/from16 v21, v15

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/InputDevice$MotionState;->generateAbsMotion(Lcom/android/server/InputDevice;JJLandroid/view/Display;II)Landroid/view/MotionEvent;

    move-result-object v23

    .line 1141
    .local v23, me:Landroid/view/MotionEvent;
    if-eqz v23, :cond_4f

    .line 1145
    and-int/lit8 v5, v32, 0x4

    if-eqz v5, :cond_54

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1155
    :cond_4f
    :goto_1f
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/InputDevice$MotionState;->hasMore()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 1172
    .end local v23           #me:Landroid/view/MotionEvent;
    :goto_20
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/InputDevice$MotionState;->finish()V

    .line 1175
    .end local v34           #doMotion:Z
    :cond_50
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v24, v0

    .line 1176
    .end local v38           #ms:Lcom/android/server/InputDevice$MotionState;
    .local v24, ms:Lcom/android/server/InputDevice$MotionState;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 1177
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    .line 1178
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    move/from16 v31, v0

    move-object/from16 v25, v4

    move-wide/from16 v26, v7

    move-wide/from16 v28, v15

    invoke-virtual/range {v24 .. v31}, Lcom/android/server/InputDevice$MotionState;->generateRelMotion(Lcom/android/server/InputDevice;JJII)Landroid/view/MotionEvent;

    move-result-object v23

    .line 1188
    .restart local v23       #me:Landroid/view/MotionEvent;
    if-eqz v23, :cond_51

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v13, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move-object v14, v4

    move-object/from16 v19, v23

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1193
    :cond_51
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/InputDevice$MotionState;->finish()V

    goto/16 :goto_8

    .line 1116
    .end local v23           #me:Landroid/view/MotionEvent;
    .end local v24           #ms:Lcom/android/server/InputDevice$MotionState;
    .restart local v38       #ms:Lcom/android/server/InputDevice$MotionState;
    :cond_52
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_1d

    .line 1122
    .restart local v34       #doMotion:Z
    :cond_53
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_1e

    .line 1148
    .restart local v23       #me:Landroid/view/MotionEvent;
    :cond_54
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_55

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x40

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    goto :goto_1f

    .line 1152
    :cond_55
    const-string v5, "KeyInputQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown classes? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1161
    .end local v23           #me:Landroid/view/MotionEvent;
    :cond_56
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v40, v0

    .line 1162
    .restart local v40       #num:I
    const/4 v5, 0x5

    move/from16 v0, v40

    move v1, v5

    if-le v0, v1, :cond_57

    .line 1163
    const/16 v40, 0x5

    .line 1165
    :cond_57
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object v9, v0

    const/4 v10, 0x0

    mul-int/lit8 v11, v40, 0x4

    invoke-static {v5, v6, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1168
    move/from16 v0, v40

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 1169
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_20

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 938
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 982
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 998
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
