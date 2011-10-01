.class Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;
.super Ljava/lang/Thread;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawAttachmentsExportThread"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mMsgId:J

.field mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field mTargetDir:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;Ljava/util/ArrayList;J)V
    .locals 3
    .parameter
    .parameter "targetDir"
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p3, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mCancelled:Z

    .line 1265
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mTargetDir:Ljava/lang/String;

    .line 1266
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    .line 1267
    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mMsgId:J

    .line 1269
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1270
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "Mms/viewer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1273
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1363
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1366
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 1277
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1278
    const/4 v4, 0x0

    .line 1281
    .local v4, outputStream:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1282
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 1350
    if-eqz v4, :cond_0

    .line 1351
    :try_start_1
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1356
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1358
    :goto_2
    return-void

    .line 1285
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1326
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    const-string v6, "text/plain"

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "application/smil"

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1329
    iget-wide v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mMsgId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 1332
    const/4 v2, 0x0

    .line 1334
    .local v2, errorReason:Ljava/lang/String;
    :try_start_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-wide v7, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mMsgId:J

    invoke-static {v6, v7, v8, v0}, Lcom/android/mms/ui/MessageOptions;->access$300(Lcom/android/mms/ui/MessageOptions;JLcom/android/mms/model/AttachmentModel;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f090119

    move v5, v6

    .line 1335
    .local v5, resId:I
    :goto_3
    sget-object v6, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 1342
    .end local v5           #resId:I
    :cond_2
    :goto_4
    :try_start_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v6}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;

    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {v7, v8, v2}, Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1281
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1334
    .restart local v2       #errorReason:Ljava/lang/String;
    :cond_4
    const v6, 0x7f09011a

    move v5, v6

    goto :goto_3

    .line 1337
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1338
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1339
    const-string v6, "No space left on device"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1340
    sget-object v6, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v7, 0x7f0901c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto :goto_4

    .line 1350
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 1351
    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1356
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1349
    :catchall_0
    move-exception v6

    .line 1350
    if-eqz v4, :cond_7

    .line 1351
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1356
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 1353
    :catch_1
    move-exception v6

    goto/16 :goto_1

    :catch_2
    move-exception v6

    goto :goto_5

    :catch_3
    move-exception v7

    goto :goto_6
.end method
