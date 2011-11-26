.class public Landroid/wmdrm/mobile/WMDrmRightsManager;
.super Ljava/lang/Object;
.source "WMDrmRightsManager.java"

# interfaces
.implements Landroid/wmdrm/mobile/WMDRMConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "WMDRMRIGHTSMANAGER"

.field private static pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

.field private static wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;


# instance fields
.field private lastFileIsWmdrm:Z

.field private lastFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 30
    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/wmdrm/mobile/WMDrmRightsManager;->lastFilePath:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/wmdrm/mobile/WMDrmRightsManager;->lastFileIsWmdrm:Z

    .line 39
    return-void
.end method

.method private IsValidWmdrmFile(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v6, "WMDRMRIGHTSMANAGER"

    .line 326
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, ext:Ljava/lang/String;
    const-string v4, "WMDRMRIGHTSMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WMDRM] Extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v4, "WMA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "WMV"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ASF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 343
    :goto_0
    return v4

    .line 331
    :cond_0
    const/4 v2, 0x0

    .line 332
    .local v2, result:Z
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 335
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v4, "true"

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v4, v2

    .line 343
    goto :goto_0

    .line 337
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] License not found. Which means it\'s drm protected"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .locals 13
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const-string v9, "WMDRMRIGHTSMANAGER"

    .line 371
    const/4 v6, 0x0

    .line 372
    .local v6, rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 376
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 379
    const-string v9, "false"

    const/16 v10, 0x1b

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 380
    const-string v9, "WMDRMRIGHTSMANAGER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "License not available for file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v9, 0x0

    .line 433
    :goto_0
    return-object v9

    .line 384
    :cond_0
    new-instance v7, Landroid/wmdrm/mobile/WMDRMRightsInfo;

    invoke-direct {v7}, Landroid/wmdrm/mobile/WMDRMRightsInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    .end local v6           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v7, rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    const/16 v9, 0x19

    :try_start_1
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, drmCounts:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 391
    new-instance v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v4}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 392
    .local v4, r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 393
    const/4 v9, 0x0

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 394
    const/4 v9, 0x0

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    .line 395
    invoke-virtual {v7, v4}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    :goto_1
    move-object v6, v7

    .end local v7           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v6       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    move-object v9, v7

    .line 433
    goto :goto_0

    .line 398
    .end local v4           #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v6           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v7       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :cond_1
    new-instance v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v4}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 399
    .restart local v4       #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/16 v9, 0x1e

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, licenseType:Ljava/lang/String;
    const-string v9, "WMDRMRIGHTSMANAGER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "License Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string/jumbo v9, "unlimited"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 402
    const/4 v9, 0x1

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 427
    :cond_2
    :goto_2
    invoke-virtual {v7, v4}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 429
    .end local v0           #drmCounts:Ljava/lang/String;
    .end local v3           #licenseType:Ljava/lang/String;
    .end local v4           #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    :catch_0
    move-exception v9

    move-object v1, v9

    move-object v6, v7

    .line 430
    .end local v7           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v1, e:Ljava/lang/Exception;
    .restart local v6       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :goto_3
    new-instance v9, Landroid/wmdrm/mobile/WMDRMDRMException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to retrieve WMDRM rights from file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 404
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v0       #drmCounts:Ljava/lang/String;
    .restart local v3       #licenseType:Ljava/lang/String;
    .restart local v4       #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .restart local v7       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :cond_3
    :try_start_2
    const-string/jumbo v9, "time"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 405
    const/16 v9, 0x1f

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, start:Ljava/lang/String;
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, end:Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 409
    const/4 v9, 0x3

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 410
    invoke-direct {p0, v8}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDateConstraint(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-result-object v9

    iput-object v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 411
    const-string v9, "WMDRMRIGHTSMANAGER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start date constraint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 414
    iget v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    if-ne v9, v12, :cond_5

    .line 415
    const/4 v9, 0x5

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 419
    :goto_4
    invoke-direct {p0, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDateConstraint(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-result-object v9

    iput-object v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 420
    const-string v9, "WMDRMRIGHTSMANAGER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End date constraint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 417
    :cond_5
    const/4 v9, 0x4

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    goto :goto_4

    .line 425
    .end local v2           #end:Ljava/lang/String;
    .end local v8           #start:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    iput v9, v4, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 429
    .end local v0           #drmCounts:Ljava/lang/String;
    .end local v3           #licenseType:Ljava/lang/String;
    .end local v4           #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v7           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v6       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :catch_1
    move-exception v9

    move-object v1, v9

    goto/16 :goto_3
.end method

.method private getDateConstraint(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    .locals 10
    .parameter "strDate"

    .prologue
    const/4 v9, 0x3

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :try_start_0
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v0           #constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    .local v1, constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :try_start_1
    const-string v6, "T"

    const/4 v7, 0x2

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, datetime:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "-"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, date:[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v9, :cond_0

    .line 353
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 354
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 355
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 357
    :cond_0
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const-string v7, ":"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, time:[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v9, :cond_1

    .line 359
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 360
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 361
    const/4 v6, 0x2

    aget-object v6, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    .line 367
    .end local v1           #constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    .end local v2           #date:[Ljava/lang/String;
    .end local v3           #datetime:[Ljava/lang/String;
    .end local v5           #time:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 364
    .restart local v0       #constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 365
    .local v4, e:Ljava/lang/Exception;
    :goto_1
    const-string v6, "WMDRMRIGHTSMANAGER"

    const-string v7, "Problems retrieving date constraint"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 367
    .local v1, constraint:Ljava/lang/Object;
    goto :goto_0

    .line 364
    .end local v0           #constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    .end local v4           #e:Ljava/lang/Exception;
    .local v1, constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :catch_1
    move-exception v6

    move-object v4, v6

    move-object v0, v1

    .end local v1           #constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    .restart local v0       #constraint:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    goto :goto_1
.end method

.method public static getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;
    .locals 2

    .prologue
    .line 47
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] Default instance of the WMDRMManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/wmdrm/mobile/WMDrmRightsManager;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDrmRightsManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 52
    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    .line 56
    :cond_0
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    return-object v0
.end method

.method private isCount(I)Z
    .locals 3
    .parameter "category"

    .prologue
    .line 214
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in isCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 217
    :cond_0
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V
    .locals 4
    .parameter "wmdrmRights"

    .prologue
    const-string v3, "[WMDRM] wmdrmRights.category :"

    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 135
    if-eqz p1, :cond_1

    .line 136
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    return-void
.end method

.method private updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V
    .locals 11
    .parameter "wmdrmrights"
    .parameter "rights"

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 151
    iget-wide v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v1, v3

    .line 153
    .local v1, key:I
    const-string v3, "WMDRMRIGHTSMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Most importent Category Value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    packed-switch v1, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 157
    new-instance v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v2}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 158
    .local v2, startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 159
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 160
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 161
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 162
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 163
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 164
    iput-object v2, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto :goto_0

    .line 170
    .end local v2           #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :pswitch_1
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 171
    new-instance v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 172
    .local v0, endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 173
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 174
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 175
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 176
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 177
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 178
    iput-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto :goto_0

    .line 186
    .end local v0           #endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :pswitch_2
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 187
    new-instance v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v2}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 188
    .restart local v2       #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 189
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 190
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 191
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 192
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 193
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 194
    iput-object v2, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 197
    .end local v2           #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :cond_1
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 198
    new-instance v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 199
    .restart local v0       #endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 200
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 201
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 202
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 203
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 204
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 205
    iput-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWmdrmRightInfo(Landroid/playready/playreadymanager/PlayReadyRightsInfo;Landroid/wmdrm/mobile/WMDRMRightsInfo;)V
    .locals 7
    .parameter "pyvRightsinfo"
    .parameter "rightsInfo"

    .prologue
    const-string v6, "WMDRMRIGHTSMANAGER"

    .line 113
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 114
    .local v1, wmdrmRights:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 115
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->CategoryStr:Ljava/lang/String;

    iput-object v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    .line 116
    iget v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    invoke-direct {p0, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isCount(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v2, v0

    iget-object v4, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v4, v4, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 119
    const-string v2, "WMDRMRIGHTSMANAGER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WMDRM] i value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-nez v0, :cond_1

    .line 121
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 123
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    goto :goto_1

    .line 127
    :cond_2
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] before updating the date info"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-direct {p0, v1, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V

    .line 129
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] After updating the date info"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p2, v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 131
    invoke-direct {p0, v1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 132
    return-void
.end method


# virtual methods
.method public native createHDSAndCerts()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method public isPlayreadyFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, fileExt:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 316
    const-string/jumbo v1, "pyv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 322
    :goto_0
    return v1

    .line 319
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 322
    goto :goto_0
.end method

.method public isWMdrmFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "WMDRMRIGHTSMANAGER"

    .line 239
    const-string v2, "WMDRMRIGHTSMANAGER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WMDRM] isWMdrmFile called with file : : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, result:Z
    iget-object v2, p0, Landroid/wmdrm/mobile/WMDrmRightsManager;->lastFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-boolean v2, p0, Landroid/wmdrm/mobile/WMDrmRightsManager;->lastFileIsWmdrm:Z

    .line 263
    :goto_0
    return v2

    .line 244
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is Present "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    sget-object v2, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v2, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    const-string v2, "WMDRMRIGHTSMANAGER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WMDRM] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Landroid/wmdrm/mobile/WMDrmRightsManager;->lastFilePath:Ljava/lang/String;

    .line 262
    iput-boolean v1, p0, Landroid/wmdrm/mobile/WMDrmRightsManager;->lastFileIsWmdrm:Z

    move v2, v1

    .line 263
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 251
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v2, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is not Present"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method public queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .locals 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "WMDRMRIGHTSMANAGER"

    .line 73
    const-string v4, "WMDRMRIGHTSMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WMDRM] queryRights called with file : : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 77
    .local v2, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    const/4 v1, 0x0

    .line 80
    .local v1, pyvRightsinfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is Exists "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isPlayreadyFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    :try_start_0
    sget-object v4, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v4, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    new-instance v3, Landroid/wmdrm/mobile/WMDRMRightsInfo;

    invoke-direct {v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v3, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :try_start_1
    invoke-direct {p0, v1, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateWmdrmRightInfo(Landroid/playready/playreadymanager/PlayReadyRightsInfo;Landroid/wmdrm/mobile/WMDRMRightsInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v2       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :goto_0
    move-object v4, v2

    .line 108
    :goto_1
    return-object v4

    .line 91
    :cond_0
    :try_start_2
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v5, "[WMDRM] No rigths aer found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    const/4 v4, 0x0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 95
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v4, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v2

    goto :goto_0

    .line 105
    :cond_2
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is not present in specified path"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 94
    .end local v2           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v3       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :catch_1
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v2       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    goto :goto_2
.end method

.method public setWMDrmSecureClock(J)Z
    .locals 3
    .parameter "nitzTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 283
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] setWMDrmSecureClock   called with nitzTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public updateWMDrmSecureClock(JJ)Z
    .locals 3
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 269
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] updateWMDrmSecureClock  called with beforeTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n after time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    return v0
.end method
