.class Lcom/sec/android/app/camera/CameraEngine$LocationListener;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "provider"

    .prologue
    const/4 v0, 0x1

    .line 1835
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 1833
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    .line 1836
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 1837
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1898
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-ne v0, v4, :cond_0

    move v0, v3

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-ne v1, v4, :cond_1

    move v1, v3

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .parameter "newLocation"

    .prologue
    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    .line 1840
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged - Latitude Logitude["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_2

    .line 1855
    :cond_1
    :goto_0
    return-void

    .line 1848
    :cond_2
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1849
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 1853
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->updateGPSIndicator()V

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 1850
    :cond_4
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1851
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x1

    .line 1861
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1858
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1869
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - provider["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 1880
    :goto_0
    return-void

    .line 1873
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1874
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 1876
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1877
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    .line 1879
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->updateGPSIndicator()V

    goto :goto_0
.end method

.method public updateGPSIndicator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1883
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-ne v2, v6, :cond_1

    move v2, v4

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_1
    or-int v0, v2, v3

    .line 1884
    .local v0, connected:Z
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-nez v2, :cond_3

    move v2, v4

    :goto_2
    iget v3, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-nez v3, :cond_4

    move v3, v4

    :goto_3
    and-int v1, v2, v3

    .line 1886
    .local v1, disconnected:Z
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1887
    if-eqz v1, :cond_5

    .line 1888
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object p0, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    .line 1895
    :cond_0
    :goto_4
    return-void

    .end local v0           #connected:Z
    .end local v1           #disconnected:Z
    .restart local p0
    :cond_1
    move v2, v5

    .line 1883
    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .restart local v0       #connected:Z
    :cond_3
    move v2, v5

    .line 1884
    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    .line 1889
    .restart local v1       #disconnected:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 1890
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object p0, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_4

    .line 1892
    .restart local p0
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object p0, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_4
.end method