.class Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;
.super Ljava/lang/Thread;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Ljava/util/ArrayList;J)V
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
    .line 5841
    .local p3, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5838
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mCancelled:Z

    .line 5842
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mTargetDir:Ljava/lang/String;

    .line 5843
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    .line 5844
    iput-wide p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mMsgId:J

    .line 5845
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5846
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "Mms/compose"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5849
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 5936
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5937
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5940
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 5853
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5854
    const/4 v4, 0x0

    .line 5857
    .local v4, outputStream:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 5858
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 5924
    if-eqz v4, :cond_0

    .line 5925
    :try_start_1
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5930
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5932
    :goto_2
    return-void

    .line 5861
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 5897
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

    .line 5901
    iget-wide v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mMsgId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 5904
    const/4 v2, 0x0

    .line 5906
    .local v2, errorReason:Ljava/lang/String;
    :try_start_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mMsgId:J

    invoke-static {v6, v7, v8, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8800(Lcom/android/mms/ui/ComposeMessageActivity;JLcom/android/mms/model/AttachmentModel;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f090119

    move v5, v6

    .line 5907
    .local v5, resId:I
    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 5916
    .end local v5           #resId:I
    :cond_2
    :goto_4
    :try_start_4
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/ComposeMessageActivity$ErrorReasonDisplayer;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v7, v8, v2}, Lcom/android/mms/ui/ComposeMessageActivity$ErrorReasonDisplayer;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5857
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5906
    .restart local v2       #errorReason:Ljava/lang/String;
    :cond_4
    const v6, 0x7f09011a

    move v5, v6

    goto :goto_3

    .line 5909
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 5910
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 5911
    const-string v6, "No space left on device"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5912
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v7, 0x7f0901c2

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto :goto_4

    .line 5924
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 5925
    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5930
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 5923
    :catchall_0
    move-exception v6

    .line 5924
    if-eqz v4, :cond_7

    .line 5925
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 5930
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 5927
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
