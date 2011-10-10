.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteLocked:Z

.field private final mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "msgId"
    .parameter "type"
    .parameter "deleteLocked"

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    const-string v0, "mms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 883
    :goto_0
    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteLocked:Z

    .line 884
    return-void

    .line 881
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 874
    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteLocked:Z

    .line 875
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    const/16 v1, 0x25e4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteLocked:Z

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_0
    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 894
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 896
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const-string v0, "Mms/compose"

    const-string v1, "GCF Mode On -  DB Count Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sput v8, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 901
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 887
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0
.end method
