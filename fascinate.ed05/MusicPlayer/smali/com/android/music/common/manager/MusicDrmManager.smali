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
.field public static final DRM_INVALID_CD_LIST:I = 0xe

.field public static final DRM_INVALID_CD_PLAYER:I = 0xf

.field public static final DRM_INVALID_FL:I = 0xd

.field public static final DRM_INVALID_NOPOPUP:I = 0xa

.field public static final DRM_INVALID_POPUP:I = 0xb

.field public static final DRM_INVALID_SD:I = 0x10

.field public static final DRM_INVALID_UNKNOWN:I = 0x14

.field public static final DRM_INVALID_WMDRM:I = 0xc

.field public static final DRM_VALID_INTERVAL_FIRST:I = 0x2

.field public static final DRM_VALID_NCOUNTS:I = 0x1

.field public static final DRM_VALID_NOPOPUP:I = 0x0

.field public static final NORMAL_FILE:I = -0x1

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
    .line 31
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

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 58
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 60
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 64
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 67
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 68
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 69
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 71
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 72
    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 353
    new-instance v0, Lcom/android/music/common/manager/MusicDrmManager$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/manager/MusicDrmManager$1;-><init>(Lcom/android/music/common/manager/MusicDrmManager;)V

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 98
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 99
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 100
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 58
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 60
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 64
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 67
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 68
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 69
    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 71
    iput-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 72
    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 353
    new-instance v0, Lcom/android/music/common/manager/MusicDrmManager$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/manager/MusicDrmManager$1;-><init>(Lcom/android/music/common/manager/MusicDrmManager;)V

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 104
    iput-object p1, p0, Lcom/android/music/common/manager/MusicDrmManager;->context:Landroid/content/Context;

    .line 105
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 106
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 107
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/manager/MusicDrmManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public InitDrmManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "InitDrmManager()is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 224
    iput-boolean v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    .line 225
    iput-boolean v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 226
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    .line 227
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 228
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 229
    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 231
    iput-boolean v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 232
    iput v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 233
    return-void
.end method

.method public IsDrmFile()Z
    .locals 4

    .prologue
    .line 200
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    or-int v0, v1, v2

    .line 201
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

    .line 202
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

    .line 111
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

    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v1, "MusicDrmManager:IsDrmFile() path==null"

    .line 115
    .local v1, msg:Ljava/lang/String;
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/common/manager/MusicDrmManager;->InitDrmManager()V

    .line 124
    iput-object p1, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    .line 128
    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    if-eqz v2, :cond_2

    .line 129
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): It is WmDrm File"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 136
    :goto_0
    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v2, :cond_1

    .line 137
    sget-object v2, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): It is Drm File"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    .line 140
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    .line 142
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 145
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

    .line 149
    iget v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    if-nez v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 153
    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    if-eqz v2, :cond_3

    .line 154
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

    .line 184
    :cond_1
    :goto_1
    iput-boolean v8, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile()Z

    move-result v2

    return v2

    .line 133
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

    .line 169
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 172
    throw v0

    .line 163
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

    .line 173
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 181
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_1
.end method

.method public IsOmaDrmFile()Z
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsOmaDrmFile()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    return v0
.end method

.method public IsValidFile()Z
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    if-eqz v1, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 216
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

    .line 217
    return v0

    .line 211
    :cond_1
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v1, :cond_0

    .line 212
    iget v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    if-nez v1, :cond_0

    .line 213
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsWmaDrmFile()Z
    .locals 3

    .prologue
    .line 195
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsWmaDrmFile()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-boolean v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    return v0
.end method

