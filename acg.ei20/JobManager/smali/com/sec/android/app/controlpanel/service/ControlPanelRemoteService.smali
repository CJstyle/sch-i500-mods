.class public Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;
.super Landroid/app/Service;
.source "ControlPanelRemoteService.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;


# instance fields
.field private cpu_warning:Z

.field private cpu_warning_level:Ljava/lang/String;

.field private cpu_warning_msg:Ljava/lang/String;

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

.field private final mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

.field private runningItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;-><init>(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->calcCPUUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    return-object v0
.end method

.method private calcCPUUsage()V
    .locals 14

    .prologue
    const-string v13, "ControlPanelRemoteService"

    .line 98
    const/4 v10, 0x0

    .line 99
    .local v10, total:F
    const/4 v7, 0x0

    .line 100
    .local v7, topCpuUsage:F
    const-string v8, ""

    .line 101
    .local v8, topRunningName:Ljava/lang/String;
    const-string v9, ""

    .line 102
    .local v9, topRunningPackageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 107
    .local v5, numRunning:I
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 108
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->runningItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 109
    .local v0, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage(I)F

    move-result v2

    .line 110
    .local v2, cpuUsage:F
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "ControlPanelRemoteService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcCPUUsage() packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " usage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    add-float/2addr v10, v2

    .line 112
    cmpl-float v11, v2, v7

    if-lez v11, :cond_2

    .line 113
    move v7, v2

    .line 114
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 116
    :cond_2
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_0

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    .end local v0           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v2           #cpuUsage:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    if-lez v5, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 125
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v11, 0x2000

    :try_start_0
    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 126
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 135
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    :goto_1
    const/high16 v11, 0x40a0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_a

    .line 136
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    .line 137
    invoke-direct {p0, v10}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getWarningLevel(F)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    .line 138
    invoke-direct {p0, v8, v7, v5}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getWarningMsg(Ljava/lang/String;FI)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    .line 142
    :goto_2
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "ControlPanelRemoteService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcCPUUsage() cpu_warning:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "ControlPanelRemoteService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcCPUUsage() cpu_warning_level:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_level:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_6
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "ControlPanelRemoteService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcCPUUsage() cpu_warning_msg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning_msg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_7
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "ControlPanelRemoteService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcCPUUsage() top_cpu_usage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_8
    sget-object v11, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "ControlPanelRemoteService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcCPUUsage() total_cpu_usage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_9
    return-void

    .line 127
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 128
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "ControlPanelRemoteService"

    const-string v11, "calcCPUUsage() NameNotFoundException"

    invoke-static {v13, v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 140
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_a
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->cpu_warning:Z

    goto/16 :goto_2
.end method

.method private getWarningLevel(F)Ljava/lang/String;
    .locals 1
    .parameter "totalCpuUsage"

    .prologue
    .line 149
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 150
    const-string v0, "level2"

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const-string v0, "level1"

    goto :goto_0

    .line 152
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
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    .line 161
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mTaskManagerBinder:Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ControlPanelRemoteService"

    const-string v1, "getRunningApplicationCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 44
    return-void
.end method
