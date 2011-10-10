.class public Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;
.super Ljava/lang/Object;
.source "DeleteThreadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteThreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteThreadActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeleteThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 352
    const-string v0, "Mms/DeleteThread"

    const-string v1, "1. Delete message : delete? popup is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;

    const/16 v1, 0x70a

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v3}, Lcom/android/mms/ui/DeleteThreadActivity;->access$200(Lcom/android/mms/ui/DeleteThreadActivity;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-boolean v4, v4, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteLockedMessages:Z

    if-eqz v4, :cond_3

    const-string v4, "deletable=1"

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteLockedMessages:Z

    if-eqz v0, :cond_0

    .line 364
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v8, data:Landroid/content/Intent;
    const-string v0, "empty_thread"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v8}, Lcom/android/mms/ui/DeleteThreadActivity;->setResult(ILandroid/content/Intent;)V

    .line 376
    .end local v8           #data:Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 389
    :cond_1
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    const-string v0, "Mms/DeleteThread"

    const-string v1, "GCF Mode On -  DB Count Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 396
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v10, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/DeleteThreadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    .end local v10           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    .line 401
    return-void

    .line 359
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_3
    const-string v4, "locked=0 AND deletable=1"

    goto :goto_0

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v7

    .line 380
    .local v7, count:I
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    if-gt v9, v7, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v9}, Lcom/android/mms/ui/MessageListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeleteThreadActivity;->access$300(Lcom/android/mms/ui/DeleteThreadActivity;J)V

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 380
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 1
    .parameter "deleteLockedMessages"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iput-boolean p1, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mDeleteLockedMessages:Z

    .line 349
    return-void
.end method
