.class public Lcom/vzw/location/VzwLocationManager;
.super Ljava/lang/Object;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;,
        Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final EXCEPTION_MESSAGE:Ljava/lang/String; = "Application is not authorized to use VzwLocationManager"

.field private static final SECURITY_EXCEPTION:Ljava/lang/String; = "SECURITY_EXCEPTION"

.field private static final TAG:Ljava/lang/String; = "VzwLocationManager"

.field public static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private mCriteria:Lcom/vzw/location/VzwCriteria;

.field private final mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

.field private final mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vzw/location/VzwGpsStatus$Listener;",
            "Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mInitPassed:Z

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Lcom/vzw/location/VzwLocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/vzw/location/IVzwLocationManager;


# direct methods
.method public constructor <init>(Lcom/vzw/location/IVzwLocationManager;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 54
    new-instance v0, Lcom/vzw/location/VzwGpsStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    .line 55
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationManager;->mInitPassed:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    .line 155
    const-string v0, "VzwLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VzwLocationManagerService must not be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    .line 161
    return-void
.end method

.method private _requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/vzw/location/VzwLocationManager;->mInitPassed:Z

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Trying to requestLocationUpdates before GPS_EVENT_INIT_PASS was sent."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    if-nez p1, :cond_1

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    if-nez p3, :cond_2

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    if-nez p2, :cond_8

    .line 449
    :try_start_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_3

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "criteria==null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    const-string v1, "VzwLocationManager"

    const-string v2, "requestLocationUpdates: DeadObjectException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    :goto_0
    return-void

    .line 452
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    move-object v2, v0

    .line 455
    :goto_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 456
    if-nez v0, :cond_7

    .line 457
    new-instance v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    invoke-direct {v0, p0, p3, p5}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    move-object v3, v0

    .line 459
    :goto_2
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    instance-of v0, v2, Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_6

    .line 464
    new-instance v0, Lcom/vzw/location/VzwCriteria;

    invoke-direct {v0, v2}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/location/Criteria;)V

    .line 467
    :goto_3
    check-cast v0, Lcom/vzw/location/VzwCriteria;

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    .line 470
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 471
    if-eqz p4, :cond_4

    .line 472
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-interface {v2, p1, v4, v3, v0}, Lcom/vzw/location/IVzwLocationManager;->requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;Landroid/os/Bundle;)V

    .line 476
    :goto_4
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_4
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-interface {v2, p1, v4, v3, v0}, Lcom/vzw/location/IVzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;Landroid/os/Bundle;)V

    goto :goto_4

    .line 479
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v3, v0

    goto :goto_2

    :cond_8
    move-object v2, p2

    goto :goto_1
.end method

