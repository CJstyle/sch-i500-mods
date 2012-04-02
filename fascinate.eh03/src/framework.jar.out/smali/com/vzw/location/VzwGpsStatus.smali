.class public Lcom/vzw/location/VzwGpsStatus;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsStatus$Listener;,
        Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_AGPS_AUTH_DNS_FAIL:I = 0x6

.field public static final GPS_EVENT_AGPS_AUTH_EXPIRED:I = 0x5

.field public static final GPS_EVENT_AGPS_AUTH_FAIL:I = 0x3

.field public static final GPS_EVENT_AGPS_AUTH_PASS:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE:I = 0x4

.field public static final GPS_EVENT_DEVICE_STATUS:I = 0x19

.field public static final GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED:I = 0x1

.field public static final GPS_EVENT_FIRST_FIX:I = 0xa

.field public static final GPS_EVENT_FIX_REQUESTED:I = 0xc

.field public static final GPS_EVENT_FIX_REQ_FAIL:I = 0xb

.field public static final GPS_EVENT_GENERAL_AGPS_FAILURE:I = 0xd

.field public static final GPS_EVENT_GENERAL_FAILURE:I = 0xe

.field public static final GPS_EVENT_INIT_CONFIG_NOT_PROVIDED:I = 0xf

.field public static final GPS_EVENT_INIT_FAIL:I = 0x7

.field public static final GPS_EVENT_INIT_IN_PROGRESS:I = 0x65

.field public static final GPS_EVENT_INIT_PASS:I = 0x8

.field public static final GPS_EVENT_LOCATION_AVAILABLE:I = 0x9

.field public static final GPS_EVENT_LOCATION_REQUEST_TIMEDOUT:I = 0x10

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x11

.field public static final GPS_EVENT_SECURITY_FAILED:I = 0x12

.field public static final GPS_EVENT_SET_FIX_MODE_FAIL:I = 0x13

.field public static final GPS_EVENT_SET_FIX_RATE_FAIL:I = 0x14

.field public static final GPS_EVENT_SET_GPS_PERFORMANCE_FAIL:I = 0x15

.field public static final GPS_EVENT_SET_PDE_FAIL:I = 0x16

.field public static final GPS_EVENT_SMS_REGISTER_FAILED:I = 0x1a

.field public static final GPS_EVENT_STARTED:I = 0x17

.field public static final GPS_EVENT_STOPPED:I = 0x18

.field public static final GPS_EVENT_TRACKING_SESSION_TIMEDOUT:I = 0x131

.field private static final NUM_SATELLITES:I = 0xff

.field public static final TAG:Ljava/lang/String; = "VzwGpsStatus"


# instance fields
.field private final mMaxSatelliteCount:I

.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatellite;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0xff

    new-array v0, v0, [Lcom/vzw/location/VzwGpsSatellite;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    .line 62
    const/16 v0, 0x30

    iput v0, p0, Lcom/vzw/location/VzwGpsStatus;->mMaxSatelliteCount:I

    .line 97
    new-instance v0, Lcom/vzw/location/VzwGpsStatus$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwGpsStatus$1;-><init>(Lcom/vzw/location/VzwGpsStatus;)V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 104
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    new-instance v2, Lcom/vzw/location/VzwGpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsStatus;)[Lcom/vzw/location/VzwGpsSatellite;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    return-object v0
.end method


# virtual methods
.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x30

    return v0
.end method

.method public getSatellitesInView()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method declared-synchronized setStatus(Lcom/vzw/location/VzwGpsStatus;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setStatus([I[F[F[F[I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    monitor-enter p0

    move v0, v6

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setValid(Z)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    .line 152
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 153
    aget v1, p1, v0

    if-ge v1, v7, :cond_1

    .line 154
    const-string v1, "VzwGpsStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid PRN, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_1
    aget v1, p1, v0

    sub-int/2addr v1, v7

    .line 158
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v2, v1

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setValid(Z)V

    .line 161
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setSnr(F)V

    .line 162
    aget v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setElevation(F)V

    .line 163
    aget v2, p4, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setAzimuth(F)V

    .line 166
    array-length v2, p5

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_4

    aget v4, p5, v3

    .line 167
    aget v5, p1, v0

    if-ne v4, v5, :cond_2

    move v2, v7

    .line 172
    :goto_4
    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setUsedInFix(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 174
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    move v2, v6

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "VzwGpsStatus, mMaxSatelliteCount: 48"

    return-object v0
.end method
