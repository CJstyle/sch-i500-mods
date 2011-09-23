.class public Lcom/sec/android/app/controlpanel/PackageInfoItem;
.super Ljava/lang/Object;
.source "PackageInfoItem.java"


# static fields
.field public static final CATEGORY_SERVICE:I = 0x2

.field public static final CATEGORY_TASK:I = 0x1

.field public static mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

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

.field private componentName:Landroid/content/ComponentName;

.field private cpuUsage:F

.field private cpuUsageString:Ljava/lang/String;

.field private dataSize:J

.field private dataSizeFormatted:Ljava/lang/String;

.field private id:I

.field private intent:Landroid/content/Intent;

.field private memUsage:J

.field private memUsageString:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private processName:Ljava/lang/String;

.field private service:Z

.field private sizeComputed:Z

.field private systemApp:Z

.field private systemAppUpdate:Z

.field private task:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const-string v1, ""

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->category:I

    .line 20
    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    .line 23
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appDetail:Ljava/lang/CharSequence;

    .line 26
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSizeFormatted:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSizeFormatted:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    .line 32
    iput-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    .line 33
    iput-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    .line 34
    iput-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->packageName:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    sget v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sLastIdx:I

    iput v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->id:I

    .line 57
    return-void
.end method


# virtual methods
.method public canClearData()Z
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanClearData()Z

    move-result v0

    return v0
.end method

.method public canKilled()Z
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v0

    return v0
.end method

.method public getAppDetail()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appDetail:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const/4 v0, 0x2

    goto :goto_0

    .line 298
    :cond_1
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->category:I

    goto :goto_0
.end method

.method public getCodeDataSize()J
    .locals 4

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCodeDataSizeFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 255
    const-string v0, ""

    .line 258
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSizeFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSizeFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCodeSize()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    return-wide v0
.end method

.method public getCodeSizeFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSizeFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCpuRateFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuUsage()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    return v0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    return-wide v0
.end method

.method public getDataSizeFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSizeFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->id:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMemUsage()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    return-wide v0
.end method

.method public getMemUsageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsageString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public isCanClearData()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canClearData:Z

    return v0
.end method

.method public isCanKilled()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    return v0
.end method

.method public isService()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->service:Z

    return v0
.end method

.method public isSizeComputed()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sizeComputed:Z

    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemApp:Z

    return v0
.end method

.method public isSystemAppUpdate()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemAppUpdate:Z

    return v0
.end method

.method public isTask()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->task:Z

    return v0
.end method

.method public refreshIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public refreshLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setAppDetail(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "appDetail"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appDetail:Ljava/lang/CharSequence;

    .line 171
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 145
    return-void
.end method

.method public setAppName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->appName:Ljava/lang/CharSequence;

    .line 113
    return-void
.end method

.method public setCanClearData(Z)V
    .locals 0
    .parameter "canClearData"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canClearData:Z

    .line 341
    return-void
.end method

.method public setCanKilled(Z)V
    .locals 0
    .parameter "canKilled"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled:Z

    .line 333
    return-void
.end method

.method public setCodeSizeFormatted(J)V
    .locals 0
    .parameter "storageProgram"

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSize:J

    .line 234
    return-void
.end method

.method public setCodeSizeFormatted(Ljava/lang/String;)V
    .locals 0
    .parameter "storageProgramString"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->codeSizeFormatted:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->componentName:Landroid/content/ComponentName;

    .line 365
    return-void
.end method

.method public setCpuUsage(F)V
    .locals 6
    .parameter "cpuUsage"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsage:F

    .line 76
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 78
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

    .line 80
    return-void
.end method

.method public setCpuUsageString(Ljava/lang/String;)V
    .locals 0
    .parameter "cpuUsageString"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->cpuUsageString:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDataSize(J)V
    .locals 0
    .parameter "storageData"

    .prologue
    .line 207
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSize:J

    .line 208
    return-void
.end method

.method public setDataSizeFormatted(Ljava/lang/String;)V
    .locals 0
    .parameter "storageDataString"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->dataSizeFormatted:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->id:I

    .line 132
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->intent:Landroid/content/Intent;

    .line 321
    return-void
.end method

.method public setMemUsage(J)V
    .locals 7
    .parameter "memUsage"

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->memUsage:J

    .line 185
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 187
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

    .line 188
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 99
    iput p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->pid:I

    .line 100
    return-void
.end method

.method public setService(Z)V
    .locals 0
    .parameter "service"

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->service:Z

    .line 361
    return-void
.end method

.method public setSizeComputed(Z)V
    .locals 0
    .parameter "sizeComputed"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->sizeComputed:Z

    .line 325
    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0
    .parameter "systemApp"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemApp:Z

    .line 349
    return-void
.end method

.method public setSystemAppUpdate(Z)V
    .locals 0
    .parameter "systemAppUpdate"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->systemAppUpdate:Z

    .line 353
    return-void
.end method

.method public setTask(Z)V
    .locals 0
    .parameter "task"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->task:Z

    .line 357
    return-void
.end method
