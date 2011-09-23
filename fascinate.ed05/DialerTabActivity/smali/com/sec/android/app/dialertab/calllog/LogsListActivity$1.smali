.class Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LogsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.ContactPhotoUpdated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->clearCache()V

    .line 168
    :cond_0
    return-void
.end method
