.class final Lcom/vzw/location/VzwGpsSatellite$1;
.super Ljava/lang/Object;
.source "VzwGpsSatellite.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsSatellite;
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
        "Lcom/vzw/location/VzwGpsSatellite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatellite;
    .locals 1
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/vzw/location/VzwGpsSatellite;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwGpsSatellite;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatellite$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsSatellite;
    .locals 1
    .parameter

    .prologue
    .line 48
    new-array v0, p1, [Lcom/vzw/location/VzwGpsSatellite;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatellite$1;->newArray(I)[Lcom/vzw/location/VzwGpsSatellite;

    move-result-object v0

    return-object v0
.end method
