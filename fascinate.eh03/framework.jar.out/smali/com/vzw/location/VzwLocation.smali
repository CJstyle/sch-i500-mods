.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400


# instance fields
.field private altitudeWRTEllipsoid:F

.field private altitudeWRTSeaLevel:F

.field private fixMode:I

.field private horizontalConfidence:F

.field private horizontalDilutionOfPrecision:F

.field private magneticVariation:F

.field private majorAxis:F

.field private majorAxisAngle:F

.field private minorAxis:F

.field private positionDilutionOfPrecision:F

.field private validFields:I

.field private verticalDilutionOfPrecision:F

.field private verticalError:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->set(Landroid/location/Location;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwLocation;Landroid/os/Parcel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->verticalDilutionOfPrecision:F

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    .line 482
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 486
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwLocation;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 523
    :goto_0
    return v0

    .line 493
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v5

    goto :goto_0

    .line 495
    :cond_2
    check-cast p1, Lcom/vzw/location/VzwLocation;

    .line 498
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getAccuracy()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    .line 499
    :cond_3
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getAltitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    .line 500
    :cond_4
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getBearing()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_0

    .line 501
    :cond_5
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_0

    .line 502
    :cond_6
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_0

    .line 503
    :cond_7
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_0

    .line 504
    :cond_8
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v4

    goto :goto_0

    .line 505
    :cond_9
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getSpeed()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getSpeed()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    move v0, v4

    goto :goto_0

    .line 506
    :cond_a
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    move v0, v4

    goto/16 :goto_0

    .line 509
    :cond_b
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getAltitudeWrtEllipsoid()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getAltitudeWrtEllipsoid()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    move v0, v4

    goto/16 :goto_0

    .line 510
    :cond_c
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getAltitudeWrtSeaLevel()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getAltitudeWrtSeaLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    move v0, v4

    goto/16 :goto_0

    .line 511
    :cond_d
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getFixMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getFixMode()I

    move-result v1

    if-eq v0, v1, :cond_e

    move v0, v4

    goto/16 :goto_0

    .line 512
    :cond_e
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getHorizontalConfidence()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getHorizontalConfidence()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    move v0, v4

    goto/16 :goto_0

    .line 513
    :cond_f
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getHorizontalDilutionOfPrecision()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getHorizontalDilutionOfPrecision()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    move v0, v4

    goto/16 :goto_0

    .line 514
    :cond_10
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMagneticVariation()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getMagneticVariation()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    move v0, v4

    goto/16 :goto_0

    .line 515
    :cond_11
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMajorAxis()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getMajorAxis()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    move v0, v4

    goto/16 :goto_0

    .line 516
    :cond_12
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMajorAxisAngle()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getMajorAxisAngle()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    move v0, v4

    goto/16 :goto_0

    .line 517
    :cond_13
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMinorAxis()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getMinorAxis()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    move v0, v4

    goto/16 :goto_0

    .line 518
    :cond_14
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getPositionDilutionOfPrecision()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getPositionDilutionOfPrecision()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    move v0, v4

    goto/16 :goto_0

    .line 519
    :cond_15
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getValidFields()I

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getValidFields()I

    move-result v1

    if-eq v0, v1, :cond_16

    move v0, v4

    goto/16 :goto_0

    .line 520
    :cond_16
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getVerticalDilutionOfPrecision()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getVerticalDilutionOfPrecision()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    move v0, v4

    goto/16 :goto_0

    .line 521
    :cond_17
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getVerticalError()F

    move-result v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getVerticalError()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    move v0, v4

    goto/16 :goto_0

    :cond_18
    move v0, v5

    .line 523
    goto/16 :goto_0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    return v0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    return v0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    return v0
.end method

.method public getMajorAxis()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    return v0
.end method

.method public getMinorAxis()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/vzw/location/VzwLocation;->verticalDilutionOfPrecision:F

    return v0
.end method

.method public getVerticalError()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 398
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 399
    iput v1, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    .line 400
    iput v0, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    .line 401
    iput v0, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    .line 402
    iput v1, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    .line 403
    iput v0, p0, Lcom/vzw/location/VzwLocation;->verticalDilutionOfPrecision:F

    .line 404
    iput v0, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    .line 405
    iput v0, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    .line 406
    iput v0, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    .line 407
    iput v0, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    .line 408
    iput v0, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    .line 409
    iput v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    .line 410
    iput v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    .line 411
    iput v0, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    .line 412
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 379
    instance-of v0, p1, Lcom/vzw/location/VzwLocation;

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/vzw/location/VzwLocation;

    .line 381
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getValidFields()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    .line 382
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getHorizontalDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    .line 383
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getPositionDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    .line 384
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    .line 385
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getVerticalDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->verticalDilutionOfPrecision:F

    .line 386
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMajorAxis()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    .line 387
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMajorAxisAngle()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    .line 388
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMinorAxis()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    .line 389
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getVerticalError()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    .line 390
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getHorizontalConfidence()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    .line 391
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getAltitudeWrtSeaLevel()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    .line 392
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getAltitudeWrtEllipsoid()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    .line 393
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocation;->getMagneticVariation()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    .line 395
    :cond_0
    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput p1, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    .line 347
    return-void
.end method

.method public setAltitudeWrtSeaLevel(F)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput p1, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    .line 340
    return-void
.end method

.method public setFixMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput p1, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    .line 305
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput p1, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    .line 291
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput p1, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    .line 354
    return-void
.end method

.method public setMajorAxis(F)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput p1, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    .line 319
    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput p1, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    .line 326
    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput p1, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    .line 333
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput p1, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    .line 298
    return-void
.end method

.method public setPositionError(FFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iput p1, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    .line 367
    iput p2, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    .line 368
    iput p3, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    .line 369
    iput p4, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    .line 370
    iput p5, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    .line 371
    return-void
.end method

.method public setValidFields(I)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput p1, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    .line 284
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput p1, p0, Lcom/vzw/location/VzwLocation;->verticalDilutionOfPrecision:F

    .line 312
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwLocation ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", validFields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalDilutionOfPrecision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionDilutionOfPrecision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fixMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", majorAxis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", majorAxisAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minorAxis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticalError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalConfidence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitudeWRTSeaLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitudeWRTEllipsoid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magneticVariation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    .line 445
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    iget v0, p0, Lcom/vzw/location/VzwLocation;->validFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Lcom/vzw/location/VzwLocation;->horizontalDilutionOfPrecision:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 448
    iget v0, p0, Lcom/vzw/location/VzwLocation;->positionDilutionOfPrecision:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 449
    iget v0, p0, Lcom/vzw/location/VzwLocation;->fixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Lcom/vzw/location/VzwLocation;->verticalDilutionOfPrecision:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 451
    iget v0, p0, Lcom/vzw/location/VzwLocation;->majorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 452
    iget v0, p0, Lcom/vzw/location/VzwLocation;->majorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 453
    iget v0, p0, Lcom/vzw/location/VzwLocation;->minorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 454
    iget v0, p0, Lcom/vzw/location/VzwLocation;->verticalError:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 455
    iget v0, p0, Lcom/vzw/location/VzwLocation;->horizontalConfidence:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 456
    iget v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 457
    iget v0, p0, Lcom/vzw/location/VzwLocation;->altitudeWRTEllipsoid:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 458
    iget v0, p0, Lcom/vzw/location/VzwLocation;->magneticVariation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 459
    return-void
.end method
