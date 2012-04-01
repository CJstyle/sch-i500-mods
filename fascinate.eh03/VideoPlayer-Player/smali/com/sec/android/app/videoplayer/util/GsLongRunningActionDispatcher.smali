.class public final Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;
.super Ljava/lang/Object;
.source "GsLongRunningActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;


# instance fields
.field private callback:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

.field private context:Landroid/content/Context;

.field private finishedHandler:Landroid/os/Handler;

.field private mPprogressDialogMessage:Ljava/lang/String;

.field private mProgressDialogTitle:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mProgressDialogTitle:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mPprogressDialogMessage:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    invoke-direct {v1}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;-><init>()V

    sput-object v1, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    .line 28
    :cond_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 1
    .parameter "result"
    .parameter "error"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mProcessingDone:Z

    .line 128
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;)V
    .locals 0
    .parameter "context"
    .parameter "finishedHandler"
    .parameter "callback"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;

    .line 35
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    .line 36
    return-void
.end method

.method public declared-synchronized startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "progressDialogTitle"
    .parameter "progressDialogMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mProgressDialogTitle:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mPprogressDialogMessage:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mProgressDialogTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mPprogressDialogMessage:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :try_start_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;-><init>(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;Ljava/util/concurrent/Callable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "MyFiles"

    const-string v2, "Error while ProgressDialog working"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
