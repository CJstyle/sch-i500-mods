.class Landroid/content/res/Configuration$1;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/Configuration;
    .locals 2
    .parameter "source"

    .prologue
    .line 597
    new-instance v0, Landroid/content/res/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/Configuration;
    .locals 1
    .parameter "size"

    .prologue
    .line 601
    new-array v0, p1, [Landroid/content/res/Configuration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration$1;->newArray(I)[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method
