.class Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;
.super Ljava/lang/Thread;
.source "MemoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskRunner"
.end annotation


# static fields
.field private static final END_MSG:I = 0x4

.field static final MSG_PKG_SIZE:I = 0x4


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

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/MemoryInfo;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "threadName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, appList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 193
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->abort:Z

    .line 194
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->mPkgList:Ljava/util/List;

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->start()V

    .line 196
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->mPkgList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->updateUsedMem(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$200(Lcom/sec/android/app/controlpanel/MemoryInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    return-void
.end method

.method public setAbort()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->abort:Z

    .line 206
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
