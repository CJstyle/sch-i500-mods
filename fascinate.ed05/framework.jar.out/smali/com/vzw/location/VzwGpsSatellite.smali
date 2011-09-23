.class public final Lcom/vzw/location/VzwGpsSatellite;
.super Ljava/lang/Object;
.source "VzwGpsSatellite.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAzimuth:F

.field private mElevation:F

.field private mPrn:I

.field private mSnr:F

.field private mUsedInFix:Z

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/vzw/location/VzwGpsSatellite$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsSatellite$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsSatellite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    .line 33
    return-void
.end method

.method constructor <init>(IFFFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    .line 55
    iput p2, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 56
    iput p3, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 57
    iput p4, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 59
    iput-boolean p5, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsSatellite;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 192
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 195
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwGpsSatellite;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 197
    :goto_0
    return v0

    .line 196
    :cond_1
    check-cast p1, Lcom/vzw/location/VzwGpsSatellite;

    .line 197
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAzimuth()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    return v0
.end method

.method public isUsedInFix()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    return v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    return v0
.end method

.method setAzimuth(F)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 108
    return-void
.end method

.method setElevation(F)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 100
    return-void
.end method

.method setPrn(I)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    .line 84
    return-void
.end method

.method setSnr(F)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 92
    return-void
.end method

.method setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_0
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    .line 118
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 119
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 120
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 121
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 122
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 123
    return-void
.end method

.method setUsedInFix(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 76
    return-void
.end method

.method setValid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VzwGpsSatellite, mValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mElevation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAzimuth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsedInFix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 181
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 182
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
