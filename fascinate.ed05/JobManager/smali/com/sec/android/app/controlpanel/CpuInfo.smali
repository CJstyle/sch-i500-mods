.class public Lcom/sec/android/app/controlpanel/CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# static fields
.field static final BATTERY_STATS_TIME:J = 0x1b7740L

.field static final DBG:Z = false

.field private static final EVENT_TICK:I = 0x1

.field static final MONITOR_CPU_MAX_TIME:J = 0xfffffffL

.field static final MONITOR_CPU_MIN_TIME:J = 0x1388L

.field static final MONITOR_CPU_USAGE:Z = true

.field static final MONITOR_THREAD_CPU_USAGE:Z = false

.field static final TAG:Ljava/lang/String; = "CpuInfo"

.field private static final UPDATE_INTERVAL:I = 0xfa0

.field private static instance:Lcom/sec/android/app/controlpanel/CpuInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field

.field final mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

.field private mTotalCpuTime:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    .line 36
    new-instance v0, Lcom/sec/android/app/controlpanel/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    .line 107
    new-instance v0, Lcom/sec/android/app/controlpanel/CpuInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/CpuInfo$1;-><init>(Lcom/sec/android/app/controlpanel/CpuInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/CpuInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V

    return-void
.end method

.method static destroy()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    if-eqz v0, :cond_0

    .line 52
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/CpuInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 45
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-object v0
.end method

.method private processCpuUsage()V
    .locals 8

    .prologue
    .line 86
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->update()V

    .line 92
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastUserTime()I

    move-result v5

    .line 93
    .local v5, user:I
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastSystemTime()I

    move-result v4

    .line 95
    .local v4, system:I
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIrqTime()I

    move-result v2

    .line 97
    .local v2, irq:I
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIdleTime()I

    move-result v1

    .line 99
    .local v1, idle:I
    add-int v6, v5, v4

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    int-to-float v6, v6

    iput v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    .line 100
    iget v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/controlpanel/Observer;

    .line 103
    .local v3, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v3, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 105
    .end local v3           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCpuUsage()F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/ProcessStats;->getTotalCpuPercent()F

    move-result v0

    return v0
.end method

.method public getCpuUsage(I)F
    .locals 4
    .parameter "pid"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStatsByPid(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-result-object v0

    .line 74
    .local v0, stat:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    if-nez v0, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 80
    :goto_0
    return v2

    .line 78
    :cond_0
    iget v2, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v1, v2, v3

    .line 80
    .local v1, time:I
    mul-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public getCpuUsageBySeq(I)Ljava/lang/String;
    .locals 5
    .parameter "seq"

    .prologue
    .line 182
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStats()Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, stats:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 185
    const-string v3, ""

    .line 192
    :goto_0
    return-object v3

    .line 188
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 190
    .local v0, s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v4, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    div-float v2, v3, v4

    .line 192
    .local v2, usage:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getCpuUsageFormatted()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 65
    .local v0, f:Ljava/util/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%10.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCpuUsagePrint(I)Ljava/lang/String;
    .locals 21
    .parameter "limit"

    .prologue
    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v5, b:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 127
    .local v3, am:Landroid/app/ActivityManager;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v10, packagePid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 129
    .local v4, applicaitonInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 130
    .local v11, ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v0, v11

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .end local v11           #ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStats()Ljava/util/List;

    move-result-object v13

    .line 134
    .local v13, stat:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    const/4 v6, 0x0

    .line 135
    .local v6, cnt:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 137
    .local v12, s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    add-int/lit8 v6, v6, 0x1

    .line 138
    move v0, v6

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    .line 178
    .end local v12           #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 141
    .restart local v12       #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_3
    move-object v0, v12

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    move/from16 v16, v0

    move-object v0, v12

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int/lit8 v16, v16, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    move/from16 v17, v0

    div-float v14, v16, v17

    .line 142
    .local v14, usage:F
    new-instance v7, Ljava/util/Formatter;

    invoke-direct {v7}, Ljava/util/Formatter;-><init>()V

    .line 144
    .local v7, f:Ljava/util/Formatter;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "%10.2f"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, usageFormatted:Ljava/lang/String;
    move-object v0, v12

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 151
    .restart local v11       #ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-nez v11, :cond_4

    .line 152
    move-object v0, v12

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 159
    :cond_4
    move-object v0, v11

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object v0, v11

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 167
    const-string v16, "---["

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v11

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 218
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

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

    .line 219
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 221
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/ProcessStats;->init()V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V

    .line 120
    return-void
.end method
