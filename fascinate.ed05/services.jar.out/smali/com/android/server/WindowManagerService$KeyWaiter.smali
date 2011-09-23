.class final Lcom/android/server/WindowManagerService$KeyWaiter;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyWaiter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;
    }
.end annotation


# static fields
.field public static final RETURN_NOTHING:I = 0x0

.field public static final RETURN_PENDING_POINTER:I = 0x1

.field public static final RETURN_PENDING_TRACKBALL:I = 0x2


# instance fields
.field final CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

.field final SKIP_TARGET_TOKEN:Ljava/lang/Object;

.field private mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

.field private mEventDispatching:Z

.field private mFinished:Z

.field private mGotFirstWindow:Z

.field private mLastBinder:Landroid/os/IBinder;

.field private mLastWin:Lcom/android/server/WindowManagerService$WindowState;

.field mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

.field private mTimeToSwitch:J

.field mWasFrozen:Z

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5827
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5873
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    .line 5883
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    .line 5884
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    .line 5886
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5887
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5888
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5889
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    .line 5890
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    .line 5891
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 5892
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WindowManagerService$KeyWaiter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5827
    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5827
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5827
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5827
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5827
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5827
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    return v0
.end method

.method private final doFinishedKeyLocked(Z)V
    .locals 2
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 6564
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_0

    .line 6565
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6566
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6569
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6573
    :cond_1
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6574
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6576
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6577
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6578
    return-void
.end method


# virtual methods
.method appSwitchComing()V
    .locals 6

    .prologue
    .line 6551
    monitor-enter p0

    .line 6554
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long v0, v2, v4

    .line 6556
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 6557
    :cond_0
    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 6559
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6560
    monitor-exit p0

    .line 6561
    return-void

    .line 6560
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 6338
    monitor-enter p0

    .line 6339
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6340
    monitor-exit p0

    .line 6341
    return-void

    .line 6340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 1
    .parameter "win"
    .parameter "pendingWhat"
    .parameter "pendingMotion"

    .prologue
    .line 6332
    monitor-enter p0

    .line 6333
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6334
    monitor-exit p0

    .line 6335
    return-void

    .line 6334
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 2
    .parameter "win"
    .parameter "pendingWhat"
    .parameter "pendingMotion"

    .prologue
    .line 6345
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6346
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6348
    if-eqz p3, :cond_0

    .line 6349
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .line 6350
    .local v0, s:Lcom/android/server/WindowManagerService$Session;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 6351
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6352
    iput-object p3, v0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6353
    iput-object p1, v0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6362
    .end local v0           #s:Lcom/android/server/WindowManagerService$Session;
    :cond_0
    :goto_0
    return-void

    .line 6356
    .restart local v0       #s:Lcom/android/server/WindowManagerService$Session;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 6357
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6358
    iput-object p3, v0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6359
    iput-object p1, v0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_0
.end method

