.class final Lcom/vzw/location/VzwLocation$1;
.super Ljava/lang/Object;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocation;
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
        "Lcom/vzw/location/VzwLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;
    .locals 1
    .parameter

    .prologue
    .line 25
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    .line 26
    new-instance v0, Lcom/vzw/location/VzwLocation;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/location/Location;)V

    .line 27
    invoke-static {v0, p1}, Lcom/vzw/location/VzwLocation;->access$000(Lcom/vzw/location/VzwLocation;Landroid/os/Parcel;)V

    .line 28
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwLocation;
    .locals 1
    .parameter

    .prologue
    .line 32
    new-array v0, p1, [Lcom/vzw/location/VzwLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->newArray(I)[Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method
