.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->openSaveToDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1283
    packed-switch p2, :pswitch_data_0

    .line 1292
    :goto_0
    return-void

    .line 1285
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$700(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$700(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
