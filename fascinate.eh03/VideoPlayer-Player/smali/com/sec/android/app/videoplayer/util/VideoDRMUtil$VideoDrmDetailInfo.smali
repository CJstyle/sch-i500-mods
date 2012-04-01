.class public Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
.super Ljava/lang/Object;
.source "VideoDRMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoDrmDetailInfo"
.end annotation


# instance fields
.field public constraintType:I

.field public permissionStr:I

.field public permissionType:I

.field public typeStr:[I

.field public validityStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    .line 116
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    .line 119
    iput v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->constraintType:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 124
    return-void

    .line 118
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
