.class public Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/manager/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicDrmDetailInfo"
.end annotation


# instance fields
.field public constraintsType:I

.field public typeStr:[I

.field public usesStr:I

.field public usesType:I

.field public validityStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesType:I

    .line 561
    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    .line 562
    iput v0, p0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    .line 563
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 568
    return-void

    .line 563
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
