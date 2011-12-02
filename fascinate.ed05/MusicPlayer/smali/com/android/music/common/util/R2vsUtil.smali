.class public Lcom/android/music/common/util/R2vsUtil;
.super Ljava/lang/Object;
.source "R2vsUtil.java"


# static fields
.field private static ID3_GENRES:[Ljava/lang/String; = null

.field private static ID3_TO_DEFINED_EQ:[I = null

.field public static final R2VS_EFFECT_NORMAL:I = 0x1000

.field public static final R2VS_MODE_AUTO:I = 0x0

.field public static final R2VS_MODE_BASS_ENHANCEMENT:I = 0x8000

.field public static final R2VS_MODE_CLASSIC:I = 0x10

.field public static final R2VS_MODE_CONCERT_HALL:I = 0x2000

.field public static final R2VS_MODE_DANCE:I = 0x80

.field public static final R2VS_MODE_EXTERNALIZATION:I = 0x20000

.field public static final R2VS_MODE_JAZZ:I = 0x4

.field public static final R2VS_MODE_LIVE:I = 0x8

.field public static final R2VS_MODE_MUSIC_CLARITY:I = 0x10000

.field public static final R2VS_MODE_NORMAL:I = 0x1

.field public static final R2VS_MODE_POP:I = 0x100

.field public static final R2VS_MODE_ROCK:I = 0x2

.field public static final R2VS_MODE_SPECTRUM_EQUALIZER:I = 0x800000

.field public static final R2VS_MODE_SPECTRUM_EQUALIZER_OFF:I = 0x1000000

.field public static final R2VS_MODE_USER_EQUALIZER:I = 0x800

.field public static final R2VS_MODE_WIDE:I = 0x80000

.field public static final SRS_CS_HEADPHONE_ENABLE:I = 0x200000

.field public static final SRS_CS_HEADPHONE_OFF:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "Music_R2vsUtil"

.field public static autoeq_genre:I

.field public static final mGenreEqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static r2vs_mode_array:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/common/util/R2vsUtil;->mGenreEqMap:Ljava/util/HashMap;

    .line 41
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    .line 42
    sput v3, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    .line 130
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const-string v1, "Blues"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Children\'s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const-string v1, "ComedySpoken"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Holiday"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "World"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/common/util/R2vsUtil;->ID3_GENRES:[Ljava/lang/String;

    .line 160
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/music/common/util/R2vsUtil;->ID3_TO_DEFINED_EQ:[I

    return-void

    .line 41
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 160
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getEqDefined(Ljava/lang/String;)I
    .locals 6
    .parameter "strGenre"

    .prologue
    .line 113
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->mGenreEqMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {}, Lcom/android/music/common/util/R2vsUtil;->initGenreHashMap()V

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 120
    .local v0, r2vsMode:I
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->mGenreEqMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->mGenreEqMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    :cond_1
    const-string v1, "Music_R2vsUtil"

    const-string v2, "getEqDefined : Genre[%s] return r2VsMode[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0
.end method

.method public static getR2vsBTSum()I
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, ","

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, sum:I
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v6

    const v3, 0x8000

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v6

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 69
    :cond_0
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v5

    if-nez v2, :cond_2

    sget v2, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    move v1, v2

    .line 70
    :goto_0
    const v2, 0x401000

    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 77
    :cond_1
    const-string v2, "Music_R2vsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getR2vsBTSum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", R2vsSum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 69
    :cond_2
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v5

    move v1, v2

    goto :goto_0

    .line 72
    :cond_3
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v5

    if-nez v2, :cond_4

    sget v2, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    move v1, v2

    .line 74
    :goto_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 75
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    .end local v0           #i:I
    :cond_4
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v5

    move v1, v2

    goto :goto_1
.end method

.method public static getR2vsSum()I
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v8, ","

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, sum:I
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v6

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 52
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v6

    add-int/lit16 v2, v2, 0x1001

    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v3, v3, v7

    add-int v1, v2, v3

    .line 59
    :cond_0
    const-string v2, "Music_R2vsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getR2vsSum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", R2vsSum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v1

    .line 54
    :cond_1
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v5

    if-nez v2, :cond_2

    sget v2, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    move v1, v2

    .line 56
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 57
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    .end local v0           #i:I
    :cond_2
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v5

    move v1, v2

    goto :goto_0
.end method

.method private static initGenreHashMap()V
    .locals 4

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->mGenreEqMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->ID3_TO_DEFINED_EQ:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method
