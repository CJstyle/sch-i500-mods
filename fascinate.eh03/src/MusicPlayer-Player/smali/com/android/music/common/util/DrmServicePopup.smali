.class public Lcom/android/music/common/util/DrmServicePopup;
.super Landroid/app/AlertDialog;
.source "DrmServicePopup.java"


# static fields
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
    .line 34
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

    .line 67
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 48
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    .line 49
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 50
    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    .line 53
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 55
    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->remainedCounts:I

    .line 56
    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupFrom:I

    .line 62
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->rightButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 331
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$1;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$1;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 359
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$2;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$2;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 384
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$3;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$3;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 467
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$4;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$4;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 482
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$5;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$5;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 495
    new-instance v1, Lcom/android/music/common/util/DrmServicePopup$6;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/DrmServicePopup$6;-><init>(Lcom/android/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 69
    iput-object p1, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    .line 72
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget-object v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    .line 73
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    iput v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    .line 76
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget-object v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget v1, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    iput v1, p0, Lcom/android/music/common/util/DrmServicePopup;->remainedCounts:I

    .line 79
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    iget v1, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    iput v1, p0, Lcom/android/music/common/util/DrmServicePopup;->popupFrom:I

    .line 82
    new-instance v1, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 84
    iput-object v2, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/common/util/DrmServicePopup;->createDialog()V

    .line 94
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/util/DrmServicePopup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/android/music/common/util/DrmPopupData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/common/util/DrmServicePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/music/common/util/DrmServicePopup;->popupFrom:I

    return v0
.end method


# virtual methods
.method public createDialog()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const v6, 0x7f0a00a8

    const/4 v5, -0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    sget-object v3, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v4, "createDialog() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    iput-boolean v8, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 112
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/music/common/util/DrmServicePopup;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    const v3, 0x1080027

    invoke-virtual {p0, v3}, Lcom/android/music/common/util/DrmServicePopup;->setIcon(I)V

    .line 115
    iget v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 117
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v2

    .line 121
    .local v2, wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0090

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    .end local v2           #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupType:I

    packed-switch v3, :pswitch_data_0

    .line 313
    :goto_1
    :pswitch_0
    return-void

    .line 127
    .restart local v2       #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 129
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 132
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Landroid/wmdrm/mobile/WMDRMDRMException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 135
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 149
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

    .line 151
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0081

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 152
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 160
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 303
    :goto_2
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/music/common/util/DrmServicePopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v3, v8}, Lcom/android/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    goto :goto_1

    .line 171
    :pswitch_2
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0081

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 181
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 193
    :pswitch_3
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 206
    :pswitch_4
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 211
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 219
    :pswitch_5
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0081

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 221
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 229
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 241
    :pswitch_6
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 254
    :pswitch_7
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 261
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/util/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 263
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 273
    :pswitch_8
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 286
    :pswitch_9
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 291
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 147
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
    .line 510
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 512
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/common/util/DrmPopupActivity;

    if-eqz v0, :cond_0

    .line 513
    iget-object p0, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/common/util/DrmPopupActivity;

    invoke-virtual {p0}, Lcom/android/music/common/util/DrmPopupActivity;->finish()V

    .line 514
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget-object v0, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 316
    sget-object v1, Lcom/android/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v2, "onStop() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.metachanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 322
    return-void
.end method
