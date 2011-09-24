.class Lcom/android/server/location/GpsLocationProvider$HybridGps$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$HybridGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1779
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0, p2}, Lcom/android/server/location/GpsLocationProvider;->access$2702(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 1783
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1786
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1787
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1789
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1790
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-ge v1, v7, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 1792
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 1793
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 1794
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v6

    .line 1796
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2608(Lcom/android/server/location/GpsLocationProvider;)I

    .line 1797
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1798
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2102(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 1801
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1802
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$HybridGps;->access$6700(Lcom/android/server/location/GpsLocationProvider$HybridGps;)V

    .line 1806
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2808(Lcom/android/server/location/GpsLocationProvider;)I

    .line 1808
    :cond_2
    return-void
.end method
