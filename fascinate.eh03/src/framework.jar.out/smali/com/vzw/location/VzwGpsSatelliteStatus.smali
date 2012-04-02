.class public final Lcom/vzw/location/VzwGpsSatelliteStatus;
.super Ljava/lang/Object;
.source "VzwGpsSatelliteStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCnr:F

.field private mHasAlmanac:Z

.field private mHasEphemeris:Z

.field private mPrn:I

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/vzw/location/VzwGpsSatelliteStatus$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 24
    iput v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 25
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 26
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 30
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 24
    iput v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 25
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 26
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 33
    iput p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 34
    return-void
.end method

.method constructor <init>(IFZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 24
    iput v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 25
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 26
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 67
    iput p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 68
    iput-boolean p3, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 69
    iput-boolean p4, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 70
    iput p2, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 24
    iput v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 25
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 26
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 24
    iput v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 25
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 26
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 45
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->getCnr()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 46
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->getPrn()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 47
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->hasAlmanac()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 48
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->hasEphemeris()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 49
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->isValid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 50
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 169
    return-void

    :cond_0
    move v0, v3

    .line 166
    goto :goto_0

    :cond_1
    move v0, v3

    .line 167
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 173
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 175
    :goto_0
    return v0

    .line 174
    :cond_1
    check-cast p1, Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 175
    iget v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    iget v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    iget v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getCnr()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    return v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    return v0
.end method

.method setStatus(FZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 122
    iput-boolean p2, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 123
    iput-boolean p3, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 124
    iput-boolean p4, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 125
    return-void
.end method

.method setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 138
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 139
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 140
    iget v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 141
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 142
    return-void
.end method

.method setValid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VzwGpsSatellite, mValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasAlmanac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasEphemeris: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 162
    return-void

    :cond_0
    move v0, v1

    .line 159
    goto :goto_0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_1
.end method
