.class public Lcom/sec/android/app/controlpanel/JobInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "JobInfoReceiver.java"


# static fields
.field private static final EVENT_PROC_RUNNING_PROGRAM_REQ:I = 0x2

.field private static final EVENT_TICK:I = 0x1

.field private static final UPDATE_INTERVAL:I = 0x7d0


# instance fields
.field final CPU_1ST_THRESH_HOLD:I

.field final CPU_2ND_THRESH_HOLD:I

.field final CPU_THRESH_HOLD:I

.field final CPU_USAGE_WARN:Ljava/lang/String;

.field final CPU_USAGE_WARN_LEVEL1:Ljava/lang/String;

.field final CPU_USAGE_WARN_LEVEL2:Ljava/lang/String;

.field final RUNNING_PROGRAM_ACK:Ljava/lang/String;

.field final RUNNING_PROGRAM_REQ:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

.field mRunningApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCpuTime:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "com.sec.android.app.controlpanel.RUNNING_PROGRAM_REQ"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->RUNNING_PROGRAM_REQ:Ljava/lang/String;

    .line 19
    const-string v0, "com.sec.android.app.controlpanel.RUNNING_PROGRAM_ACK"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->RUNNING_PROGRAM_ACK:Ljava/lang/String;

    .line 20
    const-string v0, "com.sec.android.app.controlpanel.CPU_USAGE_WARN"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->CPU_USAGE_WARN:Ljava/lang/String;

    .line 22
    const-string v0, "level1"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->CPU_USAGE_WARN_LEVEL1:Ljava/lang/String;

    .line 23
    const-string v0, "level2"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->CPU_USAGE_WARN_LEVEL2:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->CPU_1ST_THRESH_HOLD:I

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->CPU_2ND_THRESH_HOLD:I

    .line 27
    iput v1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->CPU_THRESH_HOLD:I

    .line 37
    new-instance v0, Lcom/sec/android/app/controlpanel/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    .line 106
    new-instance v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;-><init>(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->processCpuUsage()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/JobInfoReceiver;F)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->getWarningLevel(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/JobInfoReceiver;Ljava/lang/String;FI)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->getWarningMsg(Ljava/lang/String;FI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWarningLevel(F)Ljava/lang/String;
    .locals 1
    .parameter "totalCpuUsage"

    .prologue
    .line 78
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 79
    const-string v0, "level2"

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 81
    const-string v0, "level1"

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getWarningMsg(Ljava/lang/String;FI)Ljava/lang/String;
    .locals 4
    .parameter "topRunningName"
    .parameter "topCpuUsage"
    .parameter "numRunning"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, b:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    .line 97
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private processCpuUsage()V
    .locals 6

    .prologue
    .line 54
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/ProcessStats;->update()V

    .line 56
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastUserTime()I

    move-result v3

    .line 57
    .local v3, user:I
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastSystemTime()I

    move-result v2

    .line 58
    .local v2, system:I
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIrqTime()I

    move-result v1

    .line 59
    .local v1, irq:I
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/ProcessStats;->getLastIdleTime()I

    move-result v0

    .line 61
    .local v0, idle:I
    add-int v4, v3, v2

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mTotalCpuTime:F

    .line 62
    iget v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mTotalCpuTime:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mTotalCpuTime:F

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public getCpuUsage(I)F
    .locals 4
    .parameter "pid"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/controlpanel/ProcessStats;->getWorkingStatsByPid(I)Lcom/sec/android/app/controlpanel/ProcessStats$Stats;

    move-result-object v0

    .line 68
    .local v0, stat:Lcom/sec/android/app/controlpanel/ProcessStats$Stats;
    if-nez v0, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 74
    :goto_0
    return v2

    .line 72
    :cond_0
    iget v2, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_utime:I

    iget v3, v0, Lcom/sec/android/app/controlpanel/ProcessStats$Stats;->rel_stime:I

    add-int v1, v2, v3

    .line 74
    .local v1, time:I
    mul-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mTotalCpuTime:F

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.app.controlpanel.RUNNING_PROGRAM_REQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    :cond_0
    return-void
.end method
