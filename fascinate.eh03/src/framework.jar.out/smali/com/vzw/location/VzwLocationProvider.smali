.class public abstract Lcom/vzw/location/VzwLocationProvider;
.super Ljava/lang/Object;
.source "VzwLocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains an illegal character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwLocationProvider;->mName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public abstract getAccuracy()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPowerRequirement()I
.end method

.method public abstract hasMonetaryCost()Z
.end method

.method public meetsCriteria(Lcom/vzw/location/VzwCriteria;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAccuracy()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAccuracy()I

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationProvider;->getAccuracy()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v2

    .line 80
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPowerRequirement()I

    move-result v0

    .line 67
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationProvider;->getPowerRequirement()I

    move-result v1

    if-ge v0, v1, :cond_1

    move v0, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->isAltitudeRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationProvider;->supportsAltitude()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->isSpeedRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationProvider;->supportsSpeed()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->isBearingRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationProvider;->supportsBearing()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract requiresCell()Z
.end method

.method public abstract requiresNetwork()Z
.end method

.method public abstract requiresSatellite()Z
.end method

.method public abstract supportsAltitude()Z
.end method

.method public abstract supportsBearing()Z
.end method

.method public abstract supportsSpeed()Z
.end method
