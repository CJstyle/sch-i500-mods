.class public Lcom/android/browser/UtilsSec;
.super Ljava/lang/Object;
.source "UtilsSec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 45
    :goto_0
    return-object v1

    .line 37
    :cond_0
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, index:I
    const-string v1, "/"

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 41
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v1, p0

    .line 45
    goto :goto_0
.end method

.method static getUrlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 55
    if-nez p0, :cond_0

    move-object v1, v3

    .line 73
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, index:I
    if-eq v2, v0, :cond_1

    .line 61
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 64
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 65
    if-ne v2, v0, :cond_2

    .line 66
    const-string v1, "UtilsSec"

    const-string v2, "url does not have path."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    .line 73
    goto :goto_0
.end method
