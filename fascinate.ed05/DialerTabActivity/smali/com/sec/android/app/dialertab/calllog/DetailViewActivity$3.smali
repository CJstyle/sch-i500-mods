.class Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;
.super Ljava/lang/Object;
.source "DetailViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 434
    packed-switch p2, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
