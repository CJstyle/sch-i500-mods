.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 917
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZZ)V

    .line 920
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 929
    :goto_0
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 931
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const-string v0, "Mms/ConversationList"

    const-string v1, "GCF Mode On"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sput v5, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 936
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 941
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 922
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x70a

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJZ)V

    .line 924
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_0
.end method
