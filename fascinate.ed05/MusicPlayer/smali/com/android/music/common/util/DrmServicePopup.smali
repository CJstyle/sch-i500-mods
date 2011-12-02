.class public Lcom/android/music/common/util/DrmServicePopup;
.super Landroid/app/AlertDialog;
.source "DrmServicePopup.java"


# static fields
.field public static final DRM_POPUP_FILEPATH:Ljava/lang/String; = "popup.filepath"

.field public static final DRM_POPUP_FROM:Ljava/lang/String; = "popup.from"

.field public static final DRM_POPUP_REMAINED_COUNTS:Ljava/lang/String; = "popup.remain.counts"

.field public static final DRM_POPUP_STRING:Ljava/lang/String; = "popup.string"

.field public static final DRM_POPUP_TYPE:Ljava/lang/String; = "popup.type"

.field public static final DRM_POPUP_URI:Ljava/lang/String; = "popup.uri"

.field public static final RESULT_BUY:I = 0x4

.field public static final RESULT_DELETE:I = 0x5

.field public static final RESULT_PLAY:I = 0x3

.field public static final SHOW_DRM_POPUP:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field drmManager:Lcom/android/music/common/manager/MusicDrmManager;

.field errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mBuyListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPlayListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUri:Landroid/net/Uri;

.field private popupFrom:I

.field private popupString:Ljava/lang/String;

.field private popupStrings:[I

.field private popupType:I

.field private remainedCounts:I

.field rightButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    .line 44
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 45
    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    .line 47
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->mUri:Landroid/net/Uri;

    .line 48
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 50
    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->remainedCounts:I

    .line 51
    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupFrom:I

    .line 57
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->rightButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 316
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$1;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$1;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 344
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$2;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$2;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 369
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$3;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$3;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 420
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$4;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$4;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 435
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$5;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$5;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 448
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$6;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$6;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 64
    iput-object p1, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    .line 67
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget-object v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    .line 68
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    iput v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    .line 70
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget-object v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mUri:Landroid/net/Uri;

    .line 71
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget-object v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget v1, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    iput v1, p0, Lcom/android/music/common/util/DrmServicePopup;->remainedCounts:I

    .line 74
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    iput v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupFrom:I

    .line 77
    new-instance v1, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 79
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/common/util/DrmServicePopup;->createDialog()V

    .line 89
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0a007c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/util/DrmServicePopup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/common/util/DrmServicePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/music/common/util/DrmServicePopup;->popupFrom:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/common/util/DrmServicePopup;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public createDialog()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const v6, 0x7f0a00a5

    const/4 v5, -0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    sget-object v3, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v4, "createDialog() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    iput-boolean v8, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 107
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/music/common/util/DrmServicePopup;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    const v3, 0x1080027

    invoke-virtual {p0, v3}, Lcom/android/music/common/util/DrmServicePopup;->setIcon(I)V

    .line 110
    iget v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 111
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v2

    .line 115
    .local v2, wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a008d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    .end local v2           #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    packed-switch v3, :pswitch_data_0

    .line 298
    :goto_1
    :pswitch_0
    return-void

    .line 120
    .restart local v2       #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 122
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 125
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0           #e:Landroid/wmdrm/mobile/WMDRMDRMException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 128
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :pswitch_1
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/music/common/util/DrmServicePopup;->remainedCounts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a007f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 145
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 288
    :goto_2
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/music/common/util/DrmServicePopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v3, v8}, Lcom/android/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    goto :goto_1

    .line 156
    :pswitch_2
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 157
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a007f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 166
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 178
    :pswitch_3
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 191
    :pswitch_4
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 196
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 204
    :pswitch_5
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 205
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a007f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 214
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 216
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 226
    :pswitch_6
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 239
    :pswitch_7
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 246
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 258
    :pswitch_8
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 271
    :pswitch_9
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 276
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 465
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/common/util/DrmPopupActivity;

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/common/util/DrmPopupActivity;

    invoke-virtual {p0}, Lcom/android/music/common/util/DrmPopupActivity;->finish()V

    .line 467
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-object v0, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 301
    sget-object v1, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v2, "onStop() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 307
    return-void
.end method
