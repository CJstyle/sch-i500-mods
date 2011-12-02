.class public Lcom/android/music/common/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# static fields
.field public static final CONTENT_DRM:I = 0x8

.field public static final CONTENT_EXTERNAL:I = 0x2

.field public static final CONTENT_FILE_EXTERNAL:I = 0x4

.field public static final CONTENT_FILE_INTERNAL:I = 0x3

.field public static final CONTENT_GMAIL:I = 0x9

.field public static final CONTENT_INTERNAL:I = 0x1

.field public static final CONTENT_UNKNOWN:I = -0x1

.field private static final PREFIX_DRM:Ljava/lang/String; = "content://drm"

.field private static final PREFIX_EXTERNAL:Ljava/lang/String; = "content://media/external"

.field private static final PREFIX_FILE:Ljava/lang/String; = "file:///"

.field private static final PREFIX_FILE_EXTERNAL:Ljava/lang/String; = "file:///sdcard"

.field private static final PREFIX_INTERNAL:Ljava/lang/String; = "content://media/internal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsUsedMediaProvider(Ljava/lang/String;)Z
    .locals 4
    .parameter "contentUri"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, bResult:Z
    if-nez p0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    const-string v1, "UriUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsUsedMediaProvider() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v0

    .line 71
    :cond_1
    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "content://media/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getType(Landroid/net/Uri;)I
    .locals 3
    .parameter "uri"

    .prologue
    .line 38
    const/4 v1, -0x1

    .line 41
    .local v1, type:I
    if-nez p0, :cond_0

    .line 42
    const/4 v2, -0x1

    .line 63
    :goto_0
    return v2

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, strUri:Ljava/lang/String;
    const-string v2, "content://media/internal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 63
    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "content://media/external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    const/4 v1, 0x2

    goto :goto_1

    .line 51
    :cond_3
    const-string v2, "file:///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52
    const-string v2, "file:///sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    const/4 v1, 0x4

    goto :goto_1

    .line 55
    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    .line 57
    :cond_5
    const-string v2, "content://drm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/16 v1, 0x8

    goto :goto_1
.end method