.method public getDetailRightsPermission()Ljava/util/ArrayList;
    .locals 21
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
    .line 380
    const/4 v13, 0x0

    .line 381
    .local v13, rightsCount:I
    const/4 v10, 0x0

    .line 382
    .local v10, permissionCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v2, details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;>;"
    const/4 v5, 0x0

    .line 386
    .local v5, info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 387
    :cond_0
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() It is not DRM file || filePath== null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v16, 0x0

    .line 555
    .end local p0
    :goto_0
    return-object v16

    .line 391
    .restart local p0
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 392
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() It is OMA DRM file"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 396
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() manager== null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v16, 0x0

    goto :goto_0

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_3

    .line 401
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getDetailRightsPermission()"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", this file do not have any permission"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/16 v16, 0x0

    goto :goto_0

    .line 405
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->filePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/drm/mobile2/OMADRMManager;->queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;

    move-result-object v8

    .line 406
    .local v8, omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    if-nez v8, :cond_4

    .line 407
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() omaDrmConstInfo==null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v16, 0x0

    goto :goto_0

    .line 411
    :cond_4
    iget-object v12, v8, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    .line 413
    .local v12, rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 415
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_1
    if-ge v4, v13, :cond_5

    .line 416
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmRightsPermissions:Ljava/util/ArrayList;

    move-object v11, v0

    .line 417
    .local v11, rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v10

    .line 419
    const/4 v7, 0x0

    .local v7, j:I
    move-object v6, v5

    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .local v6, info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :goto_2
    if-ge v7, v10, :cond_6

    .line 420
    :try_start_1
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;

    .line 421
    .local v9, permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    new-instance v5, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    invoke-direct {v5}, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 423
    .end local v6           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :try_start_2
    move-object v0, v9

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    .line 424
    move-object v0, v9

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curConstraints:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    .line 425
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission()%d,%d,%d,%d "

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object v0, v5

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    move-object v0, v5

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object v0, v5

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    .line 448
    :goto_3
    move-object v0, v5

    iget v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_1

    .line 487
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() DRM type is incorrect"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_4
    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v7, v7, 0x1

    move-object v6, v5

    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v6       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto :goto_2

    .line 429
    .end local v6           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :sswitch_1
    const v16, 0x7f0a0090

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 496
    .end local v4           #i:I
    .end local v7           #j:I
    .end local v8           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v9           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v11           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v12           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_0
    move-exception v16

    move-object/from16 v3, v16

    .line 498
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_6
    move-object/from16 v16, v2

    .line 555
    goto/16 :goto_0

    .line 432
    .restart local v4       #i:I
    .restart local v7       #j:I
    .restart local v8       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v9       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v11       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v12       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :sswitch_2
    const v16, 0x7f0a0091

    :try_start_3
    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 499
    .end local v4           #i:I
    .end local v7           #j:I
    .end local v8           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v9           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v11           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v12           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_1
    move-exception v16

    move-object/from16 v3, v16

    .line 501
    .local v3, e:Landroid/drm/mobile2/OMADRMException;
    :goto_7
    invoke-virtual {v3}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_6

    .line 435
    .end local v3           #e:Landroid/drm/mobile2/OMADRMException;
    .restart local v4       #i:I
    .restart local v7       #j:I
    .restart local v8       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v9       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v11       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v12       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :sswitch_3
    const v16, 0x7f0a0092

    :try_start_4
    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 502
    .end local v4           #i:I
    .end local v7           #j:I
    .end local v8           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v9           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v11           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v12           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_2
    move-exception v16

    move-object/from16 v3, v16

    .line 504
    .local v3, e:Ljava/io/IOException;
    :goto_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 438
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i:I
    .restart local v7       #j:I
    .restart local v8       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v9       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v11       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v12       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :sswitch_4
    const v16, 0x7f0a0093

    :try_start_5
    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    goto :goto_3

    .line 441
    :sswitch_5
    const v16, 0x7f0a0094

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    goto :goto_3

    .line 444
    :sswitch_6
    const v16, 0x7f0a0095

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    goto :goto_3

    .line 450
    :sswitch_7
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a009b

    aput v18, v16, v17

    goto :goto_4

    .line 453
    :sswitch_8
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a0096

    aput v18, v16, v17

    .line 454
    const-string v16, "%d/%d"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v9

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v9

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 457
    :sswitch_9
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a0097

    aput v18, v16, v17

    .line 458
    const-string v16, "%4d/%2d/%2d %2d:%2d:%2d - %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x8

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x9

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xa

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xb

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 466
    :sswitch_a
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a0098

    aput v18, v16, v17

    .line 467
    const-string v16, "%4d/%2d/%2d %2d:%2d:%2d"

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 472
    :sswitch_b
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a0099

    aput v18, v16, v17

    .line 473
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const v18, 0x7f0a0096

    aput v18, v16, v17

    .line 474
    const-string v16, "%4d/%2d/%2d %2d:%2d:%2d"

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object v0, v9

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 479
    :sswitch_c
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a009a

    aput v18, v16, v17

    .line 480
    const-string v16, "%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v9

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curAccumulated:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 415
    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v9           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v6       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object v5, v6

    .end local v6           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_1

    .line 506
    .end local v4           #i:I
    .end local v7           #j:I
    .end local v8           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v11           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v12           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    .restart local p0
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 507
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() It is not WMDRM file"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    .line 510
    :cond_8
    sget-object v16, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v17, "getDetailRightsPermission() wmManager== null || wmConstraintsInfo == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 514
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->wmdrmArrayRightsObj:Ljava/util/ArrayList;

    move-object v15, v0

    .line 515
    .local v15, wmdrmArrayRightsObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 516
    const/4 v14, 0x0

    .line 518
    .local v14, wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_9
    if-ge v4, v13, :cond_5

    .line 519
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    check-cast v14, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    .line 520
    .restart local v14       #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    new-instance v5, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    invoke-direct {v5}, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;-><init>()V

    .line 522
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    move-object v0, v14

    iget-boolean v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 523
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a0096

    aput v18, v16, v17

    .line 524
    const-string v16, "%d/%d"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v14

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v14

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 550
    :cond_a
    :goto_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 526
    :cond_b
    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a0097

    aput v18, v16, v17

    .line 528
    move-object v0, v14

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/common/manager/MusicDrmManager;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a009b

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto :goto_a

    .line 530
    :cond_c
    move-object v0, v14

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 531
    const-string v16, "- %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 535
    :cond_d
    move-object v0, v14

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 536
    const-string v16, "%4d/%2d/%2d %2d:%2d:%2d - %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x8

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x9

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xa

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xb

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 541
    :cond_e
    move-object v0, v14

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 542
    const-string v16, "%4d/%2d/%2d %2d:%2d:%2d -"

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object v0, v14

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 502
    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .end local v14           #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v15           #wmdrmArrayRightsObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;>;"
    .end local p0
    .restart local v6       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v7       #j:I
    .restart local v8       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v11       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v12       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_3
    move-exception v16

    move-object/from16 v3, v16

    move-object v5, v6

    .end local v6           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_8

    .line 499
    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v6       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :catch_4
    move-exception v16

    move-object/from16 v3, v16

    move-object v5, v6

    .end local v6           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_7

    .line 496
    .end local v5           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v6       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    :catch_5
    move-exception v16

    move-object/from16 v3, v16

    move-object v5, v6

    .end local v6           #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    .restart local v5       #info:Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
    goto/16 :goto_5

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 448
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

    const v4, 0x7f0a008d

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
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

    .line 239
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

    .line 241
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bInitialed:Z

    if-nez v1, :cond_0

    .line 242
    const-string v0, "MusicDrmManager:setDrmPopup() it did not be initialized"

    .line 243
    .local v0, msg:Ljava/lang/String;
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    iput v5, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 250
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bWmDrmFile:Z

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->wmConstraintsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    if-nez v1, :cond_1

    .line 252
    const v1, 0x7f0a00c9

    aput v1, p2, v5

    .line 253
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 254
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 327
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

    .line 329
    iget v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    return v1

    .line 256
    :cond_2
    iget-boolean v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v1, :cond_1

    .line 258
    iget v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->iResult:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    if-eqz v1, :cond_4

    .line 259
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    if-ne v1, v6, :cond_3

    .line 261
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Count"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    if-gt v1, v7, :cond_1

    .line 263
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Count<=2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const v1, 0x7f0a0088

    aput v1, p2, v5

    .line 265
    const v1, 0x7f0a008a

    aput v1, p2, v6

    .line 266
    iput v6, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 267
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 268
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto :goto_0

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 271
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Interval"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
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

    .line 276
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Interval, first time"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const v1, 0x7f0a0089

    aput v1, p2, v5

    .line 278
    const v1, 0x7f0a008a

    aput v1, p2, v6

    .line 279
    iput v7, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 280
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 281
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    if-eqz v1, :cond_a

    .line 286
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-nez v1, :cond_5

    .line 287
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, FL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const v1, 0x7f0a008b

    aput v1, p2, v5

    .line 289
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 290
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-ne v1, v6, :cond_7

    .line 292
    if-ne p1, v6, :cond_6

    .line 293
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, CD, List"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    aput v4, p2, v5

    .line 295
    const v1, 0x7f0a008c

    aput v1, p2, v6

    .line 296
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 297
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_DELETE_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 298
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 300
    :cond_6
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, CD, Not List"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    aput v4, p2, v5

    .line 302
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 303
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 305
    :cond_7
    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-eq v1, v8, :cond_8

    iget-object v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-ne v1, v7, :cond_9

    .line 306
    :cond_8
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, SD, SSD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const v1, 0x7f0a008e

    aput v1, p2, v5

    .line 308
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 309
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_BUY_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 310
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 312
    :cond_9
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    aput v4, p2, v5

    .line 314
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 315
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 318
    :cond_a
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup(): drmInfo==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    aput v4, p2, v5

    .line 321
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    .line 322
    sget-object v1, Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0
.end method

.method public getOptionInfo()Landroid/drm/mobile2/Drm2Options;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    return-object v0
.end method

.method public getPopupType()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->popupType:I

    return v0
.end method

.method public getRemainedCounts()I
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v0, v0, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 345
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

    .line 346
    iget-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v0, v0, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    .line 349
    :goto_0
    return v0

    .line 348
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

    .line 349
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isDrmPopupShown()Z
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lcom/android/music/common/manager/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmPopupShown()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    return v0
.end method

.method public setDrmPopupShown(Z)V
    .locals 0
    .parameter "bPopup"

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/android/music/common/manager/MusicDrmManager;->isDrmPopupShown:Z

    .line 370
    return-void
.end method
