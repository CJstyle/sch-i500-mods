.class public Lcom/sec/android/app/controlpanel/PackageInfoItem;
.super Ljava/lang/Object;
.source "PackageInfoItem.java"


# static fields
.field public static DefaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private static sLastIdx:I


# instance fields
.field private appDetail:Ljava/lang/CharSequence;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/CharSequence;

.field private canClearData:Z

.field private canKilled:Z

.field category:I

.field private codeSize:J

.field private codeSizeFormatted:Ljava/lang/String;

.field private cpuUsage:F

.field private cpuUsageString:Ljava/lang/String;

.field private dataSize:J

.field private dataSizeFormatted:Ljava/lang/String;

.field private getIntentActionAfterForceStop:Z

.field private hideRunningAppList:Z

.field private id:I

.field private installedTime:J

.field private intent:Landroid/content/Intent;

.field private memUsage:J

.field private memUsageString:Ljava/lang/String;

.field private mustBeShowRunningAppList:Z

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private processStartTime:J

.field private recentTaskOrder:I

.field private service:Z

.field private sizeComputed:Z

.field private storedExternalStorage:I

.field private systemApp:Z

.field private systemAppUpdate:Z

.field private task:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const-string v1, ""

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->category:I

    .line 24
    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    .line 27
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appDetail:Ljava/lang/CharSequence;

    .line 30
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSizeFormatted:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSizeFormatted:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    .line 36
    iput-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    .line 37
    iput-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    .line 38
    iput-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    .line 45
    iput v4, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processStartTime:J

    .line 60
    iput v4, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->recentTaskOrder:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->packageName:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->id:I

    .line 70
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x2

    goto :goto_0

    .line 293
    :cond_1
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->category:I

    goto :goto_0
.end method

.method public getCodeDataSize()J
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCodeSize()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    return-wide v0
.end method

.method public getCpuRateFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuUsage()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    return v0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    return-wide v0
.end method

.method public getInstalledTime()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->installedTime:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMemUsage()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    return-wide v0
.end method

.method public getMemUsageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    return v0
.end method

.method public getProcessStartTime()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processStartTime:J

    return-wide v0
.end method

.method public getRecentTaskOrder()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->recentTaskOrder:I

    return v0
.end method

.method public getStoredExternalStorage()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->storedExternalStorage:I

    return v0
.end method

.method public isCanKilled()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    return v0
.end method

.method public isGetIntentActionAfterForceStop()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getIntentActionAfterForceStop:Z

    return v0
.end method

.method public isHideRunningAppList()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->hideRunningAppList:Z

    return v0
.end method

.method public isMustBeShowRunningAppList()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mustBeShowRunningAppList:Z

    return v0
.end method

.method public isService()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->service:Z

    return v0
.end method

.method public isSizeComputed()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sizeComputed:Z

    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemApp:Z

    return v0
.end method

.method public isSystemAppUpdate()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemAppUpdate:Z

    return v0
.end method

.method public isTask()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->task:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 144
    return-void
.end method

.method public setAppName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    .line 112
    return-void
.end method

.method public setCanClearData(Z)V
    .locals 0
    .parameter "canClearData"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canClearData:Z

    .line 336
    return-void
.end method

.method public setCodeSize(J)V
    .locals 0
    .parameter "codeSize"

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    .line 233
    return-void
.end method

.method public setCodeSizeFormatted(Ljava/lang/String;)V
    .locals 0
    .parameter "codeSizeFormatted"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSizeFormatted:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setCpuUsage(F)V
    .locals 6
    .parameter "cpuUsage"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    .line 75
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 77
    .local v0, f:Ljava/util/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%2.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDataSize(J)V
    .locals 0
    .parameter "storageData"

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    .line 207
    return-void
.end method

.method public setDataSizeFormatted(Ljava/lang/String;)V
    .locals 0
    .parameter "dataSizeFormatted"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSizeFormatted:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setGetIntentActionAfterForceStop(Z)V
    .locals 0
    .parameter "getIntentActionAfterForceStop"

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getIntentActionAfterForceStop:Z

    .line 384
    return-void
.end method

.method public setHideRunningAppList(Z)V
    .locals 0
    .parameter "hideRunningAppList"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->hideRunningAppList:Z

    .line 368
    return-void
.end method

.method public setInstalledTime(J)V
    .locals 0
    .parameter "installedTime"

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->installedTime:J

    .line 392
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->intent:Landroid/content/Intent;

    .line 316
    return-void
.end method

.method public setMemUsage(J)V
    .locals 7
    .parameter "memUsage"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    .line 184
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 186
    .local v0, f:Ljava/util/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%2.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-float v5, p1

    const/high16 v6, 0x4480

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setMustBeShowRunningAppList(Z)V
    .locals 0
    .parameter "mustBeShowRunningAppList"

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mustBeShowRunningAppList:Z

    .line 376
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    .line 99
    return-void
.end method

.method public setProcessStartTime(J)V
    .locals 0
    .parameter "processStartTime"

    .prologue
    .line 399
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processStartTime:J

    .line 400
    return-void
.end method

.method public setRecentTaskOrder(I)V
    .locals 0
    .parameter "recentTaskOrder"

    .prologue
    .line 407
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->recentTaskOrder:I

    .line 408
    return-void
.end method

.method public setService(Z)V
    .locals 0
    .parameter "service"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->service:Z

    .line 356
    return-void
.end method

.method public setSizeComputed(Z)V
    .locals 0
    .parameter "sizeComputed"

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sizeComputed:Z

    .line 320
    return-void
.end method

.method public setStoredExternalStorage(I)V
    .locals 0
    .parameter "storedExternalStorage"

    .prologue
    .line 359
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->storedExternalStorage:I

    .line 360
    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0
    .parameter "systemApp"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemApp:Z

    .line 344
    return-void
.end method

.method public setSystemAppUpdate(Z)V
    .locals 0
    .parameter "systemAppUpdate"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemAppUpdate:Z

    .line 348
    return-void
.end method

.method public setTask(Z)V
    .locals 0
    .parameter "task"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->task:Z

    .line 352
    return-void
.end method
