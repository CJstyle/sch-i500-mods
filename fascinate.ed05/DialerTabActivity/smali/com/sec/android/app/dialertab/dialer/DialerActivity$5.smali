.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$5;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subDialogBuilder(I)V
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
    .line 2580
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$5;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "i"

    .prologue
    const/4 v0, 0x1

    .line 2581
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1602(Z)Z

    .line 2582
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1702(Z)Z

    .line 2583
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1302(I)I

    .line 2584
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2585
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    .line 2586
    return-void
.end method
