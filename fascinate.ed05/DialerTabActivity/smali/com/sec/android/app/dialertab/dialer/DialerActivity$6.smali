.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "menu"

    .prologue
    const-string v4, "phone"

    .line 2623
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2624
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2626
    packed-switch p2, :pswitch_data_0

    .line 2645
    :goto_0
    return-void

    .line 2630
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2631
    .local v0, insertIntent:Landroid/content/Intent;
    const-string v2, "phone"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2632
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2638
    .end local v0           #insertIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.PICK_EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2639
    .restart local v0       #insertIntent:Landroid/content/Intent;
    const-string v2, "phone"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2640
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2641
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
