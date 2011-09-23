.class public Landroid/wmdrm/mobile/WMDrmRightsManager;
.super Ljava/lang/Object;
.source "WMDrmRightsManager.java"

# interfaces
.implements Landroid/wmdrm/mobile/WMDRMConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "WMDRMRIGHTSMANAGER"

.field private static pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

.field private static wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;


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
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
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
    .line 317
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, ext:Ljava/lang/String;
    const-string v4, "WMDRMRIGHTSMANAGER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WMDRM] Extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
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

    .line 332
    :goto_0
    return v4

    .line 322
    :cond_0
    const/4 v2, 0x0

    .line 323
    .local v2, result:Z
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 324
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setMode(I)V

    .line 326
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v4, "true"

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v4, v2

    .line 332
    goto :goto_0

    .line 328
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 329
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Landroid/wmdrm/mobile/WMDRMDRMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to validate if file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is WMDRM file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .locals 10
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-string v8, "WMDRMRIGHTSMANAGER"

    .line 336
    const/4 v5, 0x0

    .line 337
    .local v5, rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 338
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->setMode(I)V

    .line 341
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 344
    const-string v7, "false"

    const/16 v8, 0x1b

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    const-string v7, "WMDRMRIGHTSMANAGER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "License not available for file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v7, 0x0

    .line 379
    :goto_0
    return-object v7

    .line 349
    :cond_0
    new-instance v6, Landroid/wmdrm/mobile/WMDRMRightsInfo;

    invoke-direct {v6}, Landroid/wmdrm/mobile/WMDRMRightsInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    .end local v5           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v6, rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    const/16 v7, 0x19

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, drmCounts:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 356
    new-instance v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 357
    .local v3, r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 358
    const/4 v7, 0x0

    iput v7, v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 359
    const/4 v7, 0x0

    iput v7, v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    .line 360
    invoke-virtual {v6, v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    :goto_1
    move-object v5, v6

    .end local v6           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v5       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    move-object v7, v6

    .line 379
    goto :goto_0

    .line 363
    .end local v3           #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v5           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v6       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :cond_1
    new-instance v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 364
    .restart local v3       #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/16 v7, 0x1e

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, licenseType:Ljava/lang/String;
    const-string v7, "WMDRMRIGHTSMANAGER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "License Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string/jumbo v7, "unlimited"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    const/4 v7, 0x1

    iput v7, v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 373
    :goto_2
    invoke-virtual {v6, v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 375
    .end local v0           #drmCounts:Ljava/lang/String;
    .end local v2           #licenseType:Ljava/lang/String;
    .end local v3           #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    :catch_0
    move-exception v7

    move-object v1, v7

    move-object v5, v6

    .line 376
    .end local v6           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :goto_3
    new-instance v7, Landroid/wmdrm/mobile/WMDRMDRMException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve WMDRM rights from file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 371
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v0       #drmCounts:Ljava/lang/String;
    .restart local v2       #licenseType:Ljava/lang/String;
    .restart local v3       #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .restart local v6       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :cond_2
    const/4 v7, 0x0

    :try_start_2
    iput v7, v3, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 375
    .end local v0           #drmCounts:Ljava/lang/String;
    .end local v2           #licenseType:Ljava/lang/String;
    .end local v3           #r:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v6           #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v5       #rights:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :catch_1
    move-exception v7

    move-object v1, v7

    goto :goto_3
.end method

.method public static getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;
    .locals 2

    .prologue
    .line 44
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] Default instance of the WMDRMManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/wmdrm/mobile/WMDrmRightsManager;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDrmRightsManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 49
    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    .line 53
    :cond_0
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    return-object v0
.end method

.method private isCount(I)Z
    .locals 3
    .parameter "category"

    .prologue
    .line 211
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

    .line 212
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x1

    .line 216
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

    .line 132
    if-eqz p1, :cond_1

    .line 133
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

    .line 134
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

    .line 135
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

    .line 136
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

    .line 137
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

    .line 138
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_0

    .line 139
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

    .line 141
    :cond_0
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_1

    .line 142
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

    .line 145
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

    .line 148
    iget-wide v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v1, v3

    .line 150
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

    .line 151
    packed-switch v1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 154
    new-instance v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v2}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 155
    .local v2, startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 156
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 157
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 158
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 159
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 160
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 161
    iput-object v2, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto :goto_0

    .line 167
    .end local v2           #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :pswitch_1
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 168
    new-instance v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 169
    .local v0, endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 170
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 171
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 172
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 173
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 174
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 175
    iput-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto :goto_0

    .line 183
    .end local v0           #endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :pswitch_2
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 184
    new-instance v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v2}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 185
    .restart local v2       #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 186
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 187
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 188
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 189
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 190
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 191
    iput-object v2, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 194
    .end local v2           #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :cond_1
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 195
    new-instance v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 196
    .restart local v0       #endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 197
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 198
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 199
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 200
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 201
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 202
    iput-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto/16 :goto_0

    .line 151
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

    .line 110
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 111
    .local v1, wmdrmRights:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 112
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->CategoryStr:Ljava/lang/String;

    iput-object v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    .line 113
    iget v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    invoke-direct {p0, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isCount(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v2, v0

    iget-object v4, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v4, v4, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 116
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

    .line 117
    if-nez v0, :cond_1

    .line 118
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 115
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 120
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    goto :goto_1

    .line 124
    :cond_2
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] before updating the date info"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-direct {p0, v1, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V

    .line 126
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] After updating the date info"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p2, v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 128
    invoke-direct {p0, v1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 129
    return-void
.end method


# virtual methods
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

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, fileExt:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, "pyv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 313
    :goto_0
    return v1

    .line 310
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 313
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

    .line 236
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

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, result:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is Present "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_0
    sget-object v2, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v2, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->IsValidWmdrmFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 250
    :goto_0
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

    .line 255
    return v1

    .line 243
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 245
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v2, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is not Present"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
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

    .line 70
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

    .line 71
    const/4 v2, 0x0

    .line 74
    .local v2, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    const/4 v1, 0x0

    .line 77
    .local v1, pyvRightsinfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is Exists "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isPlayreadyFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    :try_start_0
    sget-object v4, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v4, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    new-instance v3, Landroid/wmdrm/mobile/WMDRMRightsInfo;

    invoke-direct {v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
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

    .line 105
    :goto_1
    return-object v4

    .line 88
    :cond_0
    :try_start_2
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v5, "[WMDRM] No rigths aer found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    const/4 v4, 0x0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 92
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v4, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_2
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is not present in specified path"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 91
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

    .line 275
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

    .line 279
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
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

    .line 261
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

    .line 265
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return v0
.end method
