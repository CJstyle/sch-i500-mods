.class Lcom/android/internal/location/GpsLocationProvider$HybridGps;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HybridGps"
.end annotation


# instance fields
.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

.field sensorManager:Landroid/hardware/SensorManager;

.field private final sensorOrientationListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1702
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    .line 1700
    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->windowManager:Landroid/view/WindowManager;

    .line 1958
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$1;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps$1;-><init>(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    .line 1992
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;-><init>(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 2041
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;-><init>(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    .line 1704
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/location/GpsLocationProvider$HybridGps;IDDDFFFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 1698
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsLocationChanged(IDDDFFFJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsRequestLocation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetAltitde()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetSpeed()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetBearing()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsGetAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsDeliverSvStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsRotationChanged()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsDeliverSensorData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsSensorRegister()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsSensorDeregister()V

    return-void
.end method

.method private hybridGpsDeliverSensorData()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v10, ")"

    const-string v8, "GpsLocationProvider"

    .line 1887
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4700(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$4800(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$4900(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$5000(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->access$5100(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->access$5200(Lcom/android/internal/location/GpsLocationProvider;[[F[[F[[F[J[J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4602(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1888
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LPP : mStarted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5300(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mStatus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mNavigating("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5500(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mEngineOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5600(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mFixCount("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5700(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), LastFixGap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$5800(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$5900(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4600(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4600(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1935
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LPP : Not Supported Mode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4600(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :goto_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4600(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5902(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2202(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1944
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2302(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1945
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2102(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1946
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2602(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1947
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2402(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1948
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2502(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1949
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$2802(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1950
    return-void

    .line 1893
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Not Ready"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1897
    :pswitch_1
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Keep GPS OFF"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1901
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v9}, Lcom/android/internal/location/GpsLocationProvider;->access$6002(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1902
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$5300(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    if-ne v0, v9, :cond_1

    .line 1903
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$5302(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1904
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$6100(Lcom/android/internal/location/GpsLocationProvider;)Z

    .line 1905
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$6200(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$6300(Lcom/android/internal/location/GpsLocationProvider;II)V

    .line 1906
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Turn GPS OFF"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1908
    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Already GPS Turned OFF"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1913
    :pswitch_3
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Keep GPS ON"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1917
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$5300(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1918
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$6002(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1919
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v9}, Lcom/android/internal/location/GpsLocationProvider;->access$5302(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1920
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$6402(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1921
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->access$5802(Lcom/android/internal/location/GpsLocationProvider;J)J

    .line 1922
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->access$6502(Lcom/android/internal/location/GpsLocationProvider;J)J

    .line 1923
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$6600(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-static {v0, v1, v7, v9}, Lcom/android/internal/location/GpsLocationProvider;->access$6700(Lcom/android/internal/location/GpsLocationProvider;IZI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v9}, Lcom/android/internal/location/GpsLocationProvider;->access$6002(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1925
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/internal/location/GpsLocationProvider;->access$5302(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1926
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : native_start failed in hybridGpsDeliverSensorData()"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Turn GPS ON"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1930
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v0, "LPP : Already GPS Turned ON"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1891
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private hybridGpsDeliverSvStatus()V
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$6800(Lcom/android/internal/location/GpsLocationProvider;)V

    .line 1956
    return-void
.end method

.method private hybridGpsGetAccuracy()F
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private hybridGpsGetAltitde()D
    .locals 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v0

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private hybridGpsGetBearing()F
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private hybridGpsGetLatitude()D
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private hybridGpsGetLongitude()D
    .locals 2

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private hybridGpsGetSpeed()F
    .locals 2

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private hybridGpsGetValid()I
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4400(Lcom/android/internal/location/GpsLocationProvider;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private hybridGpsLocationChanged(IDDDFFFJ)V
    .locals 14
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1781
    const/4 v3, 0x6

    new-array v6, v3, [I

    .line 1783
    .local v6, utcTime:[I
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hybridGpsLocationChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3600(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v3

    const/4 v4, 0x0

    aput-wide p2, v3, v4

    .line 1786
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3600(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v3

    const/4 v4, 0x1

    aput-wide p4, v3, v4

    .line 1787
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3600(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v3

    const/4 v4, 0x2

    aput-wide p6, v3, v4

    .line 1788
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3700(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v3

    const/4 v4, 0x0

    aput p9, v3, v4

    .line 1789
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3700(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x40666666

    mul-float v5, v5, p8

    aput v5, v3, v4

    .line 1790
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3700(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v3

    const/4 v4, 0x2

    aput p10, v3, v4

    .line 1794
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 1795
    .local v13, utcDate:Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 1796
    .local v11, tempTimeInMillis:J
    move-object v0, v13

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1797
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 1798
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v6, v3

    .line 1799
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 1800
    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 1801
    const/4 v3, 0x4

    const/16 v4, 0xc

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 1802
    const/4 v3, 0x5

    const/16 v4, 0xd

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 1806
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3800(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1807
    const/4 v9, 0x1

    .line 1814
    .local v9, isValid:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$3600(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->access$3700(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v10}, Lcom/android/internal/location/GpsLocationProvider;->access$3800(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v10

    invoke-static/range {v3 .. v10}, Lcom/android/internal/location/GpsLocationProvider;->access$3900(Lcom/android/internal/location/GpsLocationProvider;[D[F[IJII)V

    .line 1816
    return-void

    .line 1809
    .end local v9           #isValid:I
    :cond_0
    const/4 v9, 0x0

    .restart local v9       #isValid:I
    goto :goto_0
.end method

.method private hybridGpsRequestLocation()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "GpsLocationProvider"

    .line 1846
    const-string v0, "GpsLocationProvider"

    const-string v0, "hybridGpsRequestLocation"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$4400(Lcom/android/internal/location/GpsLocationProvider;)[I

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->access$4500(Lcom/android/internal/location/GpsLocationProvider;[D[F[I)V

    .line 1850
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hybridGpsRequestLocation lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v1

    aget-wide v1, v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v1

    aget-wide v1, v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D

    move-result-object v1

    aget-wide v1, v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v1

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4400(Lcom/android/internal/location/GpsLocationProvider;)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F

    move-result-object v0

    aget v1, v0, v5

    const v2, 0x3e8e38e4

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 1855
    return-void
.end method

.method private hybridGpsRotationChanged()V
    .locals 4

    .prologue
    .line 1820
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1823
    .local v0, nRotation:I
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hybridGpsRotationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4000(Lcom/android/internal/location/GpsLocationProvider;I)V

    .line 1829
    .end local v0           #nRotation:I
    :cond_0
    return-void
.end method

.method private hybridGpsSensorDeregister()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "GpsLocationProvider"

    .line 1752
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1754
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    .line 1762
    :goto_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$3500(Lcom/android/internal/location/GpsLocationProvider;)V

    .line 1765
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3102(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1766
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->access$3202(Lcom/android/internal/location/GpsLocationProvider;J)J

    .line 1769
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$3300(Lcom/android/internal/location/GpsLocationProvider;)[I

    move-result-object v0

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 1770
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsLocationProvider;->access$3402(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1772
    const-string v0, "GpsLocationProvider"

    const-string v0, "hybridGpsSensorDeregister"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    return-void

    .line 1758
    :cond_0
    const-string v0, "GpsLocationProvider"

    const-string v0, "hybridGpsSensorDeregister : No registered sensorManager"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hybridGpsSensorRegister()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v10, "GpsLocationProvider"

    .line 1708
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v8, v9}, Lcom/android/internal/location/GpsLocationProvider;->access$2002(Lcom/android/internal/location/GpsLocationProvider;J)J

    .line 1709
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2102(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1710
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2202(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1711
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2302(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1712
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2402(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1713
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2502(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1714
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2602(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1715
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2702(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1716
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$2802(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1718
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2900(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    .line 1719
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1720
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1721
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1724
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2900(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GpsLogging"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1728
    .local v0, nLogging:I
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2900(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DynamicAccuracyValue"

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1729
    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    move v0, v6

    .line 1731
    :goto_0
    const-string v1, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hybridGpsSensorRegister PDR Logging is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v2, "OFF"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v0}, Lcom/android/internal/location/GpsLocationProvider;->access$3000(Lcom/android/internal/location/GpsLocationProvider;I)V

    .line 1735
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$3102(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 1736
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v8, v9}, Lcom/android/internal/location/GpsLocationProvider;->access$3202(Lcom/android/internal/location/GpsLocationProvider;J)J

    .line 1739
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$3300(Lcom/android/internal/location/GpsLocationProvider;)[I

    move-result-object v1

    aput v5, v1, v7

    .line 1740
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$3402(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1743
    invoke-direct {p0, v6}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsSupportInversePortraitMode(I)V

    .line 1744
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2900(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->windowManager:Landroid/view/WindowManager;

    .line 1745
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->hybridGpsRotationChanged()V

    .line 1747
    const-string v1, "GpsLocationProvider"

    const-string v1, "hybridGpsSensorRegister"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void

    :cond_0
    move v0, v5

    .line 1729
    goto :goto_0

    .line 1731
    :cond_1
    const-string v2, "ON"

    goto :goto_1
.end method

.method private hybridGpsSupportInversePortraitMode(I)V
    .locals 3
    .parameter "isSupported"

    .prologue
    .line 1839
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hybridGpsSupportInversePortraitMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0, p1}, Lcom/android/internal/location/GpsLocationProvider;->access$4100(Lcom/android/internal/location/GpsLocationProvider;I)V

    .line 1843
    return-void
.end method
