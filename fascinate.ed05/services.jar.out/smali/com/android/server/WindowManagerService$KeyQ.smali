.class Lcom/android/server/WindowManagerService$KeyQ;
.super Lcom/android/server/KeyInputQueue;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/KeyInputQueue$FilterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyQ"
.end annotation


# instance fields
.field mHoldingScreen:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 3
    .parameter

    .prologue
    .line 6585
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    .line 6586
    iget-object v1, p1, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/server/KeyInputQueue;-><init>(Landroid/content/Context;Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;)V

    .line 6587
    iget-object v1, p1, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6588
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    .line 6590
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 6591
    return-void
.end method


# virtual methods
.method public filterEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)I
    .locals 4
    .parameter "ev"

    .prologue
    .line 6716
    iget v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    packed-switch v1, :pswitch_data_0

    .line 6726
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 6718
    :pswitch_0
    iget-object v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 6719
    .local v0, ke:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->isMovementKeyTi(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6720
    const-string v1, "KeyInputQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping movement key during app switch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6722
    const/4 v1, 0x0

    goto :goto_0

    .line 6724
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 6716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onAllMiceDisconnectedEvent()V
    .locals 3

    .prologue
    .line 6599
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V

    .line 6601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget v1, v1, Lcom/android/server/WindowManagerService;->mShowMouse:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6602
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hide()V

    .line 6603
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/WindowManagerService;->mShowMouse:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6608
    :cond_0
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 6610
    :goto_0
    return-void

    .line 6605
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 6606
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "KeyInputQueue"

    const-string v2, "Failure hiding mouse surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6608
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    throw v1
.end method

.method preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z
    .locals 10
    .parameter "device"
    .parameter "event"

    .prologue
    const/high16 v5, 0x2000

    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 6614
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p2}, Landroid/view/WindowManagerPolicy;->preprocessInputEventTq(Landroid/view/RawInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 6711
    :goto_0
    return v0

    .line 6618
    :cond_0
    iget v0, p2, Landroid/view/RawInputEvent;->type:I

    packed-switch v0, :pswitch_data_0

    move v0, v9

    .line 6711
    goto :goto_0

    .line 6638
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    move v8, v9

    .line 6639
    .local v8, screenIsOff:Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenBright()Z

    move-result v0

    if-nez v0, :cond_2

    move v7, v9

    .line 6640
    .local v7, screenIsDim:Z
    :goto_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-nez v8, :cond_3

    move v1, v9

    :goto_3
    invoke-interface {v0, p2, v1}, Landroid/view/WindowManagerPolicy;->interceptKeyTq(Landroid/view/RawInputEvent;Z)I

    move-result v6

    .line 6642
    .local v6, actions:I
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_5

    .line 6644
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_4

    move v0, v9

    .line 6645
    goto :goto_0

    .end local v6           #actions:I
    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :cond_1
    move v8, v3

    .line 6638
    goto :goto_1

    .restart local v8       #screenIsOff:Z
    :cond_2
    move v7, v3

    .line 6639
    goto :goto_2

    .restart local v7       #screenIsDim:Z
    :cond_3
    move v1, v3

    .line 6640
    goto :goto_3

    .line 6647
    .restart local v6       #actions:I
    :cond_4
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-wide v1, p2, Landroid/view/RawInputEvent;->when:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleep(J)V

    .line 6650
    :cond_5
    if-eqz v8, :cond_6

    .line 6651
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 6653
    :cond_6
    if-eqz v7, :cond_7

    .line 6654
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v5

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 6656
    :cond_7
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_8

    .line 6657
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-wide v1, p2, Landroid/view/RawInputEvent;->when:J

    const/4 v4, 0x5

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 6662
    :cond_8
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_9

    iget v0, p2, Landroid/view/RawInputEvent;->keycode:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    .line 6663
    :cond_9
    iget v0, p2, Landroid/view/RawInputEvent;->value:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p2, Landroid/view/RawInputEvent;->keycode:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isAppSwitchKeyTqTiLwLi(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6664
    invoke-virtual {p0, p0}, Lcom/android/server/WindowManagerService$KeyQ;->filterQueue(Lcom/android/server/KeyInputQueue$FilterCallback;)V

    .line 6665
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->appSwitchComing()V

    :cond_a
    move v0, v9

    .line 6667
    goto/16 :goto_0

    :cond_b
    move v0, v3

    .line 6669
    goto/16 :goto_0

    .line 6674
    .end local v6           #actions:I
    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_c

    move v8, v9

    .line 6675
    .restart local v8       #screenIsOff:Z
    :goto_4
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenBright()Z

    move-result v0

    if-nez v0, :cond_d

    move v7, v9

    .line 6676
    .restart local v7       #screenIsDim:Z
    :goto_5
    if-eqz v8, :cond_f

    .line 6677
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p2, Landroid/view/RawInputEvent;->deviceId:I

    iget v2, p1, Lcom/android/server/InputDevice;->classes:I

    invoke-interface {v0, v1, v2, p2}, Landroid/view/WindowManagerPolicy;->isWakeRelMovementTq(IILandroid/view/RawInputEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    .line 6680
    goto/16 :goto_0

    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :cond_c
    move v8, v3

    .line 6674
    goto :goto_4

    .restart local v8       #screenIsOff:Z
    :cond_d
    move v7, v3

    .line 6675
    goto :goto_5

    .line 6682
    .restart local v7       #screenIsDim:Z
    :cond_e
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 6684
    :cond_f
    if-eqz v7, :cond_10

    .line 6685
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v5

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    :cond_10
    move v0, v9

    .line 6687
    goto/16 :goto_0

    .line 6691
    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_11

    move v8, v9

    .line 6692
    .restart local v8       #screenIsOff:Z
    :goto_6
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenBright()Z

    move-result v0

    if-nez v0, :cond_12

    move v7, v9

    .line 6693
    .restart local v7       #screenIsDim:Z
    :goto_7
    if-eqz v8, :cond_14

    .line 6694
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p2, Landroid/view/RawInputEvent;->deviceId:I

    iget v2, p1, Lcom/android/server/InputDevice;->classes:I

    invoke-interface {v0, v1, v2, p2}, Landroid/view/WindowManagerPolicy;->isWakeAbsMovementTq(IILandroid/view/RawInputEvent;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 6699
    const-string v0, "KeyInputQueue"

    const-string v1, "Pass Touch even if screenIsOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 6700
    goto/16 :goto_0

    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :cond_11
    move v8, v3

    .line 6691
    goto :goto_6

    .restart local v8       #screenIsOff:Z
    :cond_12
    move v7, v3

    .line 6692
    goto :goto_7

    .line 6702
    .restart local v7       #screenIsDim:Z
    :cond_13
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 6704
    :cond_14
    if-eqz v7, :cond_15

    .line 6705
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v5

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    :cond_15
    move v0, v9

    .line 6707
    goto/16 :goto_0

    .line 6618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setHoldScreenLocked(Z)V
    .locals 2
    .parameter "holding"

    .prologue
    .line 6734
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 6735
    .local v0, state:Z
    if-eq p1, v0, :cond_0

    .line 6736
    if-eqz p1, :cond_1

    .line 6737
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6743
    :cond_0
    :goto_0
    return-void

    .line 6739
    :cond_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 6740
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method
