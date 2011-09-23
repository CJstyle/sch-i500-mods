.class public Lcom/sec/android/app/cradle/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/EventLoader$1;,
        Lcom/sec/android/app/cradle/EventLoader$LoaderThread;,
        Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;,
        Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;,
        Lcom/sec/android/app/cradle/EventLoader$ShutdownRequest;,
        Lcom/sec/android/app/cradle/EventLoader$LoadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/app/cradle/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/sec/android/app/cradle/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    iput-object p1, p0, Lcom/sec/android/app/cradle/EventLoader;->mContext:Landroid/content/Context;

    .line 197
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/EventLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/EventLoader;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/EventLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method loadBusyBitsInBackground(II[I[ILjava/lang/Runnable;)V
    .locals 7
    .parameter "startDay"
    .parameter "numDays"
    .parameter "busybits"
    .parameter "allDayCounts"
    .parameter "uiCallback"

    .prologue
    .line 250
    new-instance v0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;-><init>(II[I[ILjava/lang/Runnable;)V

    .line 254
    .local v0, request:Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 259
    .local v6, ex:Ljava/lang/InterruptedException;
    const-string v1, "Cal"

    const-string v2, "loadBusyBitsInBackground() interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9
    .parameter "numDays"
    .parameter
    .parameter "start"
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 234
    .local v1, id:I
    new-instance v0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 238
    .local v0, request:Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 243
    .local v8, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "loadEventsInBackground() interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBackgroundThread()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/sec/android/app/cradle/EventLoader;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderThread:Lcom/sec/android/app/cradle/EventLoader$LoaderThread;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderThread:Lcom/sec/android/app/cradle/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->start()V

    .line 207
    return-void
.end method

.method public stopBackgroundThread()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/cradle/EventLoader;->mLoaderThread:Lcom/sec/android/app/cradle/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/EventLoader$LoaderThread;->shutdown()V

    .line 214
    return-void
.end method
