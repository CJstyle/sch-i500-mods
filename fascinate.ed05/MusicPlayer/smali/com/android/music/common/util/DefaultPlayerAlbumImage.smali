.class public Lcom/android/music/common/util/DefaultPlayerAlbumImage;
.super Ljava/lang/Object;
.source "DefaultPlayerAlbumImage.java"


# static fields
.field private static final BIG_IMAGE:I = 0x1

.field private static final SMALL_IMAGE:I

.field private static mRand:Ljava/lang/Integer;

.field private static res:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->mRand:Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->res:[[I

    return-void

    :array_0
    .array-data 0x4
        0x11t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBigResourceId(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 53
    sget-object v0, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->res:[[I

    invoke-static {p0}, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->getRandIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private static getRandIndex(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 62
    sget-object v0, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->mRand:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->res:[[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method public static getResourceId(ZLjava/lang/Integer;)I
    .locals 4
    .parameter "isBigImage"
    .parameter "id"

    .prologue
    .line 31
    sget-object v2, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->mRand:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 32
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 33
    .local v1, random:Ljava/util/Random;
    sget-object v2, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->res:[[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->mRand:Ljava/lang/Integer;

    .line 37
    .end local v1           #random:Ljava/util/Random;
    :cond_0
    if-nez p1, :cond_1

    .line 38
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 39
    .restart local v1       #random:Ljava/util/Random;
    sget-object v2, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->res:[[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 45
    .end local v1           #random:Ljava/util/Random;
    .local v0, mediaId:I
    :goto_0
    if-eqz p0, :cond_2

    .line 46
    invoke-static {v0}, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->getBigResourceId(I)I

    move-result v2

    .line 48
    :goto_1
    return v2

    .line 42
    .end local v0           #mediaId:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #mediaId:I
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v0}, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->smallBigResourceId(I)I

    move-result v2

    goto :goto_1
.end method

.method private static smallBigResourceId(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 58
    sget-object v0, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->res:[[I

    invoke-static {p0}, Lcom/android/music/common/util/DefaultPlayerAlbumImage;->getRandIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
