.class Lcom/vzw/location/VzwCriteria$1;
.super Ljava/lang/Object;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwCriteria;
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
        "Lcom/vzw/location/VzwCriteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;
    .locals 1
    .parameter

    .prologue
    .line 25
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Criteria;

    .line 26
    new-instance v0, Lcom/vzw/location/VzwCriteria;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/location/Criteria;)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwCriteria;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwCriteria;
    .locals 1
    .parameter

    .prologue
    .line 32
    new-array v0, p1, [Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->newArray(I)[Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method
