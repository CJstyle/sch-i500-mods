.class Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;
.super Ljava/lang/Object;
.source "LogsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->openSaveToDialog()V
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
    .line 825
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 828
    packed-switch p2, :pswitch_data_0

    .line 837
    :goto_0
    return-void

    .line 830
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
