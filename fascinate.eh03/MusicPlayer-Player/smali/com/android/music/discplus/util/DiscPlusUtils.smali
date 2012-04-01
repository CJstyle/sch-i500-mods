.class public Lcom/android/music/discplus/util/DiscPlusUtils;
.super Ljava/lang/Object;
.source "DiscPlusUtils.java"


# static fields
.field private static final SEC_GENRES_RSRCID:[I

.field private static final SEC_GENRES_STR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static mBlendMask:Landroid/graphics/drawable/Drawable;

.field public static mDefaultImage:[Landroid/graphics/Bitmap;

.field public static mDefaultImageResId:[I

.field public static mDiscEffect:Landroid/graphics/drawable/Drawable;

.field private static final mGenreRsrcIdMap:Ljava/util/HashMap;
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

.field public static mJacketMask:Landroid/graphics/drawable/Drawable;

.field private static mOverlayCanvas:Landroid/graphics/Canvas;

.field private static mRect:Landroid/graphics/Rect;

.field public static mScaleBitmap:Landroid/graphics/Bitmap;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x1b

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-class v0, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    .line 32
    new-array v0, v4, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->mGenreRsrcIdMap:Ljava/util/HashMap;

    .line 35
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImageResId:[I

    .line 43
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const-string v1, "Blues"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Children\'s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const-string v1, "Country"

    aput-object v1, v0, v5

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

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "World"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->SEC_GENRES_STR:[Ljava/lang/String;

    .line 73
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->SEC_GENRES_RSRCID:[I

    .line 103
    sput-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 104
    sput-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mJacketMask:Landroid/graphics/drawable/Drawable;

    .line 105
    sput-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mDiscEffect:Landroid/graphics/drawable/Drawable;

    .line 106
    sput-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mBlendMask:Landroid/graphics/drawable/Drawable;

    .line 108
    sput-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 109
    sput-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-void

    .line 35
    :array_0
    .array-data 0x4
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 73
    :array_1
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtwork(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 173
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, sArtworkUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, res:Landroid/content/ContentResolver;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 176
    .local v2, uri:Landroid/net/Uri;
    const/4 p0, 0x0

    .line 178
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 179
    const/4 p1, 0x0

    .line 181
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string p2, "r"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 182
    const/4 v1, 0x1

    .line 184
    .local v1, sampleSize:I
    sget-object p2, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 185
    .end local v0           #res:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    const/4 v0, 0x0

    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 187
    sget-object p2, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 188
    .local v0, nextWidth:I
    sget-object p2, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 189
    .local p2, nextHeight:I
    :goto_0
    if-le v0, p3, :cond_0

    if-le p2, p4, :cond_0

    .line 190
    shl-int/lit8 v1, v1, 0x1

    .line 191
    shr-int/lit8 v0, v0, 0x1

    .line 192
    shr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    sget-object p3, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .end local p3
    iput v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    sget-object p3, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 197
    sget-object p3, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 198
    sget-object p2, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .end local p2           #nextHeight:I
    const/4 p3, 0x0

    iput-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    const/4 p3, 0x0

    sget-object p4, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    .line 207
    if-eqz p1, :cond_1

    .line 208
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 215
    .end local v0           #nextWidth:I
    .end local v1           #sampleSize:I
    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-object p0

    .line 201
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p2, fd:Landroid/os/ParcelFileDescriptor;
    move-object p1, v4

    .line 202
    .local p1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object p1, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    .end local p1           #e:Ljava/io/FileNotFoundException;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FileNotFoundException getArtwork:uri:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    if-eqz p2, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 209
    :catch_1
    move-exception p1

    goto :goto_1

    .line 203
    .end local p2           #fd:Landroid/os/ParcelFileDescriptor;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p2       #fd:Landroid/os/ParcelFileDescriptor;
    move-object p1, v4

    .line 204
    .local p1, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    sget-object p1, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    .end local p1           #e:Ljava/lang/OutOfMemoryError;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "OutOfMemoryError getArtwork:uri:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    if-eqz p2, :cond_1

    .line 208
    :try_start_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 209
    :catch_3
    move-exception p1

    goto :goto_1

    .line 206
    .end local p2           #fd:Landroid/os/ParcelFileDescriptor;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception p0

    move-object v4, p0

    move-object p0, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    move-object p1, v4

    .line 207
    :goto_2
    if-eqz p0, :cond_2

    .line 208
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 210
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_3
    throw p1

    .line 209
    .restart local v0       #nextWidth:I
    .restart local v1       #sampleSize:I
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception p1

    goto :goto_1

    .end local v0           #nextWidth:I
    .end local v1           #sampleSize:I
    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :catch_5
    move-exception p0

    goto :goto_3

    .line 206
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    .end local p2           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_2
.end method

.method public static getArtwork2(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 220
    .local v5, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 222
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_2

    .line 223
    const/4 v2, 0x0

    .line 226
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v7, "r"

    invoke-virtual {v5, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 227
    const/4 v6, 0x1

    .line 229
    .local v6, sampleSize:I
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 230
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 232
    .local v4, nextWidth:I
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 233
    .local v3, nextHeight:I
    :goto_0
    if-gt v4, p2, :cond_0

    if-le v3, p3, :cond_1

    .line 234
    :cond_0
    shl-int/lit8 v6, v6, 0x1

    .line 235
    shr-int/lit8 v4, v4, 0x1

    .line 236
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_1
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 240
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 241
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 242
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 243
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 250
    if-eqz v2, :cond_2

    .line 251
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 257
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :cond_2
    :goto_1
    return-object v0

    .line 244
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 245
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException getArtwork:uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    if-eqz v2, :cond_2

    .line 251
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 252
    :catch_1
    move-exception v7

    goto :goto_1

    .line 246
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 247
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    sget-object v7, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError getArtwork:uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    if-eqz v2, :cond_2

    .line 251
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 252
    :catch_3
    move-exception v7

    goto :goto_1

    .line 249
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 250
    if-eqz v2, :cond_3

    .line 251
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 253
    :cond_3
    :goto_2
    throw v7

    .line 252
    .restart local v3       #nextHeight:I
    .restart local v4       #nextWidth:I
    .restart local v6       #sampleSize:I
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :catch_5
    move-exception v8

    goto :goto_2
.end method

.method public static getBlendImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 347
    :try_start_0
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 348
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mBlendMask:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-object v1

    .line 350
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefaultPlaylistRsrcID(I)I
    .locals 1
    .parameter "listType"

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, rsrcID:I
    packed-switch p0, :pswitch_data_0

    .line 402
    const v0, 0x7f02000e

    .line 405
    :goto_0
    return v0

    .line 390
    :pswitch_0
    const v0, 0x7f020010

    .line 391
    goto :goto_0

    .line 393
    :pswitch_1
    const v0, 0x7f02000c

    .line 394
    goto :goto_0

    .line 396
    :pswitch_2
    const v0, 0x7f020014

    .line 397
    goto :goto_0

    .line 399
    :pswitch_3
    const v0, 0x7f020012

    .line 400
    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDiscImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "image"
    .parameter "isDefault"

    .prologue
    .line 312
    if-eqz p1, :cond_1

    .line 314
    :try_start_0
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 316
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 317
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    if-nez p2, :cond_0

    .line 319
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mJacketMask:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mDiscEffect:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    :cond_0
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-object v1

    .line 323
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 324
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDiscNoitem(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"

    .prologue
    .line 332
    :try_start_0
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 336
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    const/4 v0, 0x0

    .line 338
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 339
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 340
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getGenreThumbnailRsrcID(Ljava/lang/String;)I
    .locals 2
    .parameter "strGenre"

    .prologue
    .line 112
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mGenreRsrcIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcom/android/music/discplus/util/DiscPlusUtils;->initGenreHashMap()V

    .line 116
    :cond_0
    const/4 v0, -0x1

    .line 117
    .local v0, iThumbID:I
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mGenreRsrcIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mGenreRsrcIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    :cond_1
    return v0
.end method

.method public static getRes(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 261
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 262
    .local v3, resId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 263
    .local v2, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 265
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x1

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 266
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    const/4 v4, 0x0

    sget-object v5, Lcom/android/music/discplus/util/DiscPlusUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v4, v0

    .line 278
    :goto_1
    return-object v4

    .line 268
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 269
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutOfMemoryError"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object v4, v7

    .line 275
    goto :goto_1

    .line 272
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 273
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    :goto_3
    throw v4

    .line 274
    :catch_1
    move-exception v4

    goto :goto_0

    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method public static getResourceId(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 380
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImageResId:[I

    array-length v0, v1

    .line 381
    .local v0, idSize:I
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImageResId:[I

    rem-int v2, p0, v0

    aget v1, v1, v2

    return v1
.end method

.method public static getTopImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"

    .prologue
    .line 358
    :try_start_0
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 361
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 362
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    .local v0, dCycle:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 367
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 369
    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 370
    const/4 v1, 0x0

    .line 371
    const/4 v0, 0x0

    .line 372
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v0           #dCycle:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 373
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 374
    .local v2, e:Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static initGenreHashMap()V
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->SEC_GENRES_STR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 126
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusUtils;->mGenreRsrcIdMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/music/discplus/util/DiscPlusUtils;->SEC_GENRES_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/music/discplus/util/DiscPlusUtils;->SEC_GENRES_RSRCID:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public static setDefaultImage(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 131
    sget v3, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    .line 132
    .local v3, w:I
    sget v0, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    .line 134
    .local v0, h:I
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Canvas;

    sget-object v5, Lcom/android/music/discplus/util/DiscPlusUtils;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 136
    :cond_1
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    .line 138
    :cond_2
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mJacketMask:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mJacketMask:Landroid/graphics/drawable/Drawable;

    .line 140
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mJacketMask:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 141
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mJacketMask:Landroid/graphics/drawable/Drawable;

    const/high16 v5, -0x100

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 144
    :cond_3
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDiscEffect:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDiscEffect:Landroid/graphics/drawable/Drawable;

    .line 146
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDiscEffect:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 149
    :cond_4
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mBlendMask:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mBlendMask:Landroid/graphics/drawable/Drawable;

    .line 151
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mBlendMask:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/android/music/discplus/util/DiscPlusUtils;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 155
    :cond_5
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImageResId:[I

    array-length v2, v4

    .line 156
    .local v2, size:I
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-eq v4, v2, :cond_8

    .line 157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 158
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    if-eqz v4, :cond_6

    .line 159
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    :cond_6
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_7
    new-array v4, v2, [Landroid/graphics/Bitmap;

    sput-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    .line 165
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    .line 166
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImage:[Landroid/graphics/Bitmap;

    sget-object v5, Lcom/android/music/discplus/util/DiscPlusUtils;->mDefaultImageResId:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/music/discplus/util/DiscPlusUtils;->getRes(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v1           #i:I
    :cond_8
    return-void
.end method
