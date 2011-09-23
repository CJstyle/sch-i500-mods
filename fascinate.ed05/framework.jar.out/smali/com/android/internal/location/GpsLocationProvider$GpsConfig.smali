.class Lcom/android/internal/location/GpsLocationProvider$GpsConfig;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsConfig"
.end annotation


# static fields
.field private static final SEC_PROPERTIES_DIR:Ljava/lang/String; = "/data/gps"

.field private static final SEC_PROPERTIES_FILE:Ljava/lang/String; = "/data/gps/secgps.conf"


# instance fields
.field private final OPERATION_MODE_MSASSISTED:I

.field private final OPERATION_MODE_MSBASED:I

.field private final OPERATION_MODE_STANDALONE:I

.field public isSslEnabled:Z

.field public isXtraEnabled:Z

.field public mAccuracy:I

.field public mHslpAddress:Ljava/lang/String;

.field public mHslpPort:I

.field public mOperationMode:Ljava/lang/String;

.field mSecProperties:Ljava/util/Properties;

.field public mServerOption:I

.field public mSessionTimeout:I

.field public mSslCertType:I

.field public tempAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 2323
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->OPERATION_MODE_STANDALONE:I

    .line 2301
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->OPERATION_MODE_MSBASED:I

    .line 2302
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->OPERATION_MODE_MSASSISTED:I

    .line 2309
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    .line 2324
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    .line 2327
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->load()V

    .line 2328
    return-void
.end method

