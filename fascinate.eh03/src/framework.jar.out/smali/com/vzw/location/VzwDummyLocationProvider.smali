.class Lcom/vzw/location/VzwDummyLocationProvider;
.super Landroid/location/LocationProvider;
.source "VzwDummyLocationProvider.java"


# instance fields
.field mAccuracy:I

.field mHasMonetaryCost:Z

.field mName:Ljava/lang/String;

.field mPowerRequirement:I

.field mRequiresCell:Z

.field mRequiresNetwork:Z

.field mRequiresSatellite:Z

.field mSupportsAltitude:Z

.field mSupportsBearing:Z

.field mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mAccuracy:I

    .line 69
    return-void
.end method

.method public setHasMonetaryCost(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mHasMonetaryCost:Z

    .line 49
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mPowerRequirement:I

    .line 65
    return-void
.end method

.method public setRequiresCell(Z)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresCell:Z

    .line 45
    return-void
.end method

.method public setRequiresNetwork(Z)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresNetwork:Z

    .line 37
    return-void
.end method

.method public setRequiresSatellite(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresSatellite:Z

    .line 41
    return-void
.end method

.method public setSupportsAltitude(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsAltitude:Z

    .line 53
    return-void
.end method

.method public setSupportsBearing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsBearing:Z

    .line 61
    return-void
.end method

.method public setSupportsSpeed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsSpeed:Z

    .line 57
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsSpeed:Z

    return v0
.end method
