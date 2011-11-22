.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$ConnectivityThread;,
        Lcom/android/server/ConnectivityService$RadioAttributes;,
        Lcom/android/server/ConnectivityService$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_SET_BACKGROUND_DATA:I = 0x6a

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0x2bf20

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mContext:Landroid/content/Context;

.field private mDefaultConnectionSequence:I

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mFeatureUsers:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPriorityList:[I

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 31
    .parameter "context"

    .prologue
    .line 271
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 84
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 106
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 108
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 109
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 110
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 111
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 272
    const-string v27, "ConnectivityService"

    const-string v28, "ConnectivityService starting up"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "android_id"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, id:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_0

    .line 278
    new-instance v27, Ljava/lang/String;

    const-string v28, "android_"

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, name:Ljava/lang/String;
    const-string v27, "net.hostname"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v17           #name:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 283
    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 285
    new-instance v27, Lcom/android/server/ConnectivityService$MyHandler;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 289
    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 290
    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x1070010

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 295
    .local v24, raStrings:[Ljava/lang/String;
    move-object/from16 v5, v24

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v12, :cond_3

    aget-object v23, v5, v8

    .line 296
    .local v23, raString:Ljava/lang/String;
    new-instance v22, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v22 .. v23}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 297
    .local v22, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    .line 298
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    if-eqz v27, :cond_2

    .line 302
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    aput-object v22, v27, v28

    goto :goto_1

    .line 309
    .end local v22           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v23           #raString:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x107000f

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, naStrings:[Ljava/lang/String;
    move-object/from16 v5, v16

    array-length v12, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_7

    aget-object v15, v5, v8

    .line 313
    .local v15, naString:Ljava/lang/String;
    :try_start_0
    new-instance v13, Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-direct {v13, v15}, Lcom/android/server/ConnectivityService$NetworkAttributes;-><init>(Ljava/lang/String;)V

    .line 314
    .local v13, n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 315
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 319
    .restart local v13       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    if-eqz v27, :cond_5

    .line 320
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :catch_0
    move-exception v27

    goto :goto_3

    .line 324
    .restart local v13       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    if-nez v27, :cond_6

    .line 325
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " in network type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    aput-object v13, v27, v28

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 337
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .end local v15           #naString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v27, v0

    const/16 v28, 0x1

    sub-int v10, v27, v28

    .line 340
    .local v10, insertionPoint:I
    const/4 v6, 0x0

    .line 341
    .local v6, currentLowest:I
    const/16 v19, 0x0

    .line 342
    .end local v5           #arr$:[Ljava/lang/String;
    .local v19, nextLowest:I
    :goto_4
    const/16 v27, -0x1

    move v0, v10

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object v5, v0

    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    array-length v12, v5

    const/4 v8, 0x0

    move v11, v10

    .end local v10           #insertionPoint:I
    .local v11, insertionPoint:I
    :goto_5
    if-ge v8, v12, :cond_c

    aget-object v14, v5, v8

    .line 344
    .local v14, na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    if-nez v14, :cond_8

    move v10, v11

    .line 343
    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto :goto_5

    .line 345
    :cond_8
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v6

    if-ge v0, v1, :cond_9

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_6

    .line 346
    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :cond_9
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v6

    if-le v0, v1, :cond_b

    .line 347
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    if-nez v19, :cond_17

    .line 348
    :cond_a
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v19, v0

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_6

    .line 352
    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v27, v0

    add-int/lit8 v10, v11, -0x1

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    aput v28, v27, v11

    goto :goto_6

    .line 354
    .end local v10           #insertionPoint:I
    .end local v14           #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v11       #insertionPoint:I
    :cond_c
    move/from16 v6, v19

    .line 355
    const/16 v19, 0x0

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_4

    .line 359
    .end local v5           #arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_d
    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    .local v5, arr$:[I
    array-length v12, v5

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v12, :cond_e

    aget v7, v5, v8

    .line 361
    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v27, v0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    aput-object v28, v27, v7

    .line 360
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 364
    .end local v7           #i:I
    :cond_e
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 366
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 368
    const-string v27, "cm.test.mode"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "true"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const-string v27, "ro.build.type"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "eng"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/16 v27, 0x1

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v27

    if-nez v27, :cond_11

    const/16 v27, 0x1

    move/from16 v20, v27

    .line 378
    .local v20, noMobileData:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    array-length v12, v5

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v12, :cond_13

    aget v18, v5, v8

    .line 379
    .local v18, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    .line 411
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v29, v0

    aget-object v29, v29, v18

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_f
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 368
    .end local v18           #netType:I
    .end local v20           #noMobileData:Z
    :cond_10
    const/16 v27, 0x0

    goto :goto_8

    .line 377
    :cond_11
    const/16 v27, 0x0

    move/from16 v20, v27

    goto :goto_9

    .line 381
    .restart local v18       #netType:I
    .restart local v20       #noMobileData:Z
    :sswitch_0
    const-string v27, "ConnectivityService"

    const-string v28, "Starting Wifi Service."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v26, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 383
    .local v26, wst:Landroid/net/wifi/WifiStateTracker;
    new-instance v25, Lcom/android/server/WifiService;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    .line 384
    .local v25, wifiService:Lcom/android/server/WifiService;
    const-string v27, "wifi"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 385
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/WifiService;->startWifi()V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aput-object v26, v27, v28

    .line 387
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiStateTracker;->startMonitoring()V

    goto :goto_b

    .line 391
    .end local v25           #wifiService:Lcom/android/server/WifiService;
    .end local v26           #wst:Landroid/net/wifi/WifiStateTracker;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v30, v0

    aget-object v30, v30, v18

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v18

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V

    aput-object v28, v27, v18

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 394
    if-eqz v20, :cond_f

    .line 395
    const-string v27, "ConnectivityService"

    const-string v28, "tearing down Mobile networks due to setting"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .line 400
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v21

    .line 401
    .local v21, nst:Landroid/net/NetworkStateTracker;
    if-eqz v21, :cond_12

    .line 402
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 404
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aput-object v21, v27, v18

    .line 405
    if-eqz v20, :cond_f

    .line 406
    const-string v27, "ConnectivityService"

    const-string v28, "tearing down WiMAX networks due to setting"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .line 417
    .end local v18           #netType:I
    .end local v21           #nst:Landroid/net/NetworkStateTracker;
    :cond_13
    new-instance v27, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    if-nez v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->isDunRequired()Z

    move-result v27

    if-nez v27, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-eqz v27, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-eqz v27, :cond_16

    const/16 v27, 0x1

    :goto_c
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 425
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 427
    return-void

    .line 418
    :cond_16
    const/16 v27, 0x0

    goto :goto_c

    .end local v10           #insertionPoint:I
    .end local v20           #noMobileData:Z
    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v11       #insertionPoint:I
    .restart local v14       #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_17
    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto/16 :goto_6

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ConnectivityService;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    sput-object p0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetBackgroundData(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleScanResultsAvailable(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method private bumpDns()V
    .locals 5

    .prologue
    const-string v4, "net.dnschange"

    .line 1451
    const-string v2, "net.dnschange"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    .local v1, propVal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1453
    .local v0, n:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1458
    :cond_0
    :goto_0
    const-string v2, "net.dnschange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    return-void

    .line 1456
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private enforcePreference()V
    .locals 4

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    :cond_0
    return-void

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 579
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearing down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in enforcePreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 578
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;
    .locals 1
    .parameter "context"

    .prologue
    .line 268
    invoke-static {p0}, Lcom/android/server/ConnectivityService$ConnectivityThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method private getNumConnectedNetworks()I
    .locals 6

    .prologue
    .line 1035
    const/4 v4, 0x0

    .line 1037
    .local v4, numConnectedNets:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1038
    .local v3, nt:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1040
    add-int/lit8 v4, v4, 0x1

    .line 1037
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    .end local v3           #nt:Landroid/net/NetworkStateTracker;
    :cond_1
    return v4
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 553
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 555
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 557
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_0

    move v2, v1

    .line 561
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getRestoreDefaultNetworkDelay()I
    .locals 2

    .prologue
    .line 1513
    const-string v1, "android.telephony.apn-restore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1522
    :goto_0
    return v1

    .line 1519
    :catch_0
    move-exception v1

    .line 1522
    :cond_0
    const v1, 0x2bf20

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const-string v7, "ConnectivityService"

    .line 1284
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1287
    .local v3, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 1288
    .local v0, isFailover:Z
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v4, v3

    .line 1292
    .local v2, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1293
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v4, v3, :cond_4

    .line 1294
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    if-gt v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, v5, :cond_2

    .line 1299
    :cond_1
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not broadcasting CONNECT_ACTION to torn down network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1334
    :goto_0
    return-void

    .line 1305
    :cond_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v4, v5

    .line 1307
    .local v1, otherNet:Landroid/net/NetworkStateTracker;
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " teardown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1311
    const-string v4, "ConnectivityService"

    const-string v4, "Network declined teardown request"

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 1315
    :cond_3
    if-eqz v0, :cond_4

    .line 1316
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->releaseWakeLock()V

    .line 1320
    .end local v1           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_4
    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1324
    iput v6, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1325
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 1326
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1330
    :cond_5
    invoke-virtual {v2, v6}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1331
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    .line 1332
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1333
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "noConnectivity"

    .line 1207
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1209
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 1214
    const-string v3, "."

    .line 1218
    .local v3, reasonText:Ljava/lang/String;
    :goto_0
    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1223
    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1225
    :cond_0
    if-eqz v2, :cond_1

    .line 1226
    const-string v5, "reason"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    :cond_1
    if-eqz v0, :cond_2

    .line 1229
    const-string v5, "extraInfo"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1232
    const-string v5, "isFailover"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1233
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1236
    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1237
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1238
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_7

    .line 1239
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1240
    .local v4, switchTo:Landroid/net/NetworkInfo;
    const-string v5, "otherNetwork"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1247
    .end local v4           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v5, "inetCondition"

    iget v6, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1248
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1253
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_5

    .line 1254
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1256
    :cond_5
    return-void

    .line 1216
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #reasonText:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 1242
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1243
    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(I)V
    .locals 3
    .parameter "netType"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 1371
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    .line 1393
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1378
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, defaultIface:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    .line 1384
    .end local v0           #defaultIface:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes()V

    goto :goto_0

    .line 1387
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1388
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    goto :goto_0

    .line 1390
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes()V

    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1080
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1082
    .local v4, prevNetType:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v4

    invoke-virtual {v6, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1089
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1090
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v6, v4

    .line 1091
    .local v3, pids:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1092
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1096
    .local v2, pid:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    .end local v0           #i:I
    .end local v2           #pid:Ljava/lang/Integer;
    .end local v3           #pids:Ljava/util/List;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1102
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1103
    const-string v6, "isFailover"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1104
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1106
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1107
    const-string v6, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1110
    const-string v6, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1115
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1116
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v9, :cond_6

    .line 1117
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1118
    .local v5, switchTo:Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1124
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1128
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1133
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v9, :cond_5

    .line 1134
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1136
    :cond_5
    return-void

    .line 1120
    :cond_6
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1121
    const-string v6, "noConnectivity"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 19
    .parameter "netType"

    .prologue
    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v16, v0

    aget-object v12, v16, p1

    .line 1464
    .local v12, nt:Landroid/net/NetworkStateTracker;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v12}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1465
    invoke-virtual {v12}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v5

    .line 1470
    .local v5, dnsList:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1476
    const/4 v8, 0x1

    .line 1477
    .local v8, j:I
    move-object v3, v5

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v9, v8

    .end local v8           #j:I
    .local v9, j:I
    :goto_1
    if-ge v7, v11, :cond_0

    aget-object v4, v3, v7

    .line 1478
    .local v4, dns:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v16, "0.0.0.0"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1480
    const-string v16, "ConnectivityService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "adding dns "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "net.dns"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v8, v9, 0x1

    .end local v9           #j:I
    .restart local v8       #j:I
    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8           #j:I
    .restart local v9       #j:I
    goto :goto_1

    .line 1471
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #dns:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #j:I
    .end local v11           #len$:I
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 1472
    .local v6, e:Ljava/lang/Exception;
    const-string v16, "ConnectivityService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "exception setting dns servers: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1490
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v9       #j:I
    .restart local v11       #len$:I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1495
    :goto_3
    move v10, v9

    .local v10, k:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 1496
    const-string v16, "ConnectivityService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "erasing net.dns"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "net.dns"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1491
    .end local v10           #k:I
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 1492
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v16, "ConnectivityService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "exception setting default dns interface: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1499
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v10       #k:I
    :cond_1
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 1509
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #dnsList:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v11           #len$:I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1510
    return-void

    .line 1502
    .restart local v5       #dnsList:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v16, v0

    aget-object v14, v16, p1

    .line 1503
    .local v14, pids:Ljava/util/List;
    const/4 v15, 0x0

    .local v15, y:I
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 1504
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1505
    .local v13, pid:Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1503
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .end local v13           #pid:Ljava/lang/Integer;
    .end local v14           #pids:Ljava/util/List;
    .end local v15           #y:I
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #dns:Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v9       #j:I
    .restart local v11       #len$:I
    :cond_4
    move v8, v9

    .end local v9           #j:I
    .restart local v8       #j:I
    goto/16 :goto_2
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    const-string v3, "ConnectivityService"

    .line 1806
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inet connectivity change, net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mActiveDefaultNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1811
    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :goto_0
    return-void

    .line 1814
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_1

    .line 1815
    const-string v1, "ConnectivityService"

    const-string v1, "given net not default - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1818
    :cond_1
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 1820
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_3

    .line 1821
    const-string v1, "ConnectivityService"

    const-string v1, "starting a change hold"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 1824
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1830
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1831
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1827
    .end local v0           #delay:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .line 1836
    .end local v0           #delay:I
    :cond_3
    const-string v1, "ConnectivityService"

    const-string v1, "currently in hold - not setting new end evt"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 4
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const-string v3, "ConnectivityService"

    .line 1842
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inet hold end, net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1848
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1849
    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :goto_0
    return-void

    .line 1852
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 1853
    const-string v1, "ConnectivityService"

    const-string v1, "event hold for obsolete network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1856
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    if-ne v1, v2, :cond_2

    .line 1857
    const-string v1, "ConnectivityService"

    const-string v1, "no change in condition - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1860
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1861
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1862
    const-string v1, "ConnectivityService"

    const-string v1, "default network not connected - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1865
    :cond_3
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1866
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleNotificationChange(ZILandroid/app/Notification;)V
    .locals 3
    .parameter "visible"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1351
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 1352
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private handleScanResultsAvailable(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1337
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1338
    .local v0, networkType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1339
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ScanResultsAvailable for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network. Don\'t know how to handle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->interpretScanResultsAvailable()V

    .line 1344
    return-void
.end method

.method private handleSetBackgroundData(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getBackgroundDataSetting()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 976
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    .line 970
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleSetMobileData(Z)V
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const-string v11, "starting up "

    const-string v10, "ConnectivityService"

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz p1, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1006
    if-eqz p1, :cond_4

    .line 1007
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v9

    if-eqz v5, :cond_2

    .line 1009
    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting up "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1013
    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 1015
    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting up "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    :cond_3
    move v7, v9

    .line 1003
    goto :goto_1

    .line 1020
    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v4, v0, v1

    .line 1021
    .local v4, nt:Landroid/net/NetworkStateTracker;
    if-nez v4, :cond_6

    .line 1020
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1022
    :cond_6
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1023
    .local v3, netType:I
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v5, :cond_5

    .line 1024
    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tearing down "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto :goto_3

    .line 1028
    .end local v3           #netType:I
    .end local v4           #nt:Landroid/net/NetworkStateTracker;
    :cond_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 1029
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_0
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 538
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 546
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 550
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 546
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .locals 23

    .prologue
    .line 432
    const/16 v16, 0x0

    .line 433
    .local v16, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v13, 0x0

    .line 441
    .local v13, wimaxServiceClass:Ljava/lang/Class;
    const/4 v15, 0x0

    .line 443
    .local v15, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10d001f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 446
    .local v6, isWimaxEnabled:Z
    if-eqz v6, :cond_0

    .line 448
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 454
    .local v12, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 456
    .local v14, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040020

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 459
    .local v17, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v8, Ldalvik/system/DexClassLoader;

    new-instance v20, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v20

    move-object v3, v10

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    .local v8, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v8, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 465
    .local v11, wimaxManagerClass:Ljava/lang/Class;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 466
    invoke-virtual {v8, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 477
    :try_start_2
    const-string v20, "ConnectivityService"

    const-string v21, "Starting Wimax Service... "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Landroid/os/Handler;

    aput-object v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 481
    .local v19, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v15, v0

    .line 483
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v16, v20, v21

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 485
    .local v18, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 486
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 487
    .local v7, svcInvoker:Landroid/os/IBinder;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 489
    const-string v20, "WiMax"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v20, v15

    .line 515
    .end local v7           #svcInvoker:Landroid/os/IBinder;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v11           #wimaxManagerClass:Ljava/lang/Class;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    .end local v18           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v19           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v20

    .line 467
    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v17       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 468
    .local v5, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 469
    const/16 v20, 0x0

    goto :goto_0

    .line 471
    .end local v5           #ex:Ljava/lang/ClassNotFoundException;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 472
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax Resources does not exist!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v20, 0x0

    goto :goto_0

    .line 491
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v11       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    :catch_2
    move-exception v20

    move-object/from16 v5, v20

    .line 492
    .local v5, ex:Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 493
    const/16 v20, 0x0

    goto :goto_0

    .line 494
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v20

    move-object/from16 v5, v20

    .line 495
    .local v5, ex:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 496
    const/16 v20, 0x0

    goto :goto_0

    .line 497
    .end local v5           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v20

    move-object/from16 v5, v20

    .line 498
    .local v5, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 499
    const/16 v20, 0x0

    goto :goto_0

    .line 500
    .end local v5           #ex:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v20

    move-object/from16 v5, v20

    .line 501
    .local v5, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 502
    const/16 v20, 0x0

    goto :goto_0

    .line 503
    .end local v5           #ex:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v20

    move-object/from16 v5, v20

    .line 504
    .local v5, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 505
    const/16 v20, 0x0

    goto :goto_0

    .line 506
    .end local v5           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v20

    move-object/from16 v5, v20

    .line 507
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    const/16 v20, 0x0

    goto :goto_0

    .line 511
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v11           #wimaxManagerClass:Ljava/lang/Class;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    :cond_0
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v20, 0x0

    goto :goto_0
.end method

.method private reassessPidDns(IZ)V
    .locals 13
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 1402
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reassessPidDns for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .line 1404
    .local v2, i:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1403
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1407
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v2

    .line 1408
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1410
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v10, v2

    .line 1411
    .local v8, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1412
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1413
    .local v7, pid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 1414
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, dnsList:[Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1416
    if-eqz p2, :cond_2

    .line 1417
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1431
    .end local v1           #dnsList:[Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    .line 1411
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #pid:Ljava/lang/Integer;
    .restart local v8       #pids:Ljava/util/List;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1425
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_4
    const/4 v2, 0x1

    .line 1426
    .restart local v2       #i:I
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net.dns"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1427
    .local v9, prop:Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 1428
    if-eqz p2, :cond_2

    .line 1429
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_2

    .line 1433
    :cond_5
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1177
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1192
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1195
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    :cond_2
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1199
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1200
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1181
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1182
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1259
    monitor-enter p0

    .line 1260
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1263
    :cond_0
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1264
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1265
    monitor-exit p0

    .line 1266
    return-void

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 13
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 836
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 837
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 838
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 839
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 841
    .local v7, uid:I
    const/4 v6, 0x0

    .line 842
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 845
    .local v0, callTeardown:Z
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopUsingNetworkFeature for net "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 850
    const/4 v10, -0x1

    .line 918
    :goto_0
    return v10

    .line 855
    :cond_0
    monitor-enter p0

    .line 857
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 858
    const-string v10, "ConnectivityService"

    const-string v11, "ignoring - this process has no outstanding requests"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 911
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 861
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 862
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 870
    if-nez p2, :cond_3

    .line 871
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 872
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 873
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v10, v11, :cond_2

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v10, v11, :cond_2

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v10, v11, :cond_2

    iget-object v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 876
    const-string v10, "ConnectivityService"

    const-string v11, "ignoring stopUsingNetworkFeature as dup is found"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 871
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 883
    .end local v3           #i:I
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    move v8, v4

    .line 884
    .local v8, usedNetworkType:I
    if-nez v4, :cond_4

    .line 885
    const-string v10, "enableMMS"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 886
    const/4 v8, 0x2

    .line 895
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    .line 896
    if-nez v6, :cond_8

    .line 897
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring - no known tracker for net type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v10, -0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 887
    :cond_5
    const-string v10, "enableSUPL"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 888
    const/4 v8, 0x3

    goto :goto_2

    .line 889
    :cond_6
    const-string v10, "enableDUN"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 890
    const/4 v8, 0x4

    goto :goto_2

    .line 891
    :cond_7
    const-string v10, "enableHIPRI"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 892
    const/4 v8, 0x5

    goto :goto_2

    .line 900
    :cond_8
    if-eq v8, v4, :cond_a

    .line 901
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 902
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 903
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 904
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_9

    .line 905
    const-string v10, "ConnectivityService"

    const-string v11, "not tearing down special network - others still using it"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 909
    :cond_9
    const/4 v0, 0x1

    .line 911
    .end local v1           #currentPid:Ljava/lang/Integer;
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    const-string v10, "ConnectivityService"

    const-string v11, "Doing network teardown"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz v0, :cond_b

    .line 914
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 915
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 918
    :cond_b
    invoke-virtual {v6, v2, v5, v7}, Landroid/net/NetworkStateTracker;->stopUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-virtual {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p1, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    move v0, v1

    .line 596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryFailover(I)V
    .locals 10
    .parameter "prevNetType"

    .prologue
    const/4 v7, 0x1

    const-string v9, "not failing over to mobile type "

    const-string v8, " because Mobile Data Disabled"

    const-string v6, "ConnectivityService"

    .line 1143
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1144
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, p1, :cond_0

    .line 1145
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v7

    .line 1149
    .local v3, noMobileData:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_1
    const/16 v4, 0x9

    if-gt v2, v4, :cond_8

    .line 1150
    if-ne v2, p1, :cond_3

    .line 1149
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1148
    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 1151
    .restart local v2       #checkType:I
    .restart local v3       #noMobileData:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 1152
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1153
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 1155
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not failing over to mobile type "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because Mobile Data Disabled"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1159
    :cond_4
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_5

    .line 1161
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not failing over to mobile type "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because Mobile Data Disabled"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1165
    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 1166
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1167
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1168
    :cond_6
    invoke-virtual {v0, v7}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1169
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1171
    :cond_7
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1174
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_8
    return-void
.end method

.method private writePidDns([Ljava/lang/String;I)V
    .locals 8
    .parameter "dnsList"
    .parameter "pid"

    .prologue
    .line 1438
    const/4 v3, 0x1

    .line 1439
    .local v3, j:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v0, v2

    .line 1440
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, "0.0.0.0"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .line 1444
    .end local v1           #dns:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1       #dns:Ljava/lang/String;
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1527
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 1530
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    :cond_0
    return-void

    .line 1535
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1536
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 1537
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_3

    .line 1538
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1539
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1543
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1544
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1536
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1548
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget v5, v0, v3

    .line 1550
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1551
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1552
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1554
    .end local v7           #pid:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 1556
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1558
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1560
    .local v9, requester:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1562
    .end local v9           #requester:Ljava/lang/Object;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1564
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1566
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1567
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1568
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 1570
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 609
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 612
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 627
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v5, v7, [Landroid/net/NetworkInfo;

    .line 628
    .local v5, result:[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 629
    .local v1, i:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 630
    .local v6, t:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    aput-object v7, v5, v2

    .line 629
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 632
    .end local v6           #t:Landroid/net/NetworkStateTracker;
    :cond_0
    return-object v5

    .restart local v6       #t:Landroid/net/NetworkStateTracker;
    :cond_1
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public getBackgroundDataSetting()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 952
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterfaceName(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1872
    move v1, p1

    .line 1873
    .local v1, usedNetworkType:I
    if-nez p1, :cond_0

    .line 1874
    if-nez p2, :cond_1

    .line 1875
    const/4 v1, 0x0

    .line 1889
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 1891
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .end local v0           #network:Landroid/net/NetworkStateTracker;
    :goto_1
    return-object v2

    .line 1876
    :cond_1
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1877
    const/4 v1, 0x2

    goto :goto_0

    .line 1878
    :cond_2
    const-string v2, "enableSUPL"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1879
    const/4 v1, 0x3

    goto :goto_0

    .line 1880
    :cond_3
    const-string v2, "enableDUN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1881
    const/4 v1, 0x4

    goto :goto_0

    .line 1882
    :cond_4
    const-string v2, "enableHIPRI"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1883
    const/4 v1, 0x5

    goto :goto_0

    .line 1885
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 1731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 982
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 983
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 985
    .local v0, retVal:Z
    :goto_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return v0

    .line 983
    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getNameServers(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1896
    move v1, p1

    .line 1897
    .local v1, usedNetworkType:I
    if-nez p1, :cond_0

    .line 1898
    if-nez p2, :cond_1

    .line 1899
    const/4 v1, 0x0

    .line 1913
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 1915
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #network:Landroid/net/NetworkStateTracker;
    :goto_1
    return-object v2

    .line 1900
    :cond_1
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1901
    const/4 v1, 0x2

    goto :goto_0

    .line 1902
    :cond_2
    const-string v2, "enableSUPL"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1903
    const/4 v1, 0x3

    goto :goto_0

    .line 1904
    :cond_3
    const-string v2, "enableDUN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1905
    const/4 v1, 0x4

    goto :goto_0

    .line 1906
    :cond_4
    const-string v2, "enableHIPRI"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1907
    const/4 v1, 0x5

    goto :goto_0

    .line 1909
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 617
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 619
    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 622
    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 533
    .local v0, preference:I
    monitor-exit p0

    .line 534
    return v0

    .line 533
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1757
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1758
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1737
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1746
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1750
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1762
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1763
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1767
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1768
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1775
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1776
    const-string v2, "ro.tether.denied"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    .line 1777
    .local v0, defaultVal:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .line 1779
    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    return v2

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v5

    .line 1776
    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_1
    move v1, v4

    .line 1777
    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2
    move v2, v4

    .line 1779
    goto :goto_2
.end method

.method public reportInetCondition(II)V
    .locals 7
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    const-string v6, "ConnectivityService"

    .line 1784
    const-string v3, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportNetworkCondition("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 1791
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 1792
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x32

    if-le p2, v4, :cond_0

    const-string v4, "connected"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1795
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 1797
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1792
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v4, "disconnected"

    goto :goto_0

    .line 1800
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1802
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v4, 0x0

    .line 932
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 933
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 945
    :goto_0
    return v1

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 938
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    :cond_1
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRouteToHost on down network ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - dropped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 943
    goto :goto_0

    .line 945
    :cond_2
    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->requestRouteToHost(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 5
    .parameter "allowBackgroundDataUsage"

    .prologue
    const/4 v4, 0x0

    .line 960
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 966
    return-void

    :cond_0
    move v3, v4

    .line 964
    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 993
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 994
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 998
    return-void

    :cond_0
    move v3, v4

    .line 996
    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 525
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x0

    .line 645
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 646
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 650
    :goto_0
    return v1

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 650
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    .line 636
    const/4 v3, 0x1

    .line 637
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 638
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 639
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 638
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    .line 641
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 12
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    const/16 v9, 0x65

    const/4 v8, 0x2

    const/4 v11, 0x1

    const-string v10, "ConnectivityService"

    .line 712
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startUsingNetworkFeature for net "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 716
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, p1

    if-nez v6, :cond_1

    .line 718
    :cond_0
    const/4 v6, 0x3

    .line 801
    :goto_0
    return v6

    .line 721
    :cond_1
    new-instance v1, Lcom/android/server/ConnectivityService$FeatureUser;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 724
    .local v1, f:Lcom/android/server/ConnectivityService$FeatureUser;
    move v5, p1

    .line 725
    .local v5, usedNetworkType:I
    if-nez p1, :cond_3

    .line 726
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 727
    const-string v6, "ConnectivityService"

    const-string v6, "requested special network with data disabled - rejected"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 728
    goto :goto_0

    .line 730
    :cond_2
    const-string v6, "enableMMS"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 731
    const/4 v5, 0x2

    .line 740
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v6, v5

    .line 741
    .local v2, network:Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_d

    .line 742
    if-eq v5, p1, :cond_c

    .line 743
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 745
    .local v0, currentPid:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v6, p1

    .line 746
    .local v4, radio:Landroid/net/NetworkStateTracker;
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 748
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_7

    .line 749
    const-string v6, "ConnectivityService"

    const-string v6, "special network not available"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 750
    goto :goto_0

    .line 732
    .end local v0           #currentPid:Ljava/lang/Integer;
    .end local v2           #network:Landroid/net/NetworkStateTracker;
    .end local v3           #ni:Landroid/net/NetworkInfo;
    .end local v4           #radio:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v6, "enableSUPL"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 733
    const/4 v5, 0x3

    goto :goto_1

    .line 734
    :cond_5
    const-string v6, "enableDUN"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 735
    const/4 v5, 0x4

    goto :goto_1

    .line 736
    :cond_6
    const-string v6, "enableHIPRI"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 737
    const/4 v5, 0x5

    goto :goto_1

    .line 753
    .restart local v0       #currentPid:Ljava/lang/Integer;
    .restart local v2       #network:Landroid/net/NetworkStateTracker;
    .restart local v3       #ni:Landroid/net/NetworkInfo;
    .restart local v4       #radio:Landroid/net/NetworkStateTracker;
    :cond_7
    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v6, v6, v5

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 757
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v6, v6, v5

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    const/4 v6, 0x4

    if-eq v5, v6, :cond_9

    .line 763
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    :cond_9
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-ne v6, v11, :cond_b

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v6

    if-nez v6, :cond_b

    .line 774
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-ne v6, v11, :cond_a

    .line 776
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 777
    const-string v6, "ConnectivityService"

    const-string v6, "special network already active"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 759
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 780
    :cond_a
    const-string v6, "ConnectivityService"

    const-string v6, "special network already connecting"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v11

    .line 781
    goto/16 :goto_0

    .line 787
    :cond_b
    const-string v6, "ConnectivityService"

    const-string v6, "reconnecting to special network"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move v6, v11

    .line 789
    goto/16 :goto_0

    .line 791
    .end local v0           #currentPid:Ljava/lang/Integer;
    .end local v3           #ni:Landroid/net/NetworkInfo;
    .end local v4           #radio:Landroid/net/NetworkStateTracker;
    :cond_c
    monitor-enter p0

    .line 792
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 794
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 797
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v6

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v7

    invoke-virtual {v2, p2, v6, v7}, Landroid/net/NetworkStateTracker;->startUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v6

    goto/16 :goto_0

    .line 793
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_d
    move v6, v8

    .line 801
    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 9
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v8, 0x1

    .line 806
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 808
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    .line 809
    .local v3, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v5

    .line 811
    .local v5, uid:I
    const/4 v4, 0x0

    .line 812
    .local v4, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v1, 0x0

    .line 814
    .local v1, found:Z
    monitor-enter p0

    .line 815
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 816
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object v4, v0

    .line 817
    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v5, v6, :cond_1

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v3, v6, :cond_1

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne p1, v6, :cond_1

    iget-object v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 820
    const/4 v1, 0x1

    .line 824
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 827
    invoke-direct {p0, v4, v8}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 831
    :goto_1
    return v6

    .line 815
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 830
    :cond_2
    const-string v6, "ConnectivityService"

    const-string v7, "ignoring stopUsingNetworkFeature - not a live request"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 831
    goto :goto_1
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 1271
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1272
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 1274
    monitor-enter p0

    .line 1275
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1276
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1280
    :cond_0
    monitor-exit p0

    .line 1281
    return-void

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 1709
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 1720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