.method private load()V
    .locals 24

    .prologue
    .line 2332
    const/4 v7, 0x0

    .line 2337
    .local v7, fsuccess:Z
    :try_start_0
    new-instance v20, Ljava/io/File;

    const-string v21, "/data/gps"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    move-result v4

    .line 2339
    .local v4, dirsuccess:Z
    if-eqz v4, :cond_e

    .line 2341
    const-string v20, "GpsLocationProvider"

    const-string v21, "Directory: /data/gps created"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const-string v20, "/data/gps"

    const/16 v21, 0x1ff

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2345
    new-instance v6, Ljava/io/File;

    const-string v20, "/data/gps/secgps.conf"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2347
    .local v6, file:Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2349
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 2351
    if-eqz v7, :cond_d

    .line 2352
    const-string v20, "GpsLocationProvider"

    const-string v21, "secgpsconf.c is created"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :goto_0
    const-string v20, "/data/gps/secgps.conf"

    const/16 v21, 0x1c4

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2361
    :cond_0
    :goto_1
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2362
    .local v15, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2363
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 2365
    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setDefaultParameters()V

    .line 2367
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SUPL_HOST"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SUPL_PORT"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2369
    .local v10, portString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v20, :cond_2

    if-eqz v10, :cond_2

    .line 2371
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2378
    :cond_2
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SERVER_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2382
    .local v11, serverTypeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ADDRESS_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2384
    .local v3, addressTypeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SSL"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2385
    .local v13, sslString:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2388
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SSL_TYPE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2389
    .local v14, ssltypeString:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 2392
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "GPS_LOGGING"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2393
    .local v18, usepctoolString:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 2397
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "OPERATION_TEST_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2398
    .local v16, testmodeString:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 2402
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "OPERATION_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2403
    .local v8, modeString:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 2404
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mOperationMode:Ljava/lang/String;

    .line 2408
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "TIMEOUT"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2409
    .local v17, timeoutString:Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 2412
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ACCURACY"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2413
    .local v2, accuracyString:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 2416
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SERVER_OPTION"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2417
    .local v12, serveroptionString:Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 2421
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ENABLE_XTRA"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2422
    .local v19, xtraString:Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 2426
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ENABLE_NMEA"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2427
    .local v9, nmeaString:Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 2434
    .end local v2           #accuracyString:Ljava/lang/String;
    .end local v3           #addressTypeString:Ljava/lang/String;
    .end local v4           #dirsuccess:Z
    .end local v6           #file:Ljava/io/File;
    .end local v8           #modeString:Ljava/lang/String;
    .end local v9           #nmeaString:Ljava/lang/String;
    .end local v10           #portString:Ljava/lang/String;
    .end local v11           #serverTypeString:Ljava/lang/String;
    .end local v12           #serveroptionString:Ljava/lang/String;
    .end local v13           #sslString:Ljava/lang/String;
    .end local v14           #ssltypeString:Ljava/lang/String;
    .end local v15           #stream:Ljava/io/FileInputStream;
    .end local v16           #testmodeString:Ljava/lang/String;
    .end local v17           #timeoutString:Ljava/lang/String;
    .end local v18           #usepctoolString:Ljava/lang/String;
    .end local v19           #xtraString:Ljava/lang/String;
    :cond_c
    :goto_3
    return-void

    .line 2354
    .restart local v4       #dirsuccess:Z
    .restart local v6       #file:Ljava/io/File;
    :cond_d
    const-string v20, "GpsLocationProvider"

    const-string v21, "secgpsconf.c is already exist"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2430
    .end local v4           #dirsuccess:Z
    .end local v6           #file:Ljava/io/File;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 2431
    .local v5, e:Ljava/io/IOException;
    const-string v20, "GpsLocationProvider"

    const-string v21, "Could not open GPS configuration file in load : /data/gps/secgps.conf"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setDefaultParameters()V

    goto :goto_3

    .line 2359
    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #dirsuccess:Z
    :cond_e
    :try_start_3
    new-instance v6, Ljava/io/File;

    const-string v20, "/data/gps/secgps.conf"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6       #file:Ljava/io/File;
    goto/16 :goto_1

    .line 2372
    .restart local v10       #portString:Ljava/lang/String;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 2373
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v20, "GpsLocationProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "unable to parse SUPL_PORT: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method private save()V
    .locals 5

    .prologue
    .line 2491
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/gps/secgps.conf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2492
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2494
    .local v2, stream:Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "Generated by GpsLocationProvider."

    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2500
    .end local v1           #file:Ljava/io/File;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 2496
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2497
    .local v0, e:Ljava/io/IOException;
    const-string v3, "GpsLocationProvider"

    const-string v4, "Could not open GPS configuration file in save : /data/gps/secgps.conf"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDefaultParameters()V
    .locals 10

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "0"

    const-string v5, "GpsLocationProvider"

    .line 2444
    const-string v3, "ro.sprc.agps.supl_host"

    const-string/jumbo v4, "www.spirent-lcs.com"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2446
    .local v1, SUPL_HOST:Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPL_HOST: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const-string v3, "ro.sprc.agps.supl_port"

    const-string v4, "7275"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2448
    .local v2, SUPL_PORT:Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPL_PORT --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const-string v3, "ro.sprc.agps.operation_mode"

    const-string v4, "STANDALONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2455
    .local v0, OPERATION_MODE:Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPERATION_MODE --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SERVER_MODE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2459
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "ADDRESS_MODE"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2460
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "START_MODE"

    const-string v5, "WARM"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2461
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SUPL_HOST"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2462
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SUPL_PORT"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2463
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SSL"

    const-string v5, "0"

    invoke-virtual {v3, v4, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2464
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SSL_TYPE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2465
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "GPS_LOGGING"

    const-string v5, "0"

    invoke-virtual {v3, v4, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2466
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "AGPS_MODE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2467
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "POSITION_MODE"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2468
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SESSION_TYPE"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2469
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "NUM_OF_FIX"

    const v5, 0x3b9ac9ff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2470
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "OPERATION_MODE"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2471
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "OPERATION_TEST_MODE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2472
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "TIMEOUT"

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2473
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "ACCURACY"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2474
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "DYNAMIC_ACCURACY"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2475
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "DYNAMIC_ACCURACY_VALUE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2480
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "USE_DEFAULT"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2482
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "ENABLE_XTRA"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2483
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "ENABLE_NMEA"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2484
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    .line 2485
    return-void
.end method


# virtual methods
.method StartDNSLoopProcess(ILjava/lang/String;I)V
    .locals 4
    .parameter "address_type"
    .parameter "addr"
    .parameter "port"

    .prologue
    const/4 v3, 0x1

    .line 2686
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[old]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [new] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2690
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    .line 2692
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    invoke-static {v0, v3, v1, p3}, Lcom/android/internal/location/GpsLocationProvider;->access$8800(Lcom/android/internal/location/GpsLocationProvider;ILjava/lang/String;I)V

    .line 2697
    :cond_0
    :goto_0
    return-void

    .line 2694
    :cond_1
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method setBasicParameters(Landroid/os/Bundle;)V
    .locals 19
    .parameter "extras"

    .prologue
    .line 2503
    const-string v16, "GpsLocationProvider"

    const-string/jumbo v17, "setBasicParameters"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    if-nez p1, :cond_0

    .line 2568
    :goto_0
    return-void

    .line 2507
    :cond_0
    const-string/jumbo v16, "server_type"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 2508
    .local v14, server_type:I
    if-ltz v14, :cond_1

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "SERVER_MODE"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2512
    :cond_1
    const-string v16, "address_type"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2513
    .local v5, address_type:I
    if-ltz v5, :cond_2

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "ADDRESS_MODE"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2516
    :cond_2
    const-string/jumbo v16, "start_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2517
    .local v11, mode:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "START_MODE"

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2521
    :cond_3
    const-string v16, "hslp_addr"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2522
    .local v4, addr:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "SUPL_HOST"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2526
    :cond_4
    const-string v16, "hslp_port"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 2527
    .local v12, port:I
    if-lez v12, :cond_5

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "SUPL_PORT"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2532
    :cond_5
    const-string/jumbo v16, "ssl"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 2533
    .local v15, ssl:Z
    if-eqz v15, :cond_c

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "SSL"

    const-string v18, "0"

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2539
    :goto_1
    const-string/jumbo v16, "ssl_type"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2540
    .local v7, cert:I
    if-ltz v7, :cond_6

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "SSL_TYPE"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2544
    :cond_6
    const-string v16, "position_mode"

    const/16 v17, 0x7

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2545
    .local v13, position_mode:I
    if-lez v13, :cond_7

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "POSITION_MODE"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2548
    :cond_7
    const-string v16, "gpslogging"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2549
    .local v10, gpslogging:I
    if-ltz v10, :cond_8

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "GPS_LOGGING"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2553
    :cond_8
    const-string v16, "agps_mode"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2554
    .local v6, agpsMode:I
    if-ltz v6, :cond_9

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "AGPS_MODE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2558
    :cond_9
    const-string v16, "dynamic_acc"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2559
    .local v8, dynamicAccMode:I
    if-ltz v8, :cond_a

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "DYNAMIC_ACCURACY"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2562
    :cond_a
    const-string v16, "dynamic_acc_value"

    const/16 v17, 0x32

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2563
    .local v9, dynamicAccValue:I
    if-ltz v9, :cond_b

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "DYNAMIC_ACCURACY_VALUE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2566
    :cond_b
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v4

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->StartDNSLoopProcess(ILjava/lang/String;I)V

    .line 2567
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto/16 :goto_0

    .line 2536
    .end local v6           #agpsMode:I
    .end local v7           #cert:I
    .end local v8           #dynamicAccMode:I
    .end local v9           #dynamicAccValue:I
    .end local v10           #gpslogging:I
    .end local v13           #position_mode:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v16, v0

    const-string v17, "SSL"

    const-string v18, "1"

    invoke-virtual/range {v16 .. v18}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method setCscParameters(Landroid/os/Bundle;)V
    .locals 12
    .parameter "extras"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const-string v11, "SSL"

    .line 2615
    const-string v6, "GpsLocationProvider"

    const-string/jumbo v7, "setCscParameters"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    if-nez p1, :cond_0

    .line 2661
    :goto_0
    return-void

    .line 2620
    :cond_0
    const-string v6, "hslp_addr"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2621
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2622
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2625
    :cond_1
    const-string v6, "hslp_port"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2626
    .local v4, port:I
    if-lez v4, :cond_2

    .line 2627
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2631
    :cond_2
    const-string/jumbo v6, "ssl"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2632
    .local v5, ssl:Z
    if-eqz v5, :cond_6

    .line 2633
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "SSL"

    const-string v7, "0"

    invoke-virtual {v6, v11, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2638
    :goto_1
    const-string/jumbo v6, "ssl_type"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2639
    .local v1, cert:I
    if-ltz v1, :cond_3

    .line 2640
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "SSL_TYPE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2643
    :cond_3
    const-string v6, "operation_mode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2644
    .local v3, operation:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2645
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "OPERATION_MODE"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2653
    :cond_4
    const-string v6, "enable_xtra"

    invoke-virtual {p1, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2654
    .local v2, enable_xtra:Z
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "ENABLE_XTRA"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2657
    const-string v6, "STANDALONE"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2658
    invoke-virtual {p0, v10, v0, v4}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->StartDNSLoopProcess(ILjava/lang/String;I)V

    .line 2660
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto :goto_0

    .line 2635
    .end local v1           #cert:I
    .end local v2           #enable_xtra:Z
    .end local v3           #operation:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v7, "SSL"

    const-string v7, "1"

    invoke-virtual {v6, v11, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1
.end method

.method setFixParameters(Landroid/os/Bundle;)V
    .locals 13
    .parameter "extras"

    .prologue
    const/4 v11, -0x1

    const-string v12, "GpsLocationProvider"

    .line 2572
    const-string v8, "GpsLocationProvider"

    const-string/jumbo v8, "setFixParameters"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    if-nez p1, :cond_0

    .line 2612
    :goto_0
    return-void

    .line 2576
    :cond_0
    const-string/jumbo v8, "session_type"

    const/4 v9, 0x2

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2577
    .local v6, type:I
    if-ltz v6, :cond_1

    .line 2578
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "SESSION_TYPE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2581
    :cond_1
    const-string v8, "operation_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2582
    .local v1, mode:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2583
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "OPERATION_MODE"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2586
    :cond_2
    const-string v8, "num_of_fixes"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2587
    .local v2, num_fix:I
    const-string v8, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[num_fix]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    if-le v2, v11, :cond_3

    .line 2590
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "NUM_OF_FIX"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2593
    :cond_3
    const-string/jumbo v8, "time_btw_fixes"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2594
    .local v4, time_btw_fix:I
    if-le v4, v11, :cond_4

    .line 2595
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "TIME_BTW_FIX"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2597
    :cond_4
    const-string v8, "operation_test_mode"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2598
    .local v3, test_mode:I
    if-ltz v3, :cond_5

    .line 2599
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "OPERATION_TEST_MODE"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2602
    :cond_5
    const-string/jumbo v8, "timeout"

    const/16 v9, 0x3e8

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2603
    .local v5, timeout:I
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "TIMEOUT"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2605
    const-string v8, "accuracy"

    const/16 v9, 0x32

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2606
    .local v0, accuracy:I
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "ACCURACY"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2608
    const-string/jumbo v8, "use_default"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2609
    .local v7, use_default:Z
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "USE_DEFAULT"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2611
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto/16 :goto_0
.end method

.method setNmea(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extras"

    .prologue
    .line 2677
    if-nez p1, :cond_0

    .line 2684
    :goto_0
    return-void

    .line 2680
    :cond_0
    const-string v1, "enable_nmea"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2681
    .local v0, enable_nmea:Z
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v2, "ENABLE_NMEA"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2683
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto :goto_0
.end method

.method setOperationMode(I)V
    .locals 4
    .parameter "op_mode"

    .prologue
    .line 2701
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "STANDALONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MSBASED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MSASSISTED"

    aput-object v2, v0, v1

    .line 2702
    .local v0, str:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v2, "OPERATION_MODE"

    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2704
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    .line 2705
    return-void
.end method

.method setXtra(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extras"

    .prologue
    .line 2664
    if-nez p1, :cond_0

    .line 2675
    :goto_0
    return-void

    .line 2667
    :cond_0
    const-string v1, "enable_xtra"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2668
    .local v0, enable_xtra:Z
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v2, "ENABLE_XTRA"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2670
    const-string/jumbo v1, "trigger_xtra_download"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2674
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto :goto_0
.end method
