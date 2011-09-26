.class public Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationListDel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private final mThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDel;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListDel;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-wide p2, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->mThreadId:J

    .line 535
    iput-object p4, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 536
    iput-object p5, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 537
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const-string v11, "Mms/ConversationListDel"

    .line 544
    const-string v0, "Mms/ConversationListDel"

    const-string v0, "1. Delete threads : delete? popup is clicked"

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v0, "Mms/ConversationListDel"

    const-string v0, "2. Delete threads : delete query is started"

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    .line 552
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->changeConversationListItemDataStyle(Ljava/lang/Boolean;)V

    .line 553
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x709

    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->access$300()Z

    move-result v2

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZZ)V

    .line 557
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 569
    :cond_0
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const-string v0, "Mms/ConversationListDel"

    const-string v0, "GCF Mode On -  DB Count Reset"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sput v10, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 576
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/ConversationListDel;->sendBroadcast(Landroid/content/Intent;)V

    .line 582
    .end local v9           #intent:Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/android/mms/data/Contact;->clearContactsCache()V

    .line 583
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListDel;->finish()V

    .line 586
    return-void

    .line 560
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDel;->access$400(Lcom/android/mms/ui/ConversationListDel;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 561
    .local v7, currentThreadID:Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x70a

    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->access$300()Z

    move-result v2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJZ)V

    .line 563
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 540
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListDel;->access$302(Z)Z

    .line 541
    return-void
.end method
