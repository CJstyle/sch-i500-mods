.class public Lcom/android/music/common/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


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

.method public static getAudioIdFromContentUri(Ljava/lang/String;)I
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    const-string v7, "UriUtil"

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, id:I
    if-eqz p0, :cond_0

    const-string v3, "content://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    :cond_0
    const-string v3, "UriUtil"

    const-string v3, "getAudioIdFromUri(null) is called"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 93
    .end local v0           #id:I
    .local v1, id:I
    :goto_0
    return v1

    .line 87
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, lastIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-ge v2, v3, :cond_2

    .line 89
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    :cond_2
    const-string v3, "UriUtil"

    const-string v3, "getAudioIdFromUri(uri=%s) :id=[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 93
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0
.end method
