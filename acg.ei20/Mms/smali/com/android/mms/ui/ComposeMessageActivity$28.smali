.class Lcom/android/mms/ui/ComposeMessageActivity$28;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4470
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;ZZ)V
    .locals 11
    .parameter "part"
    .parameter "append"
    .parameter "sendMultiple"

    .prologue
    .line 4474
    if-nez p1, :cond_1

    .line 4475
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, -0x1

    const v2, 0x7f090108

    const/4 v3, 0x0

    const/16 v4, 0xa

    move v5, p3

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/net/Uri;IZZ)V

    .line 4511
    :cond_0
    :goto_0
    return-void

    .line 4479
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 4480
    .local v7, context:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    .line 4482
    .local v10, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v3, 0x0

    .line 4485
    .local v3, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4486
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4489
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 4494
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v9

    .line 4495
    .local v9, messageUri:Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v10, p1, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v3

    .line 4497
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4498
    .local v1, result:I
    const-string v0, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7100(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4505
    .end local v9           #messageUri:Landroid/net/Uri;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f090108

    const/16 v4, 0xa

    move v5, p3

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/net/Uri;IZZ)V

    .line 4506
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 4507
    .end local v1           #result:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 4509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_0

    .line 4501
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 4502
    .local v8, e:Lcom/google/android/mms/MmsException;
    const/4 v1, -0x1

    .restart local v1       #result:I
    goto :goto_1
.end method
