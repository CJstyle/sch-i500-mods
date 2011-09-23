.class final Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field final synthetic this$0:Lcom/vzw/location/VzwGpsDeviceStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;[Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    .line 47
    iput-object p2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 48
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_1
    return v0

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 3

    .prologue
    .line 60
    :cond_0
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v0, v1

    .line 62
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsSatelliteStatus;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    return-object v0

    .line 66
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->next()Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
