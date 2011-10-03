.class public Lcom/sec/android/app/controlpanel/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/StorageInfo;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mAvailDBData:J

.field mAvailData:J

.field mAvailExternalSDCard:J

.field mAvailInternalSDCard:J

.field private mContext:Landroid/content/Context;

.field mInternalSdCardStatus:Ljava/lang/String;

.field mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field

.field mReadOnly:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mTotalDBData:J

.field mTotalData:J

.field mTotalExternalSDCard:J

.field mTotalInternalSDCard:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "StorageInfo"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    .line 52
    new-instance v0, Lcom/sec/android/app/controlpanel/StorageInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/StorageInfo$1;-><init>(Lcom/sec/android/app/controlpanel/StorageInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/StorageInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/StorageInfo;->updateMemoryStatus()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    sget-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/sec/android/app/controlpanel/StorageInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/StorageInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    .line 25
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/StorageInfo;->instance:Lcom/sec/android/app/controlpanel/StorageInfo;

    return-object v0
.end method

.method private updateMemoryStatus()V
    .locals 26

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 128
    .local v19, statusInternal:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, statusExternal:Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 132
    const-string v24, "mounted_ro"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 133
    const-string v24, "mounted"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mInternalSdCardStatus:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f060040

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mReadOnly:Ljava/lang/String;

    .line 144
    :cond_0
    const-string v24, "mounted"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 146
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 147
    .local v14, path:Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 148
    .local v16, stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v7, v0

    .line 149
    .local v7, blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 150
    .local v20, totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v3, v0

    .line 152
    .local v3, availableBlocks:J
    mul-long v24, v20, v7

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    .line 153
    mul-long v24, v3, v7

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailInternalSDCard:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v3           #availableBlocks:J
    .end local v7           #blockSize:J
    .end local v14           #path:Ljava/io/File;
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v20           #totalBlocks:J
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    .line 193
    .restart local v14       #path:Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v16       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v7, v0

    .line 195
    .restart local v7       #blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 196
    .restart local v20       #totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v3, v0

    .line 198
    .restart local v3       #availableBlocks:J
    mul-long v24, v20, v7

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalData:J

    .line 199
    mul-long v24, v3, v7

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailData:J

    .line 202
    new-instance v15, Ljava/io/File;

    const-string v24, "/dbdata"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v15, pathDBData:Ljava/io/File;
    new-instance v17, Landroid/os/StatFs;

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 204
    .local v17, statDBData:Landroid/os/StatFs;
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v9, v0

    .line 205
    .local v9, blockSizeDBData:J
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 206
    .local v22, totalBlocksDBData:J
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v5, v0

    .line 209
    .local v5, availableBlocksDBData:J
    mul-long v24, v22, v9

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalDBData:J

    .line 210
    mul-long v24, v5, v9

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailDBData:J

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/controlpanel/Observer;

    .line 214
    .local v13, o:Lcom/sec/android/app/controlpanel/Observer;
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_1

    .line 155
    .end local v3           #availableBlocks:J
    .end local v5           #availableBlocksDBData:J
    .end local v7           #blockSize:J
    .end local v9           #blockSizeDBData:J
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #o:Lcom/sec/android/app/controlpanel/Observer;
    .end local v14           #path:Ljava/io/File;
    .end local v15           #pathDBData:Ljava/io/File;
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v17           #statDBData:Landroid/os/StatFs;
    .end local v20           #totalBlocks:J
    .end local v22           #totalBlocksDBData:J
    :catch_0
    move-exception v24

    move-object/from16 v11, v24

    .line 159
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v24, "removed"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mInternalSdCardStatus:Ljava/lang/String;

    goto/16 :goto_0

    .line 162
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v24, "unmounted"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/StorageInfo;->mInternalSdCardStatus:Ljava/lang/String;

    .line 163
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    .line 164
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailInternalSDCard:J

    goto/16 :goto_0

    .line 216
    .restart local v3       #availableBlocks:J
    .restart local v5       #availableBlocksDBData:J
    .restart local v7       #blockSize:J
    .restart local v9       #blockSizeDBData:J
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #path:Ljava/io/File;
    .restart local v15       #pathDBData:Ljava/io/File;
    .restart local v16       #stat:Landroid/os/StatFs;
    .restart local v17       #statDBData:Landroid/os/StatFs;
    .restart local v20       #totalBlocks:J
    .restart local v22       #totalBlocksDBData:J
    :cond_2
    return-void
.end method


# virtual methods
.method public getAvailableSizeOfData()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailData:J

    return-wide v0
.end method

.method public getTotalSizeOfDBData()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalDBData:J

    return-wide v0
.end method

.method public getTotalSizeOfData()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalData:J

    return-wide v0
.end method

.method public getTotalSizeOfExternalSdCard()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalExternalSDCard:J

    return-wide v0
.end method

.method public getTotalSizeOfInternalSdCard()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    return-wide v0
.end method

.method public getUsedSizeOfDBData()J
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalDBData:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailDBData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedSizeOfData()J
    .locals 4

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalData:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailData:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedSizeOfExternalSdCard()J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalExternalSDCard:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailExternalSDCard:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedSizeOfInternalSdCard()J
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mTotalInternalSDCard:J

    iget-wide v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mAvailInternalSDCard:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/StorageInfo;->updateMemoryStatus()V

    .line 225
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 33
    const-string v1, "StorageInfo"

    const-string v2, "registerReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "StorageInfo"

    const-string v1, "unregisterReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/StorageInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    return-void
.end method
