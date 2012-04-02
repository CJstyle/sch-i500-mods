.class public Lcom/android/music/common/manager/MusicDrmManager;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;,
        Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bInitialed:Z

.field private bOmaDrmFile:Z

.field private bWmDrmFile:Z

.field private constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

.field private context:Landroid/content/Context;

.field private drmInfo:[I

.field errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field private filePath:Ljava/lang/String;

.field private iResult:I

.field private isDrmPopupShown:Z

.field private manager:Landroid/drm/mobile2/OMADRMManager;

.field private options:Landroid/drm/mobile2/Drm2Options;

.field private popupType:I

.field private wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

.field private wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 74
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 76
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 80
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 83
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 84
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 85
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 87
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 88
    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 390
    new-instance v0, Lcom/android/music/common/manager/MusicDrmManager$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/manager/MusicDrmManager$1;-><init>(Lcom/android/music/common/manager/MusicDrmManager;)V

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 114
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 117
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 118
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 74
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 76
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 80
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 83
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 84
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 85
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 87
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 88
    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 390
    new-instance v0, Lcom/android/music/common/manager/MusicDrmManager$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/manager/MusicDrmManager$1;-><init>(Lcom/android/music/common/manager/MusicDrmManager;)V

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 123
    iput-object p1, p0, Lcom/android/music/common/manager/MusicDrmManager;->context:Landroid/content/Context;

    .line 125
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 127
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 128
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/manager/MusicDrmManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public InitDrmManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 258
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "InitDrmManager()is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 261
    iput-boolean v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    .line 262
    iput-boolean v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 263
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    .line 264
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 265
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 266
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 268
    iput-boolean v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 269
    iput v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 270
    return-void
.end method

.method public IsDrmFile()Z
    .locals 4

    .prologue
    .line 237
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    or-int v0, v1, v2

    .line 238
    .local v0, result:Z
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsDrmFile()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v0
.end method

.method public IsDrmFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 133
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsDrmFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string v1, "MusicDrmManager:IsDrmFile() path==null"

    .line 137
    .local v1, msg:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/common/manager/MusicDrmManager;->InitDrmManager()V

    .line 146
    iput-object p1, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 165
    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    if-eqz v2, :cond_2

    .line 166
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): It is WmDrm File"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 173
    :goto_0
    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v2, :cond_1

    .line 174
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): It is Drm File"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    .line 177
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 179
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 182
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): drmInfo[DrmVersion:%d],[DrmType:%d],iResult=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 190
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    if-eqz v2, :cond_3

    .line 191
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "DrmManager():bMusic=%s,bRingtone=%s,bSendContentURL=%s,bBluetooth=%s,bPreview=%s,bSendAs=%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bMusic:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bSendContentURL:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bBluetooth:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bPreview:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_0 .. :try_end_0} :catch_3

    .line 221
    :cond_1
    :goto_1
    iput-boolean v8, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile()Z

    move-result v2

    return v2

    .line 170
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 206
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 208
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 209
    throw v0

    .line 200
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :try_start_2
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "DrmManager():manager.getOptionMenu == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 210
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 212
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 215
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 218
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_1
.end method

