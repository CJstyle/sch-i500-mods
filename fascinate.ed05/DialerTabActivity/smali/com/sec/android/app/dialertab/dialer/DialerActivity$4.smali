.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dailogBuildcreate()V
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
    .line 2539
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 2540
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1302(I)I

    .line 2542
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v0, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1500(Lcom/sec/android/app/dialertab/dialer/DialerActivity;I)V

    .line 2550
    .end local p0
    :goto_0
    return-void

    .line 2545
    .restart local p0
    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1602(Z)Z

    .line 2546
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1702(Z)Z

    .line 2547
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2548
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method
