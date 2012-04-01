.class public Lcom/sec/android/app/videoplayer/util/ListType;
.super Ljava/lang/Object;
.source "ListType.java"


# static fields
.field private static cols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "resume_pos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/videoplayer/util/ListType;->cols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/app/videoplayer/util/ListType;->cols:[Ljava/lang/String;

    return-object v0
.end method

.method public static getViewColums(I)[Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, viewColumns:[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 63
    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 52
    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    .line 53
    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 54
    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    .line 55
    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 56
    const/4 v1, 0x4

    const-string v2, "resume_pos"

    aput-object v2, v0, v1

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
