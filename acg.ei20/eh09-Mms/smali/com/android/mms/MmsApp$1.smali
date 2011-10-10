.class Lcom/android/mms/MmsApp$1;
.super Landroid/content/BroadcastReceiver;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 112
    .local v1, mLocaleMod:Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    iget-object v2, v2, Lcom/android/mms/MmsApp;->mLocaleBasic:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    iput-object v1, v2, Lcom/android/mms/MmsApp;->mLocaleBasic:Ljava/util/Locale;

    .line 114
    iget-object v2, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 119
    .end local v1           #mLocaleMod:Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method
