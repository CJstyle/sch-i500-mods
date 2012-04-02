.class public Lcom/sec/android/app/controlpanel/CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# static fields
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
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    .line 38
    new-instance v0, Lcom/sec/android/app/controlpanel/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    .line 119
    new-instance v0, Lcom/sec/android/app/controlpanel/CpuInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/CpuInfo$1;-><init>(Lcom/sec/android/app/controlpanel/CpuInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/CpuInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/CpuInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 47
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/CpuInfo;->instance:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-object v0
.end method

.method private processCpuUsage()V
    .locals 8

    .prologue
    const-string v7, "CpuInfo"

    .line 91
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastUserTime()I

    move-result v5

    .line 107
    .local v5, user:I
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastSystemTime()I

    move-result v4

    .line 109
    .local v4, system:I
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIrqTime()I

    move-result v3

    .line 111
    .local v3, irq:I
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIdleTime()I

    move-result v2

    .line 113
    .local v2, idle:I
    add-int v6, v5, v4

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    int-to-float v6, v6

    iput v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    .line 114
    iget v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->refresh()V

    .line 117
    return-void

    .line 92
    .end local v2           #idle:I
    .end local v3           #irq:I
    .end local v4           #system:I
    .end local v5           #user:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "CpuInfo"

    const-string v6, "processCpuUsage() occured exception"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/ProcessStats;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 98
    .local v1, e2:Ljava/lang/Exception;
    const-string v6, "CpuInfo"

    const-string v6, "processCpuUsage()->init() occured exception"

    invoke-static {v7, v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCpuUsage(I)F
    .locals 4
    .parameter "pid"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStatsByPid(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-result-object v0

    .line 70
    .local v0, stat:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    if-nez v0, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 76
    :goto_0
    return v2

    .line 74
    :cond_0
    iget v2, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v1, v2, v3

    .line 76
    .local v1, time:I
    mul-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mTotalCpuTime:F

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public getCpuUsagePrint(I)Ljava/lang/String;
    .locals 21
    .parameter "limit"

    .prologue
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v5, b:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 142
    .local v3, am:Landroid/app/ActivityManager;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v10, packagePid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 144
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

    .line 145
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

    .line 148
    .end local v11           #ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStats()Ljava/util/List;

    move-result-object v13

    .line 149
    .local v13, stat:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    const/4 v6, 0x0

    .line 150
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

    .line 152
    .local v12, s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    add-int/lit8 v6, v6, 0x1

    .line 153
    move v0, v6

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    .line 190
    .end local v12           #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 156
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

    .line 157
    .local v14, usage:F
    new-instance v7, Ljava/util/Formatter;

    invoke-direct {v7}, Ljava/util/Formatter;-><init>()V

    .line 159
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

    .line 165
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

    .line 166
    .restart local v11       #ra:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-nez v11, :cond_4

    .line 167
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

    .line 174
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

    .line 181
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

    .line 182
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

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public init()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/ProcessStats;->init()V

    .line 83
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 227
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

    .line 228
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 230
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V

    .line 87
    return-void
.end method
