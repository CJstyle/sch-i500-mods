.class Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;
.super Ljava/lang/Object;
.source "GsLongRunningActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    iput-object p2, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    .local v5, result:Ljava/lang/Void;
    const/4 v2, 0x0

    .line 73
    .local v2, error:Ljava/lang/Exception;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Void;

    move-object v5, v0

    .line 75
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$000(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 77
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$000(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$002(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 81
    :cond_0
    move-object v4, v5

    .line 83
    .local v4, finalResult:Ljava/lang/Void;
    move-object v3, v2

    .line 85
    .local v3, finalError:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$200(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1$1;

    invoke-direct {v7, p0, v4, v3}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1$1;-><init>(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;Ljava/lang/Void;Ljava/lang/Exception;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v3           #finalError:Ljava/lang/Exception;
    .end local v4           #finalResult:Ljava/lang/Void;
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 95
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Changju"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interrupt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$000(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 99
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$000(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 100
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$1;->this$0:Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    #setter for: Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v9}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->access$002(Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
