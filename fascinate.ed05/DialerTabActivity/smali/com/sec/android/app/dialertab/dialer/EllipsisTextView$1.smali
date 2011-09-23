.class Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;
.super Ljava/lang/Object;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;->this$0:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ellipsized(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;->this$0:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    if-ne p1, p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->access$002(Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;Z)Z

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
