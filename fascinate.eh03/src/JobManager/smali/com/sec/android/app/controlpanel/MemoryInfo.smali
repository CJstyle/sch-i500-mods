.class public Lcom/sec/android/app/controlpanel/MemoryInfo;
.super Ljava/lang/Object;
.source "MemoryInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/MemoryInfo;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mObservedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->DBG:Z

    .line 19
    const-string v0, "MemoryInfo"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    .line 44
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo$1;-><init>(Lcom/sec/android/app/controlpanel/MemoryInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 36
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-object v0
.end method


# virtual methods
.method public getAvailMem()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public getTotalMemory()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 132
    const/16 v3, 0xc

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v7

    const/4 v3, 0x1

    const-string v4, "MemFree:"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "Buffers:"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "Cached:"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "Active:"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "Inactive:"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "AnonPages:"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "Mapped:"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "Slab:"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "SReclaimable:"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "SUnreclaim:"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "PageTables:"

    aput-object v4, v1, v3

    .line 138
    .local v1, mMemInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 139
    .local v2, mMemInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 141
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 70
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/Observer;

    .line 72
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 74
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public updateObservedPackageList(Ljava/util/List;)V
    .locals 4
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
    .line 167
    .local p1, l:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 170
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    return-void
.end method

.method public updateUsedMem(Ljava/util/List;)V
    .locals 10
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
    .line 92
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 93
    .local v7, size:I
    new-array v6, v7, [I

    .line 95
    .local v6, pids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_0

    .line 96
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v8}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v8

    aput v8, v6, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 102
    .local v0, debugMemInfo:[Landroid/os/Debug$MemoryInfo;
    const/4 v1, 0x0

    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_1

    .line 104
    aget v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 109
    .local v5, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 110
    .local v4, memUsage:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMemUsage(J)V

    goto :goto_2

    .line 119
    .end local v4           #memUsage:Ljava/lang/Integer;
    .end local v5           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    return-void
.end method
