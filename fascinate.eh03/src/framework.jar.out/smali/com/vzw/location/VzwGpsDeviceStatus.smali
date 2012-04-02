.class public Lcom/vzw/location/VzwGpsDeviceStatus;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final HW_STATE_IDLE:I = 0x2

.field public static final HW_STATE_ON:I = 0x1

.field public static final HW_STATE_UNKNOWN:I = 0x0

.field private static final NUM_SATELLITES:I = 0xff

.field public static final VALID_ALM_SV_MASK:I = 0x4

.field public static final VALID_DEV_ERROR:I = 0x20

.field public static final VALID_EPH_SV_MASK:I = 0x2

.field public static final VALID_HW_STATE:I = 0x1

.field public static final VALID_SAT_IN_VIEW_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final VALID_SAT_IN_VIEW_PRN:I = 0x8


# instance fields
.field private mGpsHardwareStatus:I

.field private final mMaxSatelliteCount:I

.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field private mValidFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$2;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus$2;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0xff

    new-array v0, v0, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 36
    const/16 v0, 0x30

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mMaxSatelliteCount:I

    .line 38
    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 39
    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    .line 74
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    move v0, v1

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v2, Lcom/vzw/location/VzwGpsSatelliteStatus;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>(I)V

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0xff

    new-array v0, v0, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 36
    const/16 v0, 0x30

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mMaxSatelliteCount:I

    .line 38
    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 39
    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    .line 74
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 87
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getHwState()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    return v0
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x30

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    check-cast v0, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 242
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    .line 211
    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    move v0, v2

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setValid(Z)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method public satellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method declared-synchronized set(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    .line 105
    iget v0, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 106
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setHwState(I)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    .line 219
    return-void
.end method

.method declared-synchronized setSatelliteStatus([I[F[I[I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 157
    const/16 v0, 0xff

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    :cond_0
    move v0, v7

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setValid(Z)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    array-length v0, p1

    move v1, v7

    .line 164
    :goto_1
    if-ge v1, v0, :cond_4

    .line 165
    aget v2, p1, v1

    move v3, v7

    .line 170
    :goto_2
    array-length v4, p4

    if-ge v3, v4, :cond_6

    .line 171
    aget v4, p4, v3

    if-ne v4, v2, :cond_2

    move v3, v8

    :goto_3
    move v4, v7

    .line 176
    :goto_4
    array-length v5, p3

    if-ge v4, v5, :cond_5

    .line 177
    aget v5, p3, v4

    if-ne v5, v2, :cond_3

    move v4, v8

    .line 183
    :goto_5
    iget-object v5, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v5, v2

    .line 184
    aget v5, p2, v1

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setStatus(FZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 190
    :cond_4
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v4, v7

    goto :goto_5

    :cond_6
    move v3, v7

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VzwGpsDeviceStatus, mGpsHardwareStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMaxSatelliteCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValidFields"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mGpsHardwareStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 235
    return-void
.end method