.method checkShouldDispatchKey(I)Z
    .locals 5
    .parameter "keycode"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 6317
    monitor-enter p0

    .line 6318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->isAppSwitchKeyTqTiLwLi(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6319
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 6320
    monitor-exit p0

    move v0, v4

    .line 6326
    :goto_0
    return v0

    .line 6322
    :cond_0
    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 6324
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 6327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6326
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    goto :goto_0
.end method

.method findTargetWindow(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZII)Ljava/lang/Object;
    .locals 29
    .parameter "nextKey"
    .parameter "qev"
    .parameter "nextMotion"
    .parameter "isPointerEvent"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 6121
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    .line 6123
    if-eqz p1, :cond_7

    .line 6125
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 6126
    .local v6, keycode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 6127
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    move v8, v4

    .line 6128
    .local v8, down:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v4, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v14

    .line 6130
    .local v14, dispatch:Z
    if-nez v14, :cond_3

    .line 6131
    if-eqz p6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    .line 6136
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Landroid/view/WindowManagerPolicy;->interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZII)Z

    .line 6140
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping "

    .end local v6           #keycode:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    .line 6313
    .end local v8           #down:Z
    .end local v9           #repeatCount:I
    .end local v14           #dispatch:Z
    :goto_1
    return-object v4

    .line 6127
    .restart local v6       #keycode:I
    .restart local v9       #repeatCount:I
    :cond_2
    const/4 v4, 0x0

    move v8, v4

    goto :goto_0

    .line 6147
    .restart local v8       #down:Z
    .restart local v14       #dispatch:Z
    :cond_3
    const/4 v5, 0x0

    .line 6148
    .local v5, focus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6149
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v5

    .line 6150
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v7, 0x5

    invoke-static {v4, v5, v7}, Lcom/android/server/WindowManagerService;->access$1200(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    .line 6154
    if-eqz p6, :cond_5

    if-eqz v5, :cond_4

    iget-object v4, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v4, v4, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p6

    move v1, v4

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v7

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_6

    .line 6160
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Landroid/view/WindowManagerPolicy;->interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto :goto_1

    .line 6150
    .end local v6           #keycode:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v6       #keycode:I
    :cond_6
    move-object v4, v5

    .line 6167
    goto :goto_1

    .line 6169
    .end local v5           #focus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v6           #keycode:I
    .end local v8           #down:Z
    .end local v9           #repeatCount:I
    .end local v14           #dispatch:Z
    :cond_7
    if-nez p4, :cond_9

    .line 6170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v14

    .line 6171
    .restart local v14       #dispatch:Z
    if-nez v14, :cond_8

    .line 6172
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping trackball "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1

    .line 6177
    :cond_8
    const/4 v5, 0x0

    .line 6178
    .restart local v5       #focus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6179
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v5

    .line 6180
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/android/server/WindowManagerService;->access$1200(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    move-object v4, v5

    .line 6183
    goto/16 :goto_1

    .line 6180
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 6186
    .end local v5           #focus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v14           #dispatch:Z
    :cond_9
    if-nez p3, :cond_a

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1

    .line 6190
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v14

    .line 6192
    .restart local v14       #dispatch:Z
    if-nez v14, :cond_b

    .line 6193
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping pointer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1

    .line 6199
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 6200
    .local v12, action:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 6201
    .local v26, xf:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    .line 6202
    .local v28, yf:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    .line 6204
    .local v15, eventTime:J
    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    move v4, v0

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 6207
    .local v19, screenWasOff:Z
    :goto_2
    const/16 v20, 0x0

    .line 6209
    .local v20, target:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6210
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 6211
    if-nez v12, :cond_16

    .line 6212
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 6217
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pointer down received while already down in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6219
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6224
    :cond_c
    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 6225
    .local v25, x:I
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 6227
    .local v27, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 6228
    .local v24, windows:Ljava/util/ArrayList;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 6229
    .local v11, N:I
    const/16 v22, 0x0

    .line 6230
    .local v22, topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6231
    .local v21, tmpRect:Landroid/graphics/Rect;
    const/4 v5, 0x1

    sub-int v18, v11, v5

    .local v18, i:I
    :goto_3
    if-ltz v18, :cond_15

    .line 6232
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/WindowManagerService$WindowState;

    .line 6234
    .local v13, child:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    .line 6235
    .local v17, flags:I
    const/high16 v5, 0x4000

    and-int v5, v5, v17

    if-eqz v5, :cond_d

    .line 6236
    if-nez v22, :cond_d

    .line 6237
    move-object/from16 v22, v13

    .line 6240
    :cond_d
    invoke-virtual {v13}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_10

    .line 6231
    :cond_e
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 6204
    .end local v11           #N:I
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v18           #i:I
    .end local v19           #screenWasOff:Z
    .end local v20           #target:Lcom/android/server/WindowManagerService$WindowState;
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :cond_f
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_2

    .line 6244
    .restart local v11       #N:I
    .restart local v13       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #flags:I
    .restart local v18       #i:I
    .restart local v19       #screenWasOff:Z
    .restart local v20       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #tmpRect:Landroid/graphics/Rect;
    .restart local v22       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #windows:Ljava/util/ArrayList;
    .restart local v25       #x:I
    .restart local v27       #y:I
    :cond_10
    and-int/lit8 v5, v17, 0x10

    if-eqz v5, :cond_11

    .line 6246
    const/high16 v5, 0x4

    and-int v5, v5, v17

    if-eqz v5, :cond_e

    .line 6248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iput-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    .line 6249
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_4

    .line 6306
    .end local v11           #N:I
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v18           #i:I
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v5

    .line 6307
    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5

    .line 6253
    .restart local v11       #N:I
    .restart local v13       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #flags:I
    .restart local v18       #i:I
    .restart local v21       #tmpRect:Landroid/graphics/Rect;
    .restart local v22       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #windows:Ljava/util/ArrayList;
    .restart local v25       #x:I
    .restart local v27       #y:I
    :cond_11
    :try_start_7
    iget-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6254
    iget v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 6259
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6260
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6261
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6262
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6273
    :cond_12
    :goto_5
    and-int/lit8 v23, v17, 0x28

    .line 6276
    .local v23, touchFlags:I
    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_13

    if-nez v23, :cond_19

    .line 6278
    :cond_13
    if-eqz v19, :cond_14

    and-int/lit8 v5, v17, 0x40

    if-eqz v5, :cond_18

    .line 6280
    :cond_14
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6300
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v23           #touchFlags:I
    :cond_15
    :goto_6
    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 6301
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6305
    .end local v11           #N:I
    .end local v18           #i:I
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v20, v0

    .line 6306
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6307
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 6309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/WindowManagerService;->access$1300(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I

    move-result v5

    move-object v0, v4

    move-object/from16 v1, v20

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/WindowManagerService;->access$1200(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    .line 6313
    if-eqz v20, :cond_1a

    move-object/from16 v4, v20

    goto/16 :goto_1

    .line 6263
    .restart local v11       #N:I
    .restart local v13       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #flags:I
    .restart local v18       #i:I
    .restart local v21       #tmpRect:Landroid/graphics/Rect;
    .restart local v22       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #windows:Ljava/util/ArrayList;
    .restart local v25       #x:I
    .restart local v27       #y:I
    :cond_17
    :try_start_9
    iget v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 6268
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6269
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6270
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6271
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 6283
    .restart local v23       #touchFlags:I
    :cond_18
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_6

    .line 6288
    :cond_19
    const/high16 v5, 0x4

    and-int v5, v5, v17

    if-eqz v5, :cond_e

    .line 6290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iput-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    .line 6291
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_4

    .line 6313
    .end local v11           #N:I
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v18           #i:I
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #touchFlags:I
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1
.end method

.method finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;
    .locals 10
    .parameter "session"
    .parameter "client"
    .parameter "force"
    .parameter "returnWhat"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 6385
    if-nez p2, :cond_0

    .line 6444
    :goto_0
    return-object v1

    .line 6389
    :cond_0
    const/4 v4, 0x0

    .line 6390
    .local v4, res:Landroid/view/MotionEvent;
    const/4 v8, 0x0

    .line 6391
    .local v8, qev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    const/4 v2, 0x0

    .line 6393
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    monitor-enter p0

    .line 6399
    if-ne p4, v6, :cond_6

    .line 6400
    :try_start_0
    iget-object v8, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6401
    iget-object v2, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6402
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6403
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6411
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 6415
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    if-nez v1, :cond_7

    .line 6417
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6427
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 6428
    iget-object v5, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 6431
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v1, v8}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6432
    if-eqz v2, :cond_4

    if-ne p4, v6, :cond_4

    .line 6433
    iget-object v1, v2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6436
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6438
    if-eqz v4, :cond_5

    if-ne p4, v6, :cond_5

    .line 6439
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v9, v1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 6440
    :try_start_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v3, v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 6441
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    move-object v1, v4

    .line 6444
    goto :goto_0

    .line 6404
    :cond_6
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 6405
    :try_start_2
    iget-object v8, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6406
    iget-object v2, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6407
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6408
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_1

    .line 6436
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 6422
    :cond_7
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6423
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 6441
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "newWindow"

    .prologue
    .line 6454
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6500
    :goto_0
    return-void

    .line 6457
    :cond_0
    monitor-enter p0

    .line 6469
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    .line 6473
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 6476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6498
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6499
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6480
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1

    .line 6487
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    if-lt v0, v1, :cond_1

    .line 6490
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6492
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method pauseDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 6503
    monitor-enter p0

    .line 6506
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6521
    monitor-exit p0

    .line 6522
    return-void

    .line 6521
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordDispatchState(Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 1
    .parameter "theEvent"
    .parameter "theFocus"

    .prologue
    .line 5875
    new-instance v0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;-><init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    .line 5876
    return-void
.end method

.method releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 6367
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_0

    .line 6368
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    iget-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6369
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6371
    :cond_0
    return-void
.end method

.method releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 6374
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_0

    .line 6375
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    iget-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6376
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6378
    :cond_0
    return-void
.end method

.method resumeDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 6525
    monitor-enter p0

    .line 6526
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 6533
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6534
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    if-eqz v0, :cond_1

    .line 6535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6540
    :cond_0
    :goto_0
    monitor-exit p0

    .line 6541
    return-void

    .line 6537
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 6540
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setEventDispatchingLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 6544
    monitor-enter p0

    .line 6545
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    .line 6546
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6547
    monitor-exit p0

    .line 6548
    return-void

    .line 6547
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tickle()V
    .locals 1

    .prologue
    .line 6448
    monitor-enter p0

    .line 6449
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6450
    monitor-exit p0

    .line 6451
    return-void

    .line 6450
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;
    .locals 31
    .parameter "nextKey"
    .parameter "qev"
    .parameter "nextMotion"
    .parameter "isPointerEvent"
    .parameter "failIfTimeout"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 5909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 5910
    .local v19, startTime:J
    const-wide/16 v15, 0x1388

    .line 5911
    .local v15, keyDispatchingTimeout:J
    const-wide/16 v29, 0x0

    .line 5919
    .local v29, waitedFor:J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5920
    .local v26, targetWin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v26, :cond_1

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 5924
    .local v25, targetIsNew:Z
    :goto_1
    if-eqz v25, :cond_4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    .line 5925
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->findTargetWindow(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZII)Ljava/lang/Object;

    move-result-object v23

    .line 5927
    .local v23, target:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_2

    .line 5932
    const/4 v4, 0x0

    .line 6107
    .end local v23           #target:Ljava/lang/Object;
    :goto_2
    return-object v4

    .line 5920
    .end local v25           #targetIsNew:Z
    :cond_1
    const/4 v4, 0x0

    move/from16 v25, v4

    goto :goto_1

    .line 5934
    .restart local v23       #target:Ljava/lang/Object;
    .restart local v25       #targetIsNew:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_3

    move-object/from16 v4, v23

    .line 5937
    goto :goto_2

    .line 5939
    :cond_3
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5942
    .end local v23           #target:Ljava/lang/Object;
    :cond_4
    const/16 v24, 0x0

    .line 5945
    .local v24, targetApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    monitor-enter p0

    .line 5949
    if-nez v25, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 5950
    monitor-exit p0

    goto :goto_0

    .line 6042
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5955
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    move v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_8

    .line 5958
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    move v4, v0

    if-nez v4, :cond_6

    .line 5962
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_2

    .line 5964
    :cond_6
    if-eqz v26, :cond_7

    .line 5968
    if-eqz v25, :cond_8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-nez v4, :cond_8

    .line 5969
    monitor-exit p0

    move-object/from16 v4, v26

    goto :goto_2

    .line 5974
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v4, :cond_8

    .line 5978
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_2

    .line 5993
    :cond_8
    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v4, v0

    move-object/from16 v24, v4

    .line 5996
    :goto_3
    move-wide v13, v15

    .line 5997
    .local v13, curTimeout:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    .line 5998
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 5999
    .local v17, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    cmp-long v4, v4, v17

    if-gtz v4, :cond_a

    .line 6003
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6004
    monitor-exit p0

    goto/16 :goto_0

    .line 5993
    .end local v13           #curTimeout:J
    .end local v17           #now:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v24, v4

    goto :goto_3

    .line 6006
    .restart local v13       #curTimeout:J
    .restart local v17       #now:J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    sub-long v21, v4, v17

    .line 6007
    .local v21, switchTimeout:J
    cmp-long v4, v13, v21

    if-lez v4, :cond_b

    .line 6008
    move-wide/from16 v13, v21

    .line 6016
    .end local v17           #now:J
    .end local v21           #switchTimeout:J
    :cond_b
    if-nez v26, :cond_c

    if-nez v24, :cond_c

    .line 6017
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS] Dropping this key event because both targetWin and targetApp for keycode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_2

    .line 6020
    :cond_c
    if-nez v26, :cond_d

    .line 6022
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS] Dropping this key event, targetApp is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6023
    const/4 v4, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 6033
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6042
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6047
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    move v4, v0

    if-eqz v4, :cond_f

    .line 6048
    const-wide/16 v29, 0x0

    .line 6049
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 6054
    :goto_5
    cmp-long v4, v29, v15

    if-ltz v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 6055
    const/4 v12, 0x0

    .line 6056
    .local v12, at:Landroid/view/IApplicationToken;
    monitor-enter p0

    .line 6057
    :try_start_4
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key dispatching timed out sending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v26, :cond_10

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6061
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Previous dispatch state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6062
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current dispatch state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;-><init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    if-eqz v26, :cond_11

    .line 6067
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v12

    .line 6071
    :cond_e
    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6073
    const/4 v11, 0x1

    .line 6074
    .local v11, abort:Z
    if-eqz v12, :cond_13

    .line 6076
    :try_start_5
    invoke-interface {v12}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v27

    .line 6077
    .local v27, timeout:J
    cmp-long v4, v27, v29

    if-lez v4, :cond_12

    .line 6080
    sub-long v15, v27, v29

    goto/16 :goto_0

    .line 6051
    .end local v11           #abort:Z
    .end local v12           #at:Landroid/view/IApplicationToken;
    .end local v27           #timeout:J
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v29, v4, v19

    goto/16 :goto_5

    .line 6057
    .restart local v12       #at:Landroid/view/IApplicationToken;
    :cond_10
    :try_start_6
    const-string v6, "<null>: no window ready for key dispatch"

    goto :goto_6

    .line 6068
    :cond_11
    if-eqz v24, :cond_e

    .line 6069
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v12, v0

    goto :goto_7

    .line 6071
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 6083
    .restart local v11       #abort:Z
    .restart local v27       #timeout:J
    :cond_12
    :try_start_7
    invoke-interface {v12}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v11

    .line 6089
    .end local v27           #timeout:J
    :cond_13
    :goto_8
    monitor-enter p0

    .line 6090
    if-eqz v11, :cond_18

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_14

    if-nez v26, :cond_18

    .line 6091
    :cond_14
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    if-eqz v4, :cond_15

    .line 6096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v4, :cond_15

    .line 6097
    const-string v4, "WindowManager"

    const-string v5, "Un-pausing dispatching to this window"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6101
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 6102
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6104
    :cond_16
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6105
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6106
    if-nez p5, :cond_17

    if-nez v26, :cond_19

    .line 6107
    :cond_17
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_2

    .line 6113
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4

    .line 6110
    :cond_18
    :try_start_9
    const-string v4, "WindowManager"

    const-string v5, "Continuing to wait for key to be dispatched"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 6113
    :cond_19
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    .line 6040
    .end local v11           #abort:Z
    .end local v12           #at:Landroid/view/IApplicationToken;
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 6085
    .restart local v11       #abort:Z
    .restart local v12       #at:Landroid/view/IApplicationToken;
    :catch_1
    move-exception v4

    goto :goto_8
.end method
