.class Lcom/android/server/location/GpsLocationProvider$HybridGps$3;
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
    .line 1860
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1862
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1865
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1868
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1869
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1871
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 1872
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 1873
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 1874
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 1875
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1877
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2508(Lcom/android/server/location/GpsLocationProvider;)I

    .line 1878
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1, v4}, Lcom/android/server/location/GpsLocationProvider;->access$2302(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1883
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridGps;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$HybridGps;->access$6700(Lcom/android/server/location/GpsLocationProvider$HybridGps;)V

    .line 1887
    :cond_1
    return-void
.end method
