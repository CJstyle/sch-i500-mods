.class public Lcom/sec/android/app/controlpanel/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkingProcsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 216
    new-instance v0, Lcom/sec/android/app/controlpanel/ProcessStats$1;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/controlpanel/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 70
    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 91
    :array_2
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 104
    :array_3
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessStatsData:[J

    .line 68
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSinglePidStatsData:[J

    .line 88
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 89
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsData:[J

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSystemCpuData:[J

    .line 110
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoadAverageData:[F

    .line 114
    iput v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad1:F

    .line 115
    iput v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad5:F

    .line 116
    iput v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad15:F

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 145
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    .line 237
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mIncludeThreads:Z

    .line 238
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .locals 28
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 328
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    .local p6, workingProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/controlpanel/ProcessStats$Stats;>;"
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v20

    .line 331
    .local v20, pids:[I
    if-nez v20, :cond_1

    const/4 v5, 0x0

    move v12, v5

    .line 332
    .local v12, NP:I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 333
    .local v13, NS:I
    const/4 v14, 0x0

    .line 334
    .local v14, curStatsIndex:I
    const/4 v15, 0x0

    .end local p1
    .local v15, i:I
    :goto_1
    if-ge v15, v12, :cond_0

    .line 335
    aget v7, v20, v15

    .line 336
    .local v7, pid:I
    if-gez v7, :cond_2

    .line 337
    move v12, v7

    .line 466
    .end local v7           #pid:I
    :cond_0
    :goto_2
    if-ge v14, v13, :cond_10

    .line 468
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 469
    .local v23, st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 470
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 471
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 472
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 473
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    .line 474
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    add-int/lit8 v13, v13, -0x1

    .line 478
    goto :goto_2

    .line 331
    .end local v12           #NP:I
    .end local v13           #NS:I
    .end local v14           #curStatsIndex:I
    .end local v15           #i:I
    .end local v23           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    .restart local p1
    :cond_1
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    move v12, v5

    goto :goto_0

    .line 340
    .end local p1
    .restart local v7       #pid:I
    .restart local v12       #NP:I
    .restart local v13       #NS:I
    .restart local v14       #curStatsIndex:I
    .restart local v15       #i:I
    :cond_2
    if-ge v14, v13, :cond_4

    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-object/from16 v23, p1

    .line 342
    .restart local v23       #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :goto_3
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    move v5, v0

    if-ne v5, v7, :cond_9

    .line 344
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    .line 345
    add-int/lit8 v14, v14, 0x1

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v21, v0

    .line 349
    .local v21, procStats:[J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, v21

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-nez v5, :cond_5

    .line 334
    .end local v7           #pid:I
    .end local v21           #procStats:[J
    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 340
    .end local v23           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    .restart local v7       #pid:I
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v23, v5

    goto :goto_3

    .line 354
    .restart local v21       #procStats:[J
    .restart local v23       #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_5
    const/4 v5, 0x0

    aget-wide v18, v21, v5

    .line 355
    .local v18, minfaults:J
    const/4 v5, 0x1

    aget-wide v16, v21, v5

    .line 356
    .local v16, majfaults:J
    const/4 v5, 0x2

    aget-wide v26, v21, v5

    .line 357
    .local v26, utime:J
    const/4 v5, 0x3

    aget-wide v24, v21, v5

    .line 359
    .local v24, stime:J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    cmp-long v5, v26, v5

    if-nez v5, :cond_6

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    cmp-long v5, v24, v5

    if-nez v5, :cond_6

    .line 360
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 361
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 362
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 363
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 364
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 365
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    goto :goto_4

    .line 370
    :cond_6
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    move v5, v0

    if-nez v5, :cond_7

    .line 371
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->active:Z

    .line 374
    :cond_7
    if-gez p2, :cond_8

    .line 375
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/controlpanel/ProcessStats;->getName(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 377
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/controlpanel/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    .line 383
    :cond_8
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    sub-long v5, v26, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 384
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    sub-long v5, v24, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 385
    move-wide/from16 v0, v26

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    .line 386
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    .line 387
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    move-wide v5, v0

    sub-long v5, v18, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 388
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    move-wide v5, v0

    sub-long v5, v16, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 389
    move-wide/from16 v0, v18

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    .line 390
    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    .line 395
    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    move v5, v0

    int-to-long v5, v5

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    move-wide v7, v0

    .end local v7           #pid:I
    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    move v5, v0

    int-to-long v5, v5

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 397
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 402
    .end local v16           #majfaults:J
    .end local v18           #minfaults:J
    .end local v21           #procStats:[J
    .end local v24           #stime:J
    .end local v26           #utime:J
    .restart local v7       #pid:I
    :cond_9
    if-eqz v23, :cond_a

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    move v5, v0

    if-le v5, v7, :cond_f

    .line 404
    :cond_a
    new-instance v23, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .end local v23           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mIncludeThreads:Z

    move v5, v0

    move-object/from16 v0, v23

    move v1, v7

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;-><init>(IIZ)V

    .line 405
    .restart local v23       #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, p5

    move v1, v14

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 406
    add-int/lit8 v14, v14, 0x1

    .line 407
    add-int/lit8 v13, v13, 0x1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v22, v0

    .line 411
    .local v22, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v21, v0

    .line 412
    .restart local v21       #procStats:[J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 415
    if-gez p2, :cond_c

    const/4 v5, 0x0

    aget-object v5, v22, v5

    :goto_5
    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 417
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    .line 418
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    .line 419
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    .line 426
    :goto_6
    if-gez p2, :cond_e

    .line 427
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/controlpanel/ProcessStats;->getName(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Ljava/lang/String;)V

    .line 439
    :cond_b
    :goto_7
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 440
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 441
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 442
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 443
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    .line 444
    if-nez p3, :cond_3

    .line 445
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 415
    :cond_c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 421
    :cond_d
    const-string v5, "<unknown>"

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 422
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_stime:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_utime:J

    .line 423
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->base_minfaults:J

    goto :goto_6

    .line 429
    :cond_e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 430
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->nameWidth:I

    .line 431
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_b

    .line 432
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/controlpanel/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurThreadPids:[I

    goto/16 :goto_7

    .line 451
    .end local v21           #procStats:[J
    .end local v22           #procStatsString:[Ljava/lang/String;
    :cond_f
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    .line 452
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    .line 453
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    .line 454
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    .line 455
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    .line 456
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    add-int/lit8 v13, v13, -0x1

    .line 462
    add-int/lit8 v15, v15, -0x1

    .line 463
    goto/16 :goto_4

    .line 480
    .end local v7           #pid:I
    .end local v23           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_10
    return-object v20
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .parameter "out"

    .prologue
    const/16 v13, 0x14

    const/4 v12, 0x0

    .line 520
    move-object v6, p1

    .line 521
    .local v6, tempTimes:[J
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeeds:[J

    .line 522
    .local v5, tempSpeeds:[J
    const/16 v0, 0x14

    .line 523
    .local v0, MAX_SPEEDS:I
    if-nez p1, :cond_0

    .line 524
    new-array v6, v13, [J

    .line 525
    new-array v5, v13, [J

    .line 527
    :cond_0
    const/4 v3, 0x0

    .line 528
    .local v3, speed:I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/sec/android/app/controlpanel/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 531
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 533
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, token:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 536
    .local v8, val:J
    aput-wide v8, v5, v3

    .line 537
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 538
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 539
    aput-wide v8, v6, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    add-int/lit8 v3, v3, 0x1

    .line 541
    if-ne v3, v13, :cond_1

    .line 551
    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #val:J
    :cond_2
    if-nez p1, :cond_3

    .line 552
    new-array p1, v3, [J

    .line 553
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeeds:[J

    .line 554
    iget-object v10, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    :cond_3
    return-object p1

    .line 546
    .restart local v4       #st:Ljava/util/StringTokenizer;
    .restart local v7       #token:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 547
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "ProcessStats"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getName(Lcom/sec/android/app/controlpanel/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 6
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    const/4 v5, 0x1

    .line 732
    iget-object v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 733
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 734
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 736
    move-object v2, v0

    .line 737
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 738
    .local v1, i:I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    .line 739
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 743
    .end local v0           #cmdName:Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 744
    :cond_2
    iput-object v2, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 745
    iget-object v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->nameWidth:I

    .line 747
    :cond_3
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    const-string v2, " "

    const-string v1, " + "

    .line 669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    if-nez p4, :cond_0

    const/4 p4, 0x1

    .line 673
    :cond_0
    add-int v0, p5, p6

    add-int/2addr v0, p7

    add-int/2addr v0, p8

    add-int/2addr v0, p9

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 674
    const-string v0, "% = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    mul-int/lit8 v0, p5, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 676
    const-string v0, "% user + "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    mul-int/lit8 v0, p6, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 678
    const-string v0, "% kernel"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    if-lez p7, :cond_1

    .line 680
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    mul-int/lit8 v0, p7, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 682
    const-string v0, "% iowait"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    :cond_1
    if-lez p8, :cond_2

    .line 685
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    mul-int/lit8 v0, p8, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 687
    const-string v0, "% irq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    :cond_2
    if-lez p9, :cond_3

    .line 690
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    mul-int/lit8 v0, p9, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 692
    const-string v0, "% softirq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    :cond_3
    if-gtz p10, :cond_4

    if-lez p11, :cond_6

    .line 695
    :cond_4
    const-string v0, " / faults:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    if-lez p10, :cond_5

    .line 697
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 699
    const-string v0, " minor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    :cond_5
    if-lez p11, :cond_6

    .line 702
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->print(I)V

    .line 704
    const-string v0, " major"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 708
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 712
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 713
    .local v1, is:Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 714
    .local v2, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 716
    if-lez v2, :cond_2

    .line 718
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 719
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    aget-byte v3, v3, v0

    if-ne v3, p2, :cond_1

    .line 723
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :goto_1
    return-object v3

    .line 718
    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    .restart local v2       #len:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :catch_0
    move-exception v3

    .line 728
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 725
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public final countWorkingStats()I
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/controlpanel/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 8
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSinglePidStatsData:[J

    .line 486
    .local v1, statsData:[J
    sget-object v4, Lcom/sec/android/app/controlpanel/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .local v2, time:J
    move-wide v4, v2

    .line 492
    .end local v2           #time:J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 502
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_0

    .line 503
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    .line 504
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 506
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/sec/android/app/controlpanel/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 510
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .line 512
    .local v1, temp:J
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 513
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    .end local v1           #temp:J
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 585
    iget v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIdleTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    return-object p0
.end method

.method public final getWorkingStats()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/ProcessStats$Stats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/controlpanel/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getWorkingStatsByPid(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    .locals 2
    .parameter "pid"

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 601
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-object v0, p0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/ProcessStats;->update()V

    .line 250
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    .line 241
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentState()Ljava/lang/String;
    .locals 23

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    move v2, v0

    if-nez v2, :cond_0

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    sget-object v3, Lcom/sec/android/app/controlpanel/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 620
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    .line 623
    :cond_0
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 624
    .local v21, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 625
    .local v3, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad1:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 627
    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad5:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 629
    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLoad15:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 634
    .local v18, now:J
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mLastSampleTime:J

    move-wide v4, v0

    sub-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 636
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurrentSampleTime:J

    move-wide v4, v0

    sub-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 638
    const-string v2, "ms ago:"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIoWaitTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSoftIrqTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIdleTime:I

    move v4, v0

    add-int v6, v2, v4

    .line 643
    .local v6, totalTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 644
    .local v15, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_6

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 646
    .local v20, st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    move v2, v0

    if-eqz v2, :cond_1

    const-string v2, " +"

    move-object v4, v2

    :goto_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_minfaults:I

    move v12, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_majfaults:I

    move v13, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/controlpanel/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 649
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 650
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 651
    .local v14, M:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_2
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_5

    .line 652
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 653
    .local v22, tst:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->added:Z

    move v2, v0

    if-eqz v2, :cond_3

    const-string v2, "   +"

    move-object v4, v2

    :goto_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/controlpanel/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 651
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 646
    .end local v14           #M:I
    .end local v17           #j:I
    .end local v22           #tst:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-eqz v2, :cond_2

    const-string v2, " -"

    move-object v4, v2

    goto :goto_1

    :cond_2
    const-string v2, "  "

    move-object v4, v2

    goto/16 :goto_1

    .line 653
    .restart local v14       #M:I
    .restart local v17       #j:I
    .restart local v22       #tst:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_3
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-eqz v2, :cond_4

    const-string v2, "   -"

    move-object v4, v2

    goto :goto_3

    :cond_4
    const-string v2, "    "

    move-object v4, v2

    goto :goto_3

    .line 644
    .end local v14           #M:I
    .end local v17           #j:I
    .end local v22           #tst:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 661
    .end local v20           #st:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_6
    const-string v4, ""

    const-string v5, "TOTAL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIoWaitTime:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSoftIrqTime:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/controlpanel/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 664
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 27

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mLastSampleTime:J

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurrentSampleTime:J

    .line 271
    const-string v6, "/proc"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurPids:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/controlpanel/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mCurPids:[I

    .line 273
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    .line 278
    .local v19, s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsMap:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->pid:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v19           #s:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v22, v0

    .line 283
    .local v22, sysCpu:[J
    const-string v5, "/proc/stat"

    sget-object v6, Lcom/sec/android/app/controlpanel/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v22

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    const/4 v5, 0x0

    aget-wide v5, v22, v5

    const/4 v7, 0x1

    aget-wide v7, v22, v7

    add-long v25, v5, v7

    .line 288
    .local v25, usertime:J
    const/4 v5, 0x2

    aget-wide v23, v22, v5

    .line 290
    .local v23, systemtime:J
    const/4 v5, 0x3

    aget-wide v13, v22, v5

    .line 292
    .local v13, idletime:J
    const/4 v5, 0x4

    aget-wide v15, v22, v5

    .line 293
    .local v15, iowaittime:J
    const/4 v5, 0x5

    aget-wide v17, v22, v5

    .line 294
    .local v17, irqtime:J
    const/4 v5, 0x6

    aget-wide v20, v22, v5

    .line 296
    .local v20, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseUserTime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelUserTime:I

    .line 297
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSystemTime:J

    move-wide v5, v0

    sub-long v5, v23, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSystemTime:I

    .line 298
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIoWaitTime:J

    move-wide v5, v0

    sub-long v5, v15, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIoWaitTime:I

    .line 299
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIrqTime:J

    move-wide v5, v0

    sub-long v5, v17, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIrqTime:I

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSoftIrqTime:J

    move-wide v5, v0

    sub-long v5, v20, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelSoftIrqTime:I

    .line 301
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIdleTime:J

    move-wide v5, v0

    sub-long v5, v13, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mRelIdleTime:I

    .line 312
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseUserTime:J

    .line 313
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSystemTime:J

    .line 314
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIoWaitTime:J

    .line 315
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIrqTime:J

    .line 316
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseSoftIrqTime:J

    .line 317
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/ProcessStats;->mBaseIdleTime:J

    .line 320
    .end local v13           #idletime:J
    .end local v15           #iowaittime:J
    .end local v17           #irqtime:J
    .end local v20           #softirqtime:J
    .end local v23           #systemtime:J
    .end local v25           #usertime:J
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mWorkingProcsSorted:Z

    .line 321
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/controlpanel/ProcessStats;->mFirst:Z

    .line 322
    return-void
.end method
