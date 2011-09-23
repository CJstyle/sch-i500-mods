.class public Lcom/sec/android/inputmethod/axt9/AxT9Config;
.super Ljava/lang/Object;
.source "AxT9Config.java"


# static fields
.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Config;

.field public static final PRODUCT_GALAXY_SPICA:Z

.field public static final PRODUCT_HOUDINI:Z

.field public static final PRODUCT_ORION:Z

.field public static final PRODUCT_SPICA:Z

.field public static final PRODUCT_UNKNOWN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "galaxy_s"

    .line 49
    const-string v0, "galaxy_s"

    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_UNKNOWN:Z

    .line 50
    const-string v0, "galaxy_s"

    const-string v0, "houdini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "galaxy_s"

    const-string v0, "SGH-T939"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_HOUDINI:Z

    .line 52
    const-string v0, "galaxy_s"

    const-string v0, "spica"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_SPICA:Z

    .line 53
    const-string v0, "galaxy_s"

    const-string v0, "orion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "galaxy_s"

    const-string v0, "GT-I7500"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_ORION:Z

    .line 55
    const-string v0, "galaxy_s"

    const-string v0, "sec_spica"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_GALAXY_SPICA:Z

    .line 68
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Config;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Config;

    return-void

    :cond_2
    move v0, v2

    .line 50
    goto :goto_0

    :cond_3
    move v0, v2

    .line 53
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Config;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Config;

    return-object v0
.end method