.method static synthetic access$102(Lcom/vzw/location/VzwLocationManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vzw/location/VzwLocationManager;->mInitPassed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Lcom/vzw/location/VzwDummyLocationProvider;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwDummyLocationProvider;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setRequiresNetwork(Z)V

    .line 243
    const-string v1, "satellite"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setRequiresSatellite(Z)V

    .line 244
    const-string v1, "cell"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setRequiresCell(Z)V

    .line 245
    const-string v1, "cost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 246
    const-string v1, "altitude"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setSupportsAltitude(Z)V

    .line 247
    const-string/jumbo v1, "speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setSupportsSpeed(Z)V

    .line 248
    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setSupportsBearing(Z)V

    .line 249
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setPowerRequirement(I)V

    .line 250
    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwDummyLocationProvider;->setAccuracy(I)V

    .line 251
    return-object v0
.end method


# virtual methods
.method public addVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 650
    if-nez p1, :cond_0

    move v0, v2

    .line 672
    :goto_0
    return v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto :goto_0

    .line 659
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 660
    new-instance v2, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;Landroid/os/Looper;)V

    .line 661
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v2, v1}, Lcom/vzw/location/IVzwLocationManager;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;Landroid/os/Bundle;)Z

    move-result v3

    .line 662
    const-string v4, "SECURITY_EXCEPTION"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 663
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    :try_start_2
    const-string v2, "VzwLocationManager"

    const-string v3, "RemoteException in registerGpsStatusListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    const/4 v1, 0x0

    .line 670
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 672
    goto :goto_0

    .line 665
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v3

    .line 669
    goto :goto_1

    .line 670
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "VzwLocationManager"

    .line 172
    const-string v0, "VzwLocationManager"

    const-string v0, "getAllProviders"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, v0}, Lcom/vzw/location/IVzwLocationManager;->getAllProviders(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 177
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "VzwLocationManager"

    const-string v1, "getAllProviders: RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 180
    goto :goto_0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-string v4, "VzwLocationManager"

    .line 262
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, v0}, Lcom/vzw/location/IVzwLocationManager;->getProviders(ZLandroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 264
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "VzwLocationManager"

    const-string v1, "Could not get providers list: "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 267
    :cond_1
    :try_start_1
    const-string v0, "VzwLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProviders returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " providers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string/jumbo v0, "vzw_lbs"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 3
    .parameter

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, v0}, Lcom/vzw/location/IVzwLocationManager;->getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 229
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "VzwLocationManager"

    const-string v2, "getProvider: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 232
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwLocationManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "VzwLocationManager"

    .line 196
    const-string v0, "VzwLocationManager"

    const-string v0, "getProviders"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, v0}, Lcom/vzw/location/IVzwLocationManager;->getProviders(ZLandroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 201
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "VzwLocationManager"

    const-string v1, "getProviders: RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 204
    goto :goto_0
.end method

.method public getVzwGpsDeviceStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 3
    .parameter

    .prologue
    .line 759
    if-nez p1, :cond_0

    .line 760
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 761
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    monitor-enter v1

    .line 762
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsDeviceStatus;->set(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 763
    monitor-exit v1

    .line 764
    return-object v0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public getVzwGpsStatus(Lcom/vzw/location/VzwGpsStatus;)Lcom/vzw/location/VzwGpsStatus;
    .locals 3
    .parameter

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v0, Lcom/vzw/location/VzwGpsStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    .line 713
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsStatus;->setStatus(Lcom/vzw/location/VzwGpsStatus;)V

    .line 715
    monitor-exit v1

    .line 716
    return-object v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 534
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, v0}, Lcom/vzw/location/IVzwLocationManager;->isProviderEnabled(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 535
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    const-string v1, "VzwLocationManager"

    const-string v2, "isProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 538
    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "VzwLocationManager"

    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    const-string v0, "VzwLocationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUpdates: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :try_start_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 505
    if-eqz v0, :cond_1

    .line 506
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 507
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v0, v2}, Lcom/vzw/location/IVzwLocationManager;->removeUpdates(Lcom/vzw/location/IVzwLocationListener;Landroid/os/Bundle;)V

    .line 508
    const-string v0, "SECURITY_EXCEPTION"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    const-string v1, "VzwLocationManager"

    const-string v1, "removeUpdates: DeadObjectException"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :goto_0
    return-void

    .line 512
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 4
    .parameter

    .prologue
    .line 683
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    .line 686
    if-eqz v0, :cond_0

    .line 687
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 688
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v0, v2}, Lcom/vzw/location/IVzwLocationManager;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;Landroid/os/Bundle;)Z

    .line 689
    const-string v0, "SECURITY_EXCEPTION"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    :try_start_1
    const-string v2, "VzwLocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    :cond_0
    monitor-exit v1

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vzw/location/VzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 291
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/vzw/location/VzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 306
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vzw/location/VzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 321
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    const-string v0, "VzwLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLocationUpdates with criteria "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V

    .line 351
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vzw/location/VzwLocationManager;->requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 366
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/vzw/location/VzwLocationManager;->requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 381
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vzw/location/VzwLocationManager;->requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 397
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    const-string v0, "VzwLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSingleLocationUpdate with criteria "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V

    .line 428
    return-void
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 733
    if-nez p1, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_0
    if-nez p2, :cond_1

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configInit==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 742
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, p2, v0}, Lcom/vzw/location/IVzwLocationManager;->setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;Landroid/os/Bundle;)Z

    move-result v1

    .line 743
    const-string v2, "SECURITY_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application is not authorized to use VzwLocationManager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 746
    goto :goto_0
.end method
