.class final Lcom/vzw/location/VzwGpsSatelliteStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsSatelliteStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsSatelliteStatus;
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
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-array v0, p1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;->newArray(I)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method