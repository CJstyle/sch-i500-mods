.class public Lcom/sec/android/app/controlpanel/MemoryInfo;
.super Ljava/lang/Object;
.source "MemoryInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;
    }
.end annotation


# static fields
.field private static final EVENT_START_GET_INFO:I = 0x2

.field private static final EVENT_START_GET_INFO_END:I = 0x4

.field private static final EVENT_START_GET_INFO_UPDATE:I = 0x3

.field private static final EVENT_TICK:I = 0x1

.field static final TAG:Ljava/lang/String; = "MemoryInfo"

.field private static instance:Lcom/sec/android/app/controlpanel/MemoryInfo;


# instance fields
.field private final DBG:Z

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

.field private mTaskRunner:Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

.field private mTickHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->DBG:Z

    .line 25
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    .line 53
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo$1;-><init>(Lcom/sec/android/app/controlpanel/MemoryInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo$2;-><init>(Lcom/sec/android/app/controlpanel/MemoryInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mTickHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mTaskRunner:Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/controlpanel/MemoryInfo;Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;)Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mTaskRunner:Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/MemoryInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/MemoryInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static destroy()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 46
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/MemoryInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 39
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/MemoryInfo;->instance:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-object v0
.end method


# virtual methods
.method public addObservedPkgList(Ljava/util/List;)V
    .locals 3
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
    .line 215
    .local p1, l:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 216
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObservedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    return-void
.end method

.method public getAvailMem()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public getTotalMemory()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 166
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

    .line 172
    .local v1, mMemInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 173
    .local v2, mMemInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 175
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public getUsedMem(I)J
    .locals 4
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 112
    .local v1, pids:[I
    aput p1, v1, v3

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 115
    .local v0, debugMemInfo:[Landroid/os/Debug$MemoryInfo;
    if-nez v0, :cond_0

    .line 116
    const-wide/16 v2, 0x0

    .line 119
    :goto_0
    return-wide v2

    :cond_0
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public isLowMemory()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return v0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 105
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

    .line 106
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 108
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 4
    .parameter "o"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mTickHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->refresh()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mTickHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    :cond_0
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
    .line 126
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 127
    .local v7, size:I
    new-array v6, v7, [I

    .line 129
    .local v6, pids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_0

    .line 130
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v8}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v8

    aput v8, v6, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/MemoryInfo;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 136
    .local v0, debugMemInfo:[Landroid/os/Debug$MemoryInfo;
    const/4 v1, 0x0

    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_1

    .line 138
    aget v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
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

    .line 143
    .local v5, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 144
    .local v4, memUsage:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 147
    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMemUsage(J)V

    goto :goto_2

    .line 153
    .end local v4           #memUsage:Ljava/lang/Integer;
    .end local v5           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    return-void
.end method