.method public IsValidFile()Z
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    if-eqz v1, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 253
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsValidFile()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v0

    .line 248
    :cond_1
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v1, :cond_0

    .line 249
    iget v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    if-nez v1, :cond_0

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDetailRightsPermission()Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    const/16 v24, 0x0

    .line 418
    .local v24, rightsCount:I
    const/16 v21, 0x0

    .line 419
    .local v21, permissionCount:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v13, details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    const/16 v16, 0x0

    .line 423
    .local v16, info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 424
    :cond_0
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() It is not DRM file || filePath== null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v4, 0x0

    .line 620
    .end local p0
    :goto_0
    return-object v4

    .line 428
    .restart local p0
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    move v4, v0

    if-eqz v4, :cond_7

    .line 429
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() It is OMA DRM file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    move-object v4, v0

    if-nez v4, :cond_2

    .line 433
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() manager== null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v4, 0x0

    goto :goto_0

    .line 437
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDetailRightsPermission()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this file do not have any permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v4, 0x0

    goto :goto_0

    .line 442
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/drm/mobile2/OMADRMManager;->queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;

    move-result-object v19

    .line 443
    .local v19, omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    if-nez v19, :cond_4

    .line 444
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() omaDrmConstInfo==null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v4, 0x0

    goto :goto_0

    .line 448
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 450
    .local v23, rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 452
    const/4 v15, 0x0

    .end local p0
    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 453
    move-object/from16 v0, v23

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmRightsPermissions:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 454
    .local v22, rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v21

    .line 456
    const/16 v18, 0x0

    .local v18, j:I
    move-object/from16 v17, v16

    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .local v17, info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 457
    :try_start_1
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;

    .line 458
    .local v20, permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    new-instance v16, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 460
    .end local v17           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :try_start_2
    move-object/from16 v0, v20

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->type:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    .line 461
    move-object/from16 v0, v20

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curConstraints:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    .line 462
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission()%d,%d,%d,%d "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    move v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    move v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    move v4, v0

    sparse-switch v4, :sswitch_data_0

    .line 485
    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    move v4, v0

    sparse-switch v4, :sswitch_data_1

    .line 524
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() DRM type is incorrect"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_4
    :sswitch_0
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v17, v16

    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v17       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto :goto_2

    .line 466
    .end local v17           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :sswitch_1
    const v4, 0x7f0a0093

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 533
    .end local v15           #i:I
    .end local v18           #j:I
    .end local v19           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v20           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v22           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v23           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 535
    .local v14, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v14           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_6
    move-object v4, v13

    .line 620
    goto/16 :goto_0

    .line 469
    .restart local v15       #i:I
    .restart local v18       #j:I
    .restart local v19       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v20       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v22       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v23       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :sswitch_2
    const v4, 0x7f0a0094

    :try_start_3
    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 536
    .end local v15           #i:I
    .end local v18           #j:I
    .end local v19           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v20           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v22           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v23           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 538
    .local v14, e:Landroid/drm/mobile2/OMADRMException;
    :goto_7
    invoke-virtual {v14}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_6

    .line 472
    .end local v14           #e:Landroid/drm/mobile2/OMADRMException;
    .restart local v15       #i:I
    .restart local v18       #j:I
    .restart local v19       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v20       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v22       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v23       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :sswitch_3
    const v4, 0x7f0a0095

    :try_start_4
    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 539
    .end local v15           #i:I
    .end local v18           #j:I
    .end local v19           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v20           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v22           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v23           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_2
    move-exception v4

    move-object v14, v4

    .line 541
    .local v14, e:Ljava/io/IOException;
    :goto_8
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 475
    .end local v14           #e:Ljava/io/IOException;
    .restart local v15       #i:I
    .restart local v18       #j:I
    .restart local v19       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v20       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v22       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v23       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :sswitch_4
    const v4, 0x7f0a0096

    :try_start_5
    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    goto :goto_3

    .line 478
    :sswitch_5
    const v4, 0x7f0a0097

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    goto :goto_3

    .line 481
    :sswitch_6
    const v4, 0x7f0a0098

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    goto :goto_3

    .line 487
    :sswitch_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a009e

    aput v6, v4, v5

    goto :goto_4

    .line 490
    :sswitch_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a0099

    aput v6, v4, v5

    .line 491
    const-string v4, "%d/%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curCount:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgCount:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 494
    :sswitch_9
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a009a

    aput v6, v4, v5

    .line 495
    const-string v4, "%4d/%2d/%2d %2d:%2d:%2d - %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 503
    :sswitch_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a009b

    aput v6, v4, v5

    .line 504
    const-string v4, "%4d/%2d/%2d %2d:%2d:%2d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 509
    :sswitch_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a009c

    aput v6, v4, v5

    .line 510
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x1

    const v6, 0x7f0a0099

    aput v6, v4, v5

    .line 511
    const-string v4, "%4d/%2d/%2d %2d:%2d:%2d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object v7, v0

    iget v7, v7, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 516
    :sswitch_c
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a009d

    aput v6, v4, v5

    .line 517
    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curAccumulated:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 452
    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v20           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v17       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v17

    .end local v17           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_1

    .line 543
    .end local v15           #i:I
    .end local v18           #j:I
    .end local v19           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v22           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v23           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    .restart local p0
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 544
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() It is not WMDRM file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-object v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-object v4, v0

    if-nez v4, :cond_9

    .line 547
    :cond_8
    sget-object v4, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "getDetailRightsPermission() wmManager== null || wmConstraintsInfo == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 551
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->wmdrmArrayRightsObj:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 552
    .local v26, wmdrmArrayRightsObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 553
    const/16 v25, 0x0

    .line 555
    .local v25, wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 556
    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    check-cast v25, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    .line 557
    .restart local v25       #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    new-instance v16, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    invoke-direct/range {v16 .. v16}, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;-><init>()V

    .line 559
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    move v4, v0

    if-eqz v4, :cond_b

    .line 560
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a0099

    aput v6, v4, v5

    .line 561
    const-string v4, "%d/%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v25

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 615
    :cond_a
    :goto_a
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 563
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0a009a

    aput v6, v4, v5

    .line 565
    move-object/from16 v0, v25

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->context:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0a009e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto :goto_a

    .line 567
    :cond_c
    move-object/from16 v0, v25

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    .line 573
    new-instance v2, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v3, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v4, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v5, v0

    iget v5, v5, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v6, v0

    iget v6, v6, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v7, v0

    iget v7, v7, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v8, v0

    iget v8, v8, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    invoke-direct/range {v2 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 575
    .local v2, g:Ljava/util/GregorianCalendar;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM. yyyy, HH:mm:ss z"

    invoke-direct {v11, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 576
    .local v11, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 579
    .end local v2           #g:Ljava/util/GregorianCalendar;
    .end local v11           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_d
    move-object/from16 v0, v25

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 588
    new-instance v2, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v3, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v4, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v5, v0

    iget v5, v5, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v6, v0

    iget v6, v6, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v7, v0

    iget v7, v7, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v8, v0

    iget v8, v8, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    invoke-direct/range {v2 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 590
    .restart local v2       #g:Ljava/util/GregorianCalendar;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM. yyyy, HH:mm:ss z"

    invoke-direct {v11, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 592
    .restart local v11       #dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v4, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v5, v0

    iget v5, v5, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v6, v0

    iget v6, v6, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v7, v0

    iget v7, v7, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v8, v0

    iget v8, v8, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v9, v0

    iget v9, v9, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    invoke-direct/range {v3 .. v9}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 594
    .local v3, h:Ljava/util/GregorianCalendar;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM. yyyy, HH:mm:ss z"

    invoke-direct {v12, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 596
    .local v12, dateFormat1:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 599
    .end local v2           #g:Ljava/util/GregorianCalendar;
    .end local v3           #h:Ljava/util/GregorianCalendar;
    .end local v11           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v12           #dateFormat1:Ljava/text/SimpleDateFormat;
    :cond_e
    move-object/from16 v0, v25

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 605
    new-instance v2, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v5, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v4, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    const/4 v6, 0x1

    sub-int v6, v4, v6

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v7, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v8, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object v4, v0

    iget v10, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 607
    .restart local v2       #g:Ljava/util/GregorianCalendar;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM. yyyy, HH:mm:ss z"

    invoke-direct {v11, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v11       #dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 539
    .end local v2           #g:Ljava/util/GregorianCalendar;
    .end local v11           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v25           #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v26           #wmdrmArrayRightsObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;>;"
    .end local p0
    .restart local v17       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v18       #j:I
    .restart local v19       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v22       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v23       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_3
    move-exception v4

    move-object v14, v4

    move-object/from16 v16, v17

    .end local v17           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_8

    .line 536
    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v17       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :catch_4
    move-exception v4

    move-object v14, v4

    move-object/from16 v16, v17

    .end local v17           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_7

    .line 533
    .end local v16           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v17       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :catch_5
    move-exception v4

    move-object v14, v4

    move-object/from16 v16, v17

    .end local v17           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v16       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_5

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 485
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_8
        0x2 -> :sswitch_9
        0x4 -> :sswitch_a
        0x8 -> :sswitch_b
        0x10 -> :sswitch_c
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I
    .locals 9
    .parameter "bOnRequestByList"
    .parameter "popupStrings"
    .parameter "button"

    .prologue
    const/4 v8, 0x3

    const v4, 0x7f0a0090

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 275
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmPopup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    if-nez v1, :cond_0

    .line 279
    const-string v0, "MusicDrmManager:setDrmPopup() it did not be initialized"

    .line 280
    .local v0, msg:Ljava/lang/String;
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    iput v5, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 287
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    if-nez v1, :cond_1

    .line 289
    const v1, 0x7f0a00d0

    aput v1, p2, v5

    .line 290
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 291
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 364
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "setDrmPopup(): popupStrings=%d,%d,popupType=%d"

    new-array v3, v8, [Ljava/lang/Object;

    aget v4, p2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, p2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    return v1

    .line 293
    :cond_2
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v1, :cond_1

    .line 295
    iget v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    if-eqz v1, :cond_4

    .line 296
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    if-ne v1, v6, :cond_3

    .line 298
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Count"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    if-gt v1, v7, :cond_1

    .line 300
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Count<=2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const v1, 0x7f0a008b

    aput v1, p2, v5

    .line 302
    const v1, 0x7f0a008d

    aput v1, p2, v6

    .line 303
    iput v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 304
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 305
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 308
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Interval"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v1, v1, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v1, v1, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v1, v1, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v2, v2, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v2}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Interval, first time"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const v1, 0x7f0a008c

    aput v1, p2, v5

    .line 315
    const v1, 0x7f0a008d

    aput v1, p2, v6

    .line 316
    iput v7, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 317
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 318
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 322
    :cond_4
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    if-eqz v1, :cond_a

    .line 323
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-nez v1, :cond_5

    .line 324
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, FL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const v1, 0x7f0a008e

    aput v1, p2, v5

    .line 326
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 327
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 328
    :cond_5
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-ne v1, v6, :cond_7

    .line 329
    if-ne p1, v6, :cond_6

    .line 330
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, CD, List"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    aput v4, p2, v5

    .line 332
    const v1, 0x7f0a008f

    aput v1, p2, v6

    .line 333
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 334
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_DELETE_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 335
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 337
    :cond_6
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, CD, Not List"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    aput v4, p2, v5

    .line 339
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 340
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 342
    :cond_7
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-eq v1, v8, :cond_8

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-ne v1, v7, :cond_9

    .line 343
    :cond_8
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, SD, SSD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const v1, 0x7f0a0091

    aput v1, p2, v5

    .line 345
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 346
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_BUY_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 347
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 349
    :cond_9
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    aput v4, p2, v5

    .line 351
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 352
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 355
    :cond_a
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup(): drmInfo==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    aput v4, p2, v5

    .line 358
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 359
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0
.end method

.method public getOptionInfo()Landroid/drm/mobile2/Drm2Options;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    return-object v0
.end method

.method public getRemainedCounts()I
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v0, v0, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 382
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemainedCounts()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v2, v2, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v0, v0, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    .line 386
    :goto_0
    return v0

    .line 385
    :cond_0
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemainedCounts(): constraintsInfo==null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setDrmPopupShown(Z)V
    .locals 0
    .parameter "bPopup"

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 407
    return-void
.end method
