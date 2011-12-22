.class Lcom/sec/android/app/cradle/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/app/cradle/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 0
    .parameter
    .parameter "eventLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/app/cradle/EventLoader$LoadRequest;",
            ">;",
            "Lcom/sec/android/app/cradle/EventLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/sec/android/app/cradle/EventLoader$LoadRequest;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 152
    iput-object p2, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 172
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/EventLoader$LoadRequest;

    .line 176
    .local v1, request:Lcom/sec/android/app/cradle/EventLoader$LoadRequest;
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    invoke-interface {v1, v2}, Lcom/sec/android/app/cradle/EventLoader$LoadRequest;->skipRequest(Lcom/sec/android/app/cradle/EventLoader;)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #request:Lcom/sec/android/app/cradle/EventLoader$LoadRequest;
    check-cast v1, Lcom/sec/android/app/cradle/EventLoader$LoadRequest;

    .restart local v1       #request:Lcom/sec/android/app/cradle/EventLoader$LoadRequest;
    goto :goto_1

    .line 184
    :cond_0
    instance-of v2, v1, Lcom/sec/android/app/cradle/EventLoader$ShutdownRequest;

    if-eqz v2, :cond_1

    .line 185
    return-void

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mEventLoader:Lcom/sec/android/app/cradle/EventLoader;

    invoke-interface {v1, v2}, Lcom/sec/android/app/cradle/EventLoader$LoadRequest;->processRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v1           #request:Lcom/sec/android/app/cradle/EventLoader$LoadRequest;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 189
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "background LoaderThread interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/sec/android/app/cradle/EventLoader$ShutdownRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/android/app/cradle/EventLoader$ShutdownRequest;-><init>(Lcom/sec/android/app/cradle/EventLoader$1;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "Cal"

    const-string v2, "LoaderThread.shutdown() interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
